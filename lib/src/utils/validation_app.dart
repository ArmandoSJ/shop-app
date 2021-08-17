import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'list': Icons.list,
  'tune': Icons.tune,
  'description': Icons.description,
  'find': Icons.find_in_page
};

/*
   *Funcion para validar la conexion de internet en el dispositivo, se valida si hay una conexion de wife o
   *de datos en el movil. 
   */
Future<bool> check() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}
