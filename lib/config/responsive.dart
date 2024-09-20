import 'package:flutter/material.dart';

late double screenWidth;
late double screenHight;

initResponsive(context){

   screenWidth =MediaQuery.of(context).size.width;
   screenHight = MediaQuery.of(context).size.height;

}