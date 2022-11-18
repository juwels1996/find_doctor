import 'package:flutter/material.dart';
const url = 'assets/images/';


class ProductValue{
  List products = [
    {'text':'General Medicine', 'image':url+'general.png',
      'prix':'1200 Doctors', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
    {'text':'Internal Medicine', 'image':url+'internal.png',
      'prix':'800 Doctors', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: '84,99 EUR', style: TextStyle(decoration:TextDecoration.lineThrough)),
      TextSpan(text:' 44 % de réduction', style: TextStyle(fontWeight:FontWeight.bold))])},
    {'text':'Dermalogy', 'image':url+'derma.png', 'prix':'650 Doctors', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
    {'text':'Gyconology', 'image':url+'gyne.png',
      'prix':'1200', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},
    {'text':'Opthalmology', 'image':url+'oph.png',
      'prix':'1200', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: '84,99 EUR', style: TextStyle(decoration:TextDecoration.lineThrough)),
      TextSpan(text:' 44 % de réduction', style: TextStyle(fontWeight:FontWeight.bold))])},
    {'text':'Orthopedics', 'image':url+'ortho.png', 'prix':'769,00 EUR', 'réduction':TextSpan(children:<TextSpan>[TextSpan(text: ' ')])},

  ];
}

