@extends('webmodule.layouts.web-layouts')
@section('content')
<div role="main" class="main">
    <section class="page-header page-header-modern bg-color-dark page-header-md">
        <div class="container">
            <div class="row">
                <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                    <h1 class=" common-fornt">Booking Here<strong></strong></h1>
                </div>
                <div class="col-md-4 order-1 order-md-2 align-self-center">
                    <ul class="breadcrumb d-block text-md-right breadcrumb-light">
                       <li><a href="{{url('/')}}">Home</a></li>
                       <li class="active">Booking</li>
                    </ul>
                 </div>
            </div>
         </div>
    </section>
	<div class="container py-4">
	    <div class="row mb-5">
	    	<div class="col-lg-12 card_view">

	    		<div class="modal-header"> 
                   <h4 class="modal-title common_header" style="margin-left: 435px;">BOOKING HERE</h4>
                </div>
			<form action="{{ route('booking-page.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
		       <div class="row table cart_info">
             <input type="hidden" name="item_name" value="{{ $serviceName }}">
		       	  <div class="col-md-6"> 
                     <div class="form-group"> 
                        <label for="field-5" class="control-label lebal_name">Name:</label> 
                          <input type="text" class="form-control" id="field-5" name="name"  placeholder="Enter your name" required> 
                      </div> 
                    </div>

                    <div class="col-md-6"> 
                      <div class="form-group"> 
                          <label for="field-5" class="control-label lebal_name">Email:</label> 
                          <input type="email" class="form-control" id="field-5" name="email"  placeholder="Enter your Email" required> 
                       </div> 
                    </div>

                     <div class="col-md-6"> 
                     	 <div class="form-group"> 
                         <label for="field-5" class="control-label lebal_name">Phone:</label> 
                          <input type="text" class="form-control" id="field-5" name="phone"  placeholder="Enter your Phone" required> 
                      	</div> 
                    </div>

                    <div class="col-md-6"> 
                      	<div class="form-group"> 
                        	<label for="field-5" class="control-label lebal_name">Description:</label> 
                         	<textarea type="text" class="form-control" id="field-5" name="description" required> </textarea>
                      	</div> 
                    </div>

                    <div class="modal-footer col-md-12"> 
                    	<button type="submit" class="btn btn-danger btn-lg waves-effect waves-light" 
                    	style="width:250px;margin-right:430px;">Booking</button>
                    </div>
	           </div>
	       </form>
	        </div>
	    </div>
   </div>
@endsection