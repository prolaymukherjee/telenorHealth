<?php

namespace App\library {
 	use Auth;
 	use DB;
 	use URL;
 	use Image;
 	use App\Models\Suppliers;
	use App\Models\MedicineInfo;
	use App\Models\Manufacturer;
	use App\Models\MedicineWiseVariant;
	use App\Models\PurchaseMedicine;
	use App\Models\PurchaseMedicineDtls;
	use App\Models\PurchaseMedicineVariant;
	use App\Models\MedicineExpirationBarcode;
 	

	class pmscommon {
    	/*
		/ @home slider
    	*/
		public function barcode_print($purchaseId){
	        $getBarcode = MedicineExpirationBarcode::where('purchase_id',$purchaseId)->get();
	        $barcodeJsn = json_decode(json_encode($getBarcode),True);
	        if(isset($barcodeJsn) && !empty($barcodeJsn)){
	        	$barcodePrint = $barcodeJsn;
	        }else{
	        	$barcodePrint = "";
	        }
	        return $barcodePrint;

    	}

    	public static function getNumberFormat($number){
			if(session('configData')['digit_separator']=='comma'){
				$digitValue = number_format($number,2,".",",");
			}else if(session('configData')['digit_separator']=='dot'){
				$digitValue = number_format($number,2,",",".");
			}

			if(session('configData')['currency_space']==1){
				$space = " ";
			}else{
				$space = "";
			}
			
			if(session('configData')['currency_position']==0){
				$digitValue = session('configData')['currency'].$space.$digitValue;
			}else{
				$digitValue = $digitValue.$space.session('configData')['currency'];
			}

			return $digitValue;
		}
	}
}
?>