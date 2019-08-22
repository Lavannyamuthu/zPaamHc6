@extends('layouts.main')

@section('content')
<style>
  .uper {
    margin-top: 0;
  }
</style>
<div class="card uper">
 <div class="card-header">
    Edit Service Request
  </div>
    
  <div class="card-body">
    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('serviceRequest.update',$id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="row">
            
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Name:</strong>
                    <input type="text" name="client_name" placeholder="Enter the Name" value="{{ $serviceRequest->client_name }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Phone Number:</strong>
                    <input type="tel" name="client_phone" placeholder="Enter the Phone Number" value="{{ $serviceRequest->client_phone }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Email</strong>
                    <input type="email" name="client_email" placeholder="Enter the Email Address" value="{{ $serviceRequest->client_email }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <strong>Vehicle Make</strong>
                <div class="form-group">
                    
               <select name="vehicleMake" id="vehicleMake" class="form-control" required>
               @foreach ($vehicleMake as $item)
                <option value="{{ $item['id'] }}" {{ ( $item['id'] == $vehicleMakeId->id ) ? 'selected' : '' }}> 
                    {{ $item['title'] }} 
                </option>
              @endforeach 
                </select>  
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <strong>Vehicle Model</strong>
                <div class="form-group">
                     <select name="vehicle_model_id" id="vehicleModel" class="form-control" required>
                @if ($vehicleModelName)
                  <option value="{{ $vehicleModelName->id }}" selected>{{ $vehicleModelName->title}}</option>
                @else
                  <option></option>
                @endif
                </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
            <strong>Vehicle Model</strong>
            <div class="form-group">
            <select name="status" id="vehicleStatus" class="form-control" required>
              <option value="0">Select Vehicle Status</option>
                  @foreach ($vehicleStatus as $status)
                    <option value="{{ $status }}" {{ ( $status == $serviceRequest->status) ? 'selected' : '' }}> 
                        {{ $status }} 
                    </option>
                  @endforeach       
            </select>
        </div>
          </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Description:</strong>
                    <textarea class="form-control" placeholder="Enter the Description" style="height:150px" name="description">{{ $serviceRequest->description }}</textarea>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                <button type="submit" class="btn btn-success">Update</button>
                <a href={{route('shome')}} class="btn btn-primary">Back</a>
            </div>
        </div>
    </form>
</div>
</div>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
<script>
$('#vehicleMake').on('change',function(){
  var value = $(this).val();
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