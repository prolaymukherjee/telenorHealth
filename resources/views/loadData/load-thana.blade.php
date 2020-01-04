@if(isset($getThana))
    <option>Select Thana</option>
@foreach($getThana as $thana)
    <option value="{{$thana->id}}">{{$thana->name}}</option>
@endforeach
@endif