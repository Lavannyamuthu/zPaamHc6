<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ServiceRequests;
use App\Models\VehicleMakes;
use App\Models\VehicleModels;

class ServiceRequestsController extends Controller {
  /**
   * [Display a paginated list of Service Requests in the system]
   * @return view
   */
  public function index(){
    $requests = ServiceRequests::orderBy('updated_at','desc')->paginate(20);
    return view('serviceRequest.index',compact('requests'));
  }
  /**
  * Create the specified resource in storage.
  * serviceRequestCreate() - creating Service Request
  * @return view 
  */
  public function serviceRequestCreate(){
    $vehicleMake = VehicleMakes::all();
    $vehicleStatus = VehicleMakes::getEnumColumnValues('service_requests','status');
    return view('serviceRequest.create',compact('vehicleMake','vehicleStatus'));
  }
  /**
  * getVehicleModel - get VehicleModel id 
  * @param $id
  * @return array
  */
  public function getVehicleModel($id){
    $getVehicleModel = VehicleMakes::with('vehicleModels')->find($id);
    $vehicleModels = $getVehicleModel->vehicleModels->toArray();
    if(is_array($vehicleModels)){
      return $vehicleModels;
    }
  }
 /**
 * Store a newly created resource in storage.
 *
 * @param  \Illuminate\Http\Request  $request
 * @return \Illuminate\Http\Response
 */
  public function store(Request $request)
  {
    $request->validate([
      'client_name'=>'required|max:255',
      'client_phone'=>'required|numeric',
      'client_email'=>'required|email',
      'vehicle_model_id'=>'required',
      'status'=>'required'
    ]);
    // Create Service Requests
    ServiceRequests::create([
                    "client_name"=>$request->client_name,
                    "client_phone"=>$request->client_phone,
                    "client_email"=>$request->client_email,
                    "vehicle_model_id"=>$request->vehicle_model_id,
                    "status"=>$request->status,
                    "description"=>$request->description]);
    return redirect()->route('shome')
                      ->with('success','Service Request saved successfully');
  }
  /**
   * Edit the specified resource in storage.
   * @param  ServiceRequests $serviceRequest 
   * @return view
   */
  public function edit(ServiceRequests $serviceRequest,$id){ 
    $serviceRequest = $serviceRequest->where('id',$id)->first();
    $vehicleMake = VehicleMakes::all();
    $vehicleStatus = VehicleMakes::getEnumColumnValues('service_requests','status');
    $vehicleModelName = VehicleModels::select('id','title','vehicle_make_id')->where('id',$serviceRequest->vehicle_model_id)->first();
    $vehicleMakeId = VehicleMakes::select('id','title')->where('id',$vehicleModelName->vehicle_make_id)->first();
    return view('serviceRequest.edit',compact('serviceRequest','id','vehicleMake','vehicleModelName','vehicleStatus','vehicleMakeId'));
  }
  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  $id
   * @return \Illuminate\Http\Response
  */
  public function update(Request $request,$id){
    $request->validate([
        'client_name'=>'required|max:255',
        'client_phone'=>'required|numeric',
        'client_email'=>'required|email',
        'vehicle_model_id'=>'required',
        'status'=>'required'
        ]);
    // remove vehicleMake field
    $request->offsetUnset('vehicleMake');
    $serviceRequest = ServiceRequests::find($id);
    $serviceRequest->update($request->all());
    return redirect()->route('shome')
                        ->with('success','Service Request updated successfully');

  }
  /**
  * Remove the specified resource from storage.
  *
  * @param  $id
  * @return \Illuminate\Http\Response
  */
  public function destroy($id){
    $serviceRequest = ServiceRequests::where('id',$id)->delete();
    return redirect()->back()
                        ->with('success','Service Request deleted successfully');
  }
}
