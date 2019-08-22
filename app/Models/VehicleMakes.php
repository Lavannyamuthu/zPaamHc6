<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

class VehicleMakes extends Model {
  protected $guarded = ['id'];

  public function vehicleModels(){
  	return $this->hasMany('App\Models\VehicleModels','vehicle_make_id');
  }

  public static function getEnumColumnValues($table, $column) {
 
      $type = DB::select(DB::raw("SHOW COLUMNS FROM $table WHERE Field = '{$column}'"))[0]->Type ;
 
      preg_match('/^enum\((.*)\)$/', $type, $matches);
 
      $enum_values = array();
      foreach( explode(',', $matches[1]) as $value )
      {
        $v = trim( $value, "'" );
        $enum_values = array_add($enum_values, $v, $v);
      }
      return $enum_values;
  }
}
