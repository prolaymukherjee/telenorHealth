@if(isset($getDisctrict))
    <option>Livivng City</option>
    @foreach($getDisctrict as $disctrict)
        <option value="{{$disctrict->id}}">{{$disctrict->name}}</option>
    @endforeach
@endif