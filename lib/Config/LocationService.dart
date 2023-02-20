import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart'as goa;

class LocationService {
  late Location _location;
  bool _SerivceEnabled = false;
  PermissionStatus? _grantedPermission;

  LocationService(){
    _location = Location();
  }

  Future<bool> _CheckPermission() async{
    if(await _CheckService()){
      _grantedPermission = await _location.hasPermission();
      if(_grantedPermission != PermissionStatus.denied){
        _grantedPermission = await _location.requestPermission();
      }
    }
    return _grantedPermission == PermissionStatus.granted;
  }

  Future<bool> _CheckService() async {
    try{
      _SerivceEnabled = await _location.serviceEnabled();
      if(!_SerivceEnabled){
    _SerivceEnabled = await _location.requestService();
      }
    } on PlatformException catch(error){
      print('error code is ${error.code} and message = ${error.message}');
      _SerivceEnabled = false;
      await _CheckService();
    }
    return _SerivceEnabled;
  }
  Future<LocationData?> getLocation() async{
    if(await _CheckPermission()) {
      final LocationData = _location.getLocation();
      return LocationData;
    }
    return null;
  }
}