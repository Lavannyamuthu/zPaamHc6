<?php

use Illuminate\Database\Seeder;
use App\Models\VehicleMakes;
use App\Models\VehicleModels;

class UpdateVehicleModelsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $vehicleMakes = VehicleMakes::all();
    	$models = [
      	[
        	'make'  => 'Dodge',
        	'model' => 'Ram 1500'
      	],
      	[
        	'make'  => 'Dodge',
        	'model' => 'Ram Rebel'
      	],
      	[
        	'make'  => 'Toyota',
        	'model' => 'Tacoma'
      	],
      	[
        	'make'  => 'Toyota',
        	'model' => 'Tundra'
      	],
      ];
    foreach($models AS $model){
      $v_id = $vehicleMakes->where('title',$model['make'])->first()->id;
      VehicleModels::updateOrCreate([
        'vehicle_make_id' => $v_id,
        'title'           => $model['model']
      ]);
    }
    }
}
