<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Doctor;
use App\Models\Employee;
use App\Models\Franchise;
use Session;
use Carbon\Carbon;
use DB;
use Auth;

class dashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $data['total_staff'] = Employee::count();
        $data['total_doctor'] = Doctor::count();
        $data['total_franchise'] = Franchise::count();
        $data['user_franchise'] = Franchise::where('agent_id',Auth::User()->id)->count();
        return view('dashboard', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function allTable(){
        $tables = DB::select('SHOW TABLES');
        foreach ($tables as $k => $table) {
            foreach ($table as $key => $value)
                    $allData[$k]['table']=$value;

                    $allData[$k]['row']=DB::table("$value")->count();
                    
        }  
        return view('truncate',compact('allData'));
    }

    public function truncateTable($table){

        try {
            DB::statement('DELETE FROM ' . $table); 
            DB::statement('ALTER TABLE ' . $table . ' AUTO_INCREMENT = 1'); 
            $bug = 0;
        } catch (\Exception $e) {
            $bug = $e->getMessage();
        }
        
        if($bug == 0){
            Session::flash('flash_message','Table Truncate Successfully');
            return redirect()->back()->with('status_color','danger');
        }else{
            Session::flash('flash_message',$bug);
            return redirect()->back()->with('status_color','danger');
        }
    }
}
