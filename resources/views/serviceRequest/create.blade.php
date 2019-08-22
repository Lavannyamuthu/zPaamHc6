<!-- create.blade.php -->

@extends('layouts.main')

@section('content')
<style>
  .uper {
    margin-top: 0;
  }
</style>
<div class="card uper">
  <div class="card-header">
    Add Service Request
  </div>
  <div class="card-body">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
   
      <form method="post" action="{{ route('serviceRequest.store') }}">
          <div class="form-group">
              @csrf
              <label for="name">Name:</label>
              <input type="text" class="form-control" name="client_name"  value="{{ old('client_name') }}" placeholder="Enter the Name" required/>
          </div>
          <div class="form-group">
            <label for="phone">Phone Number</label>
            <input type="tel" class="form-control" name="client_phone"  value="{{ old('client_phone') }}" placeholder="Enter the Phone Number" required/>
          </div>
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" class="form-control" name="client_email"  value="{{ old('client_email') }}" placeholder="Enter the Email Address" required/>
          </div>
          <div class="form-group">
              <label for="vehicleMake">VehicleMake :</label>
              <select name="vehicleMake" id="vehicleMake" class="form-control" required>
                <option value="0">Select Vehicle Make</option>
                @foreach($vehicleMake as $item)
                @if (old('vehicleMake') == $item)
                  <option value="{{ $item->id }}" selected>{{ $item->title}}</option>
                @else
                  <option value="{{ $item->id }}">{{ $item->title }}</option>
                @endif
                <!-- <option value="{{ $item->id }}">{{ $item->title }}</option> -->
                @endforeach
              </select>
          </div>
          <div class="form-group">
            <label for="vehicleModel">Vehicle Model</label>
            <select name="vehicle_model_id" id="vehicleModel" class="form-control" required>
               <option value="0">Select Vehicle Model</option>
              <option></option>
            </select>
          </div>
          <div class="form-group">
            <label for="status">Status</label>
            <select name="status" id="vehicleStatus" class="form-control" required>
              <option value="0">Select Vehicle Status</option>
              @foreach($vehicleStatus as $status)
              @if( old('status')== $status)
                <option value="{{ $status }}" selected>{{ $status }}</option>  
              @else
                <option value="{{ $status }}">{{ $status }}</option>        
              @endif
              @endforeach
            </select>
          </div>
          <div class="form-group">
              <label for="quantity">Description :</label>
              <textarea class="form-control" name="description" placeholder="Enter the Description" value="{{ old('description') }}"required></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Create Service Request</button>
      </form>
  </div>
</div>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
<script>
$('#vehicleMake').on('change',function(){
  // var getVehicleMakeValue= $this.val();
  var value=$(this).val();
  $("#vehicleModel").html("");
  $.ajax({
      url: "{{ URL::to('getVehicleModel') }}/"+value,
      type: "GET",
      success: function(data){
        $.each(data,function(key, value)
        {
          $("#vehicleModel").append('<option value=' + value.id + '>' + value.title + '</option>');
        });
    }
  });
});

</script>
@endsection
