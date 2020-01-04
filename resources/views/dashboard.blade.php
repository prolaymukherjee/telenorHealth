@extends('layouts.layout')
@section('title', 'Dashboard')
@section('content')
<?php use App\Library\memberShipLib;?>
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1> Probe CRM Dashboard <small></small> </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active">Dashboard</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  @include('common.message')
  @if(Auth::User()->id =='' || Auth::User()->id ==1)
  <div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <!-- small box -->
      <div class="small-box bg-yellow">
        <div class="inner">
          <h2>{{$total_doctor}}</h2>

          <p><b>Total Doctor</b></p>
        </div>
        <div class="icon">
          <i class="fa fa-users"></i>
        </div>
        
      </div>
    </div>
     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <!-- small box -->
      <div class="small-box bg-purple">
        <div class="inner">
          <h2>{{$total_staff}}</h2>

          <p><b>Total Staff</b></p>
        </div>
        <div class="icon">
          <i class="fa fa-user"></i>
        </div>
        
      </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <!-- small box -->
      <div class="small-box bg-green">
        <div class="inner">
          <h2>{{$total_franchise}}</h2>

          <p><b>Total Franchise</b></p>
        </div>
        <div class="icon">
          <i class="fa fa-user"></i>
        </div>
        
      </div>
    </div>
  </div>
  @else
    <div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <!-- small box -->
      <div class="small-box bg-yellow">
        <div class="inner">
          <h2>{{$user_franchise}}</h2>

          <p><b>Total Franchise</b></p>
        </div>
        <div class="icon">
          <i class="fa fa-users"></i>
        </div>
        
      </div>
    </div>
    
  </div>
  @endif
</section>

@endsection 