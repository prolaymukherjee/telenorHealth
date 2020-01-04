@extends('layouts.layout')
@section('content')
    <section class="content">
        @include('common.message')
        <div class="content-page">
            <div class="content">
                <div class="">
                    <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                             <a href="{{ route('all_service') }}" class="btn btn-primary">ALL SERVICE</a>
                            <ol class="breadcrumb pull-right">
                                <li><a href="#">probe</a></li>
                                <li class="active">IT</li>
                            </ol>
                        </div>
                    </div>
                    <!-- Start Widget -->
                    <div class="row">
                        <!-- Basic example -->
                        
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading"><h3 class="panel-title">View Service</h3></div>
                                <div class="panel-body">

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Package Name</label>
                                        <p>{{ $single->name }}</p>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword20">Description</label>
                                        <p>{{ $single->description }}</p>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword19">Photo</label>
                                        <img style="height: 80px; width: 80px;" src="{{ URL::to($single->photo) }}" />
                                    </div>
                                </div><!-- panel-body -->
                            </div> <!-- panel -->
                        </div> <!-- col-->
                    </div>
                </div> <!-- container -->
            </div> <!-- content -->
        </div>
    </section>


@endsection