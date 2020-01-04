@extends('layouts.layout')
@section('title', 'Settings')
@section('content')

<?php  
  use App\Library\pmscommon;
  $add_edit = pmscommon::userWiseAccessSelection('add_edit');
?>

<!-- Content Header (Page header) -->
<section class="content-header">
  <h1><i class="fa fa-gear"></i> Settings</h1>
  <ol class="breadcrumb">
    <li><a href="{{URL::to('dashboard')}}"><i class="fa fa-dashboard"></i> Home</a></li>
    <li>Settings</li>
  </ol>
</section>
<style type="text/css">
	.themebox{
		margin-right: 5px;
	}
</style>
<section class="content">
  <!-- Default box -->
  @include('common.message')
  <div class="box box-success">
 	
  	@if($add_edit==true)
    <div class="box-header with-border" align="right">
		@if( !empty($configuration) )
			{{Form::open(array('route'=>['settings.update',$configuration->id],'method'=>'PUT','files'=>true))}}
			<button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <b>Update Information</b></button>
		@endif &nbsp;&nbsp; 
	</div>
	@endif

   <div class="box-body">

   	<div class="col-md-12">
		<div class="tab-content" id="myTabContent">

			<div class="tab-pane active" id="general" role="tabpanel" aria-labelledby="general-tab" style="padding-top: 30px;">
				<div class="form-group row">
					<label for="button_hover_color" class="control-label col-md-3">Medicine Expiry Day Warning: </label>
					<div class="col-md-8">
			          	<input type="text" name="expire_day_limit" class="form-control" value="{{isset($configuration)?$configuration->expire_day_limit:old('expire_day_limit')}}">
					</div>
				 </div>
			  	<div class="form-group row">
					<label for="currency" class="control-label col-md-3">Select Currency: </label>
					<div class="col-md-8">	
					<select name="currency_id" class="form-control" id="currency">
			          	<option>Select Currency</option>
			          	@if( !empty($configuration) )
			          		@foreach($allCurrency as $currency)
			          			<option value="{{$currency->id}}" {{($configuration->currency_id==$currency->id) ? 'selected' : '' }}>{{$currency->name}}</option>
			          		@endforeach
			          	@endif
			         </select>
					</div>
				 </div>
				<div class="form-group row">
					<label for="currency_space" class="control-label col-md-3">Space before/After Currency: </label>
					<div class="col-md-8">
			          	{{Form::select('currency_space', ['0' => 'No', '1' => 'Yes'], $configuration->currency_space, ['class' => 'form-control'])}}
					</div>
				 </div>

				 <div class="form-group row">
					<label for="currency_position" class="control-label col-md-3">Currency Position: </label>
					<div class="col-md-8">
			          	{{Form::select('currency_position', ['0' => 'Before Number', '1' => 'After Number'], $configuration->currency_position, ['class' => 'form-control'])}}
					</div>
				 </div>

				 <div class="form-group row">
					<label for="digit_separator" class="control-label col-md-3">Digit Separator: </label>
					<div class="col-md-8">
			          	{{Form::select('digit_separator', ['dot' => 'Dot ( . )', 'comma' => 'Comma ( , )'], $configuration->digit_separator, ['class' => 'form-control'])}}
					</div>
				 </div> 
				 
				 <div class="form-group row">
					<label for="currency_space" class="control-label col-md-3">Currency Space: </label>
					<div class="col-md-8">
			          	@if( !empty($configuration) )
			          		{{Form::select('currency_space', array('1' => 'Yes', '0' => 'No'),$configuration->currency_space, ['class' => 'form-control'])}}
			          	@endif
					</div>
				 </div>
				 <div class="form-group row">
					<label for="is_scanned" class="control-label col-md-3">Is Barcode Scan?: </label>
					<div class="col-md-8">
			          	@if( !empty($configuration) )
			          		{{Form::select('is_scanned', array('1' => 'Scanned', '2' => 'Not Scanned'),$configuration->is_scanned, ['class' => 'form-control'])}}
			          	@endif
					</div>
				 </div>
				 <div class="form-group row">
					<label for="button_hover_color" class="control-label col-md-3">Report Delivery Expiry Time Limit: </label>
					<div class="col-md-8">
			          	<input type="text" name="report_delivery_time_limit" class="form-control" value="{{isset($configuration)?$configuration->report_delivery_time_limit:old('report_delivery_time_limit')}}">
					</div>
				 </div>
			</div>
		  
		  	
		  	
  		</div>
  	</div>

	</div>
  	{!! Form::close() !!} 
   </div>
</section>
<script type="text/javascript">
	function getState(id){
		$('#stateId').load('{{ URL::to('default-state')}}/'+id);
	}
	$("#storeTag").tagsinput('items');
</script>
@endsection
