import 'dart:math';

import 'package:flutter/material.dart';



class menu extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return 
 MaterialApp(
 
 home: Container(
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('../assets/mme.png'),
 //   fit: BoxFit.contain
 repeat: ImageRepeat.repeat
    )
    
    ),
    
    child: Scaffold(

      
      backgroundColor: Colors.red,
        appBar: AppBar(title: 
        Text("Bienvenido a la memeap :3"),
        backgroundColor: Colors.transparent
        ,),
        
        body: Center(
          child: Container(
          
            child: Column(
                
                        
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                 
                 margin: const EdgeInsets.only(bottom: 40,top: 50),
                  child:    Text("MEME APP",textAlign:TextAlign.center, style: TextStyle(fontSize: 80 ,color: Colors.white,fontFamily: 'WAGHU-PersonalUse' ),)
     
                   
               
                  ),
                ),
                 
                
              
               Container (
                    
                      
                        
                          child: Column(


                            
                            children: [ 
                             botoninicio(funcion: ()=>{Navigator.of(context).pushNamed('/reproductor')},),
                   
                             botoninicio(funcion: ()=>{Navigator.of(context).pushNamed('/reproductor')},),

                      ],),
                        
                          ),
              
             
            
            ],  
            
            ), 
          ),
          

        ),


 

    ),
  ),
  )
  ;
}


}


class botoninicio extends StatelessWidget{
final Function funcion;
 const botoninicio({
    Key? key,
     required this.funcion,
  }) : super(key: key);

@override
Widget build(BuildContext context) {
  // ignore: deprecated_member_use
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    
    child: FlatButton(onPressed: ()=>{this.funcion()},
    child: Text("Meme Random",style: TextStyle(fontFamily:'poppins',fontSize: 30 ),),
    color: Colors.white,
    textColor: Colors.black54,  
     
    ),
  );
}


}
