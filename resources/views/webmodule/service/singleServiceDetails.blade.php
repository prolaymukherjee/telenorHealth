@extends('webmodule.layouts.web-layouts')
@section('content')

<style type="text/css">
  .singleViewDetails{
    font-size: 18px;
    font-weight: 400;
   font-family:'Arimo', sans-serif;
  }
</style>
    <div role="main" class="main">
          <section class="page-header page-header-modern bg-color-dark page-header-md">
                  <div class="container">
                       <div class="row">
                            <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                                <h1 class="">Service Details<strong></strong></h1>
                            </div>
                            <div class="col-md-4 order-1 order-md-2 align-self-center">
                                <ul class="breadcrumb d-block text-md-right breadcrumb-light">
                                    <li><a href="{{url('/')}}">Home</a></li>
                                    <li class="active">Service Details</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="container">
                  <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 home-collection">
                      
                         <div class="text-center" style="margin-top: 10px; margin-bottom: 10px;"><img 
                          src="{{ asset("$serviceDetail->photo") }}" style="height: 200px; width: 350px;">
                         </div>

                         <div class="text-center" style="margin-top: 25px;">
                            <h3>{{ $serviceDetail->name }}</h3>
                         </div>

                        <div class="singleViewDetails">
                             <p>{{ $serviceDetail->description }}</p>
                        </div>


                        <div class="text-center" style="padding-bottom:20px;">
                           <a  class="btn btn-danger" href="{{!empty(Auth::User()->id) ? url("booking/$serviceDetail->name") : url('login-form') }}">Booking Now</a>
                        </div>
                    </div>
                  </div>
                </div>   
            </div>
@endsection
@section('scripts')
<script type="text/javascript">
    $(document).ready(function() {
    $('#example').DataTable();
});
</script>
@endsection
