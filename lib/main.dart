import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meme_app/views/menuprincipal.dart';
import 'package:meme_app/views/reproductor.dart';

main(List<String> args) {
  runApp(home());
}
class home  extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return MaterialApp(
    
    theme:ThemeData(primarySwatch: Colors.teal),
 routes:{
    '/': (context)=> menu(),
    '/reproductor' : (context)=> reproductor(),
     '/menu' : (context)=> menu(),


 } ,
    );  
}


}
