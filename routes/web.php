<?php
// Web Routes================================================
Route::get('/', 'HomeController@index');
Route::get('contact-us','HomeController@contactUs');
Route::get('about','HomeController@about');
// Web Routes================================================

Route::get('load-thana/{thanaId}', 'FranchiseController@getThana');
Route::get('load-district/{dId}', 'FranchiseController@getDisctrict');
//package and service single page show
Route::get('service-details/{id}','ServiceController@singleServiceView');
Route::get('package-details/{id}','PackageController@singlePackageView');
//air ambulance ambulance
Route::resource('booking-page','BookingController');
Route::get('booking/{name}','BookingController@index');
Route::get('booking-list','BookingController@bookingList');
//Route::post('booking-store','BookingController@store');
//login register route
Route::get('register-form', 'LoginController@registerForm');
Route::get('login-form', 'LoginController@loginForm');

//patient controller
Route::resource('patient','PatientController');
Route::post('patient-login','LoginController@usertLogin');

Auth::routes();
Route::group(['middleware'=>['patientAccess']],function(){
    Route::get('patient-order', 'LoginController@order');
    Route::get('patient-profile', 'LoginController@profile');
    Route::get('orderReport-details/{id}','OrderController@showOrderDetails');
    Route::get('patient-logout','LoginController@userLogout');
    Route::get('order-page','PatientController@order');
    Route::get('patient-profile', 'LoginController@profile');
});

Route::get('update-profile/{id}','LoginController@changePassword');
Route::post('update-password/{id}','LoginController@updatePassword');


Route::group(['middleware'=>['auth','currencyCheck','userrolewiseaccess']],function(){

    Route::get('dashboard', 'dashboardController@index')->name('route.dashboard');
    Route::get('truncate', 'dashboardController@allTable');
    Route::get('truncate/{table}', 'dashboardController@truncateTable');
    Route::post('update-profile', 'UserController@updateProfile');
    //admin controller
    Route::resource('manage-admin', 'AdminController');
    Route::resource('employee-designation', 'EmployeeDesignationController');
    Route::resource('employee-list','EmployeeController');
    Route::get('add-employee','EmployeeController@create');
    Route::match(['get', 'post'], '/search-employee', [
        'uses'=>Request::isMethod('post')?'EmployeeController@searchEmployee':'EmployeeController@index'
    ]);
    Route::get('edit-employee/{id}','EmployeeController@edit');
    //employee salary---------
    Route::resource('employee-salary-list','EmployeeSalaryController');
    Route::resource('user-type', 'UserTypeController');
    //division
    Route::resource('division','DivisionController');
    //district
    Route::resource('district','DistrictController');
    //thana
    Route::resource('thana','ThanaController');
    //service
    Route::get('add-service','ServiceController@index')->name('service');
    Route::get('/all-service','ServiceController@allService')->name('all_service');
    Route::post('/insert-service','ServiceController@store');
    Route::get('/view_service/{id}','ServiceController@ViewService');
    Route::get('/delete_service/{id}','ServiceController@DeleteService');
    Route::get('/edit_service/{id}','ServiceController@EditService');
    Route::post('/update_service/{id}','ServiceController@UpdateService');
    //package
    Route::get('add-package','PackageController@index')->name('package');
    Route::get('/all-package','PackageController@allPackage')->name('all_package');
    Route::get('/booking_package','PackageController@allPackageBookingList')->name('booking_package');
    Route::post('/insert-package','PackageController@store');
    Route::post('/booking-package','PackageController@BookingPackage');
    Route::get('/view_package/{id}', 'PackageController@ViewPackage');
    Route::get('/delete_package/{id}', 'PackageController@DeletePackage');
    Route::get('/edit_package/{id}', 'PackageController@EditPackage');
    Route::post('/update_package/{id}','PackageController@UpdatePackage');
    //event
    Route::get('add-event','EventController@index')->name('event');
    Route::get('/all_event','EventController@allEvent')->name('all_event');
    Route::post('/insert-event','EventController@store');
    Route::get('/view_event/{id}','EventController@ViewEvent');
    Route::get('/delete_event/{id}','EventController@DeleteEvent');
    Route::get('/edit_event/{id}','EventController@EditEvent');
    Route::post('/update_event/{id}','EventController@UpdateEvent');

    //doctor
    Route::get('add-doctor','DoctorController@index')->name('doctor');
    Route::get('/all_doctor','DoctorController@allDoctor')->name('all_doctor');
    Route::get('/all_appointment','DoctorController@allAppointment')->name('all_appointment');
    Route::post('/insert-doctor','DoctorController@store');
    Route::get('/view_doctor/{id}','DoctorController@ViewDoctor');
    Route::get('/delete_doctor/{id}','DoctorController@DeleteDoctor');
    Route::get('/edit_doctor/{id}','DoctorController@EditDoctor');
    Route::post('/update_doctor/{id}','DoctorController@UpdateDoctor');

    //blog
    Route::get('add-blog','BlogController@index')->name('blog');
    Route::get('/all_blog','BlogController@allBlog')->name('all_blog');
    Route::post('/insert-blog','BlogController@store');
    Route::get('/view_blog/{id}','BlogController@ViewBlog');
    Route::get('/delete_blog/{id}','BlogController@DeleteBlog');
    Route::get('/edit_blog/{id}','BlogController@EditBlog');
    Route::post('/update_blog/{id}','BlogController@UpdateBlog');

    //story
    Route::get('add-story','StoryController@index')->name('story');
    Route::get('/all_story','StoryController@allStory')->name('all_story');
    Route::post('/insert-story','StoryController@store');
    Route::get('/view_story/{id}','StoryController@ViewStory');
    Route::get('/delete_story/{id}','StoryController@DeleteStory');
    Route::get('/edit_story/{id}','StoryController@EditStory');
    Route::post('/update_story/{id}','StoryController@UpdateStory');
    //healthtips
    Route::resource('health','HealthTipsController');
});

Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return('Successfully Clear Cache facade value.');
});
//Clear Config cache:
Route::get('/view-cache', function() {
    $exitCode = Artisan::call('view:cache');
    return('Successfully Clear view cache.');
});

Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return('Successfully Clear Config cache.');
});