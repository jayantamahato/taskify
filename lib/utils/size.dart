import 'package:flutter/material.dart';

double percentHeight({required BuildContext context,  int height = 100}){
  return MediaQuery.sizeOf(context).height * height / 100;
}

double percentWidth({required BuildContext context,  int width =100}){
  return MediaQuery.sizeOf(context).width * width / 100;
}

