@extends('webmodule.layouts.web-layouts')
@section('content')
<?php
    use App\Library\pmscommon;    
?>  
@include('common.commonFunction')
    <div role="main" class="main">
        <div class="home-banner" style="max-height:450px;">
            <img src="public/frontend/img/Air2.jpg" width="100%" height="100%">
        </div>
        <div class="home-intro home-intro-quaternary" id="home-intro">
            <div class="container">

                <div class="row text-center">
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="desktop-box ">

                            <div class="icon_maindiv">
                                <div class="icon1_maindiv">
                                    <div class="icon1"></div>
                                </div>
                            </div>
                            <div class="icon_heading">AIR-AMBULANCE</div>

                              <div class="icon_subheading">
                                    <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="center_id" id="center_id"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">
                                        <option value="" selected="selected">Livivng Country</option>
                                        <option value="1">Bangladesh</option>
                                        <option value="2">India</option>
                                    </select>
                                </div>

                                <div class="icon_subheading">
                                    <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="center_id" id="center_id"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">
                                        <option value="" selected="selected">Livivng City</option>
                                        <option value="1">Bangladesh</option>
                                        <option value="2">India</option>
                                        <option value="3">Nepal</option>
                                        <option value="4">Bhutan</option>
                                        <option value="5">Srilanka</option>
                                        <option value="42">Singapore</option>
                                    </select>
                                </div>



                                 <div class="icon_subheading">
                                    <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="city_id" id="city_id"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">

                                        <option value="" selected="selected">Destination Country</option>
                                        <option value="1">Dhaka</option>
                                        <option value="2">Delli</option>
                                        <option value="3">Katmundo</option>
                                        <option value="4">Thimbu</option>
                                        <option value="5">Colombo</option>
                                        <option value="42">Singapore</option>
                                    </select>
                                </div>

                              <div class="icon_subheading">
                                 <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="city_id" id="city_id"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">

                                        <option value="" selected="selected">Destination City</option>
                                        <option value="1">Dhaka</option>
                                        <option value="2">Delli</option>
                                        <option value="3">Katmundo</option>
                                        <option value="4">Thimbu</option>
                                        <option value="5">Colombo</option>
                                        <option value="42">Singapore</option>
                                    </select>
                                </div>
                                <div class="icon_subheading">
                                    <input name="search" type="button" onclick="get_center()" value="Search"
                                           class="nearestlab_btn" style="width:100%;">
                                </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="desktop-box ">

                            <form>
                                <div class="icon_maindiv">
                                    <div class="icon1_maindiv">
                                        <div class="icon2"></div>
                                    </div>
                                </div>
                                <div class="icon_heading">HELICOPTER</div>
                                  <div class="icon_subheading">
                                    <select data-placeholder="Search By Location..." class="download_report_div "
                                             name="division_id" 
                                            style="width:100%; border:0px; background-color:#FFF;" required="">
                                   <option value="" selected="selected">Livivng Country</option>
                                    @foreach($divisions as $division)
                                       <option value="{{  $division->id }}">{{ $division->name }}</option>
                                    @endforeach

                                  </select>
                                </div>

                                <div class="icon_subheading">
                                   <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="district_id" id="districtId"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">
                                        <option value="" selected="selected">Livivng City</option>
                                    </select>
                                </div>



                              <div class="icon_subheading">
                                 <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="city_id" id="city_id"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">

                                       <option value="" selected="selected">Destination City</option>
                                        
                                        @foreach($divisions as $division)
                                           <option value="{{  $division->id }}">{{ $division->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="icon_subheading">
                                    <input name="search" type="button" onclick="get_center()" value="Search"
                                           class="nearestlab_btn" style="width:100%;">
                                </div>

                                
                          </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="desktop-box">
                            <div class="icon_maindiv">
                                <div class="icon1_maindiv">
                                    <div class="icon3"></div>
                                </div>
                            </div>
                            <div class="icon_heading">AMBULANCE</div>
                           
                            <div class="icon_subheading">
                               <select data-placeholder="Search By Location..." class="download_report_div "
                                             name="division_id" 
                                            style="width:100%; border:0px; background-color:#FFF;" required="">
                                   <option value="" selected="selected">Livivng Country</option>
                                    @foreach($divisions as $division)
                                       <option value="{{  $division->id }}">{{ $division->name }}</option>
                                    @endforeach

                                  </select>
                                </div>

                                <div class="icon_subheading">
                                    <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="district_id" id="districtId"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">
                                        <option value="" selected="selected">Livivng City</option>
                                    </select>
                                </div>


                              <div class="icon_subheading">
                                 <select data-placeholder="Search By Location..." class="download_report_div "
                                            name="city_id" id="city_id"
                                            style="width:100%; border:0px; background-color:#FFF;" required="">

                                        <option value="" selected="selected">Destination City</option>
                                        
                                        @foreach($divisions as $division)
                                           <option value="{{  $division->id }}">{{ $division->name }}</option>
                                        @endforeach
                                      
                                    </select>
                                </div>
                                <div class="icon_subheading">
                                    <input name="search" type="button" onclick="get_center()" value="Search"
                                           class="nearestlab_btn" style="width:100%;">
                                </div>

                        </div>
                    </div>

                </div>

            </div>
        </div>


        <div class="container">
            <div class="row">
                <div class="col text-center appear-animation" data-appear-animation="fadeInUpShorter"
                     data-appear-animation-delay="200">
                    <h2 class="font-weight-normal text-6 mb-5 common-text" style="padding-bottom:30px;">Our <strong
                                class="font-weight-extra-bold">Services</strong></h2>
                </div>
            </div>
            <div class="row">
                @if(isset($serviceList))
                @foreach($serviceList as $service)
                   <div class="col-lg-4 col-mb-4 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="400">
                        <div class="feature-box feature-box-secondary feature-box-style-4">
                            <div class="feature-box-icon">
                                <img src='{{asset("$service->photo")}}' style=" padding-bottom:30px">
                            </div>
                            <div class="feature-box-info">
                                <h4 class="mb-2 font-weight-bold">{{$service->name}}</h4>
                                <p class="common-fornt"> 
                                    {{strip_tags(substr($service->description,0,200))}}
                                </p>
                                 <a class="btn btn-info booking" href='{{URL::to("service-details/$service->id")}}'>Details</a>
                            </div>
                        </div>

                    </div>
                @endforeach
                @endif
            </div>


        </div>
        <section class="section bg-color-grey-scale-1 section-height-3 section-no-border appear-animation"
                 data-appear-animation="fadeIn">
            <div class="container">
                <h2 class="font-weight-normal package_header common-text" align="center" >Our <strong
                            class="font-weight-extra-bold">Packages</strong></h2>
                <div class="row">
                    @if(isset($packageList))
                    @foreach($packageList as $package)
                    <div class="col-lg-4 text-center col-sm-6">
                        <div class="single_department">
                            <div class="dpmt-thumb">
                               <img src='{{asset("$package->photo")}}' height="150px" width="150px" alt="">
                            </div>
                            <br>
                            <h5>{{$package->price}}tk</h5>
                            <h4>{{$package->name}}</h4>
                            <p class="common-fornt">{{strip_tags(substr($package->description,0,100))}}</p>
                        </div>
                         <a class="btn btn-info booking" style="width: 225px;" href='{{URL::to("package-details/$package->id")}}'>Details</a>
                    </div>
                    @endforeach
                    @endif
                </div>
            </div>

        </section>
    </div>
<!-- emergency contact details -->
    <section id="emergencyDv">
        <div class="container" >
            <div class="row">
                <div class="col-md-5 emergency-contact-info" style="margin-right: 25px;">
                    <div class="">
                        <h3  class="text-center" style="margin-top: 85px; color: 
                        #ffffff;font-size: 35px;"><span class="text-center">On Emergency</span></h3>
                        <p class="text-center emergency-contact">01942559895<br> 
                            <br>01875314620</p>
                    </div>
                </div>
                <div class="col-md-6 emergency-contact-info">
                    <div class="">
                        <h4 class="text-center emergency-contact" style="margin-top:20px;">Emergency Contact Info</h4>
                    </div>
                    <form>
                        <div class="row">
                          <div class="col-md-6"> 
                            <div class="form-group"> 
                              <label for="field-5" class="control-label lebal_name
                               form-details">Name:</label> 
                              <input type="text" class="form-control" id="field-5" name="name"  placeholder="Enter your Name" required> 
                            </div> 
                          </div>

                          <div class="col-md-6"> 
                            <div class="form-group"> 
                              <label for="field-5" class="control-label lebal_name
                              form-details">Phone:</label> 
                              <input type="text" class="form-control" id="field-5" name="phone"  placeholder="Enter your Phone" required> 
                            </div> 
                          </div>

                          <div class="col-md-6"> 
                            <div class="form-group"> 
                              <label for="field-5" class="control-label lebal_name
                              form-details">Email:</label> 
                              <input type="email" class="form-control" id="field-5" name="phone" placeholder="Enter your email" required> 
                            </div> 
                          </div>

                         <div class="col-md-6"> 
                           <div class="form-group"> 
                             <label for="field-5" class="control-label lebal_name
                             form-details">Description:</label> 
                            <textarea type="text" class="form-control" id="field-5" name="email" required> </textarea>
                           </div> 
                        </div>

                        <div class="modal-footer col-md-12"> 
                           <a type="submit" class="btn btn-danger btn-lg waves-effect waves-light" 
                           style="width:145px;margin-right:225px;color: #ffffff;">Contact</a> 
                       </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
<!--End emergency contact details -->

    <!--event-->
    <div class="row justify-content-center">
        <div class="col-lg-7">
            <div class="main_title text-center">
                <h2 class="common-text">OUR SUCCESS STORY</h2>
            </div>
        </div>
    </div>
 <!--event-->
    <div id="carouselSuccessControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            @if(isset($storyList))
                @foreach($storyList as $story)
                       <div class="carousel-item {{ !empty($story->status) ? 'active' : '' }}">
                           <div class="container">
                               <div class="row">
                               
                                   <div class="col-md-5 col-lg-5 col-sm-5 col-xs-12">
                                     <div class="success-img">
                                          <img class="d-block w-100" src="{{ asset($story->photo) }}" alt="First Health Tips" class="img-responsive" >
                                     </div>
                                  </div> 
                                  <div class="col-md-7 col-lg-7 col-sm-7 col-xs-12">
                                     <div class="success-msg">
                                         <i class="fa fa-quote-left"></i> &nbsp;{!! $story->description  !!} &nbsp;<i class="fa fa-quote-right"></i>
                                     </div>
                                   </div> 
                                </div>
                           </div>
                       </div>
                 @endforeach   
            @endif
        </div>
        <a class="carousel-control-prev" href="#carouselSuccessControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true" ></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselSuccessControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

<!-- blog start -->
    <div class="container">
        <div class="row mt-4">
            <div class="col-lg-12 text-center appear-animation" data-appear-animation="fadeInUpShorter"
                 data-appear-animation-delay="400">
                <h2 class="font-weight-normal text-6 mt-3 mb-5 common-text">Latest <strong
                            class="font-weight-extra-bold">Blog</strong></h2>
            </div>
        </div>
        <div class="row recent-posts pb-4 mb-5 appear-animation" data-appear-animation="fadeInRightShorter"
             data-appear-animation-delay="200">
             @if(isset($blogList))
             @foreach($blogList as $blog)
                 <?php
                                        
                 ?>
                @if($blog->vedio_url ==null || $blog->vedio_url =='')
                <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <article class="blog-post">
                        <div class="row">
                            <div class="col-auto blog-img">
                                <img class="img-responsive" src='{{asset("$blog->photo")}}' style="width: 100%;height: 150px">
                            </div>
                            <div class="col-auto pr-0">
                                <div class="date">
                                    <span class="day text-color-dark font-weight-extra-bold">{{date('d',strtotime($blog->date))}}</span>

                                    <span class="month bg-color-primary font-weight-semibold text-color-light text-1">{{date('M ',strtotime($blog->date))}}</span>
                                </div>
                            </div>
                            <div class="col pl-1">
                                <h4 class="line-height-3 text-4"><a href="#" class="text-dark">{{$blog->blog_title}}</a></h4>
                                <p class="line-height-5 pr-3 mb-1 common-fornt">{{strip_tags(substr($blog->blog_details,0,150))}}</p>
                                <a class="btn btn-light text-uppercase text-primary text-1 py-2 px-3 mb-1 mt-2"
                                   href="#"><strong>VIEW MORE</strong><i
                                            class="fas fa-chevron-right text-2 pl-2"></i></a>
                            </div>
                        </div>
                    </article>
                </div>
                @else
                <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
                    <article class="blog-post">
                        <div class="row">
                            <div class="col-auto blog-img">
                                <iframe style="height: 150px;width: 350px" src="{{$blog->vedio_url}}">
                                </iframe>
                            </div>
                            <div class="col-auto pr-0">
                                <div class="date">
                                    <span class="day text-color-dark font-weight-extra-bold">{{date('d',strtotime($blog->date))}}</span>
                                    <span class="month bg-color-primary font-weight-semibold text-color-light text-1">{{date('M ',strtotime($blog->date))}}</span>
                                </div>
                            </div>
                             <div class="col pl-1">
                                <h4 class="line-height-3 text-4"><a href="#" class="text-dark">{{$blog->blog_title}}</a></h4>
                                <p class="line-height-5 pr-3 mb-1">{{strip_tags(substr($blog->blog_details,0,150))}}</p>
                                <a class="btn btn-light text-uppercase text-primary text-1 py-2 px-3 mb-1 mt-2"
                                   href="#"><strong>VIEW MORE</strong><i
                                            class="fas fa-chevron-right text-2 pl-2"></i></a>
                            </div>
                        </div>
                    </article>
                </div>
                @endif
            @endforeach
            @endif
            
        </div>
    </div>
<!-- End blog start -->


@endsection


@section('scripts')
<script type="text/javascript">
   $("#position").select2({
        allowClear:true,
        placeholder: 'Test'
      });
     $(function() {
        $('select[name=division_id]').change(function() {
            var did = $(this).val();
            $('#districtId').load('{{ URL::to('load-district')}}/'+did);
        });
    });    
</script>
@endsection
