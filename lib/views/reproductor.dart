import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

class reproductor extends StatelessWidget{
@override

Widget build(BuildContext context) {
  return 
  
      Scaffold(
             appBar: AppBar(title: Text("soy un reproductor "),
              backgroundColor: Colors.blue,
             ),
             body: Center(
               child:  Row( 
                  mainAxisSize: MainAxisSize.min,
                 children:<Widget> [
                      repro1(funcion: reproducir, icono: Icon(Icons.music_note_sharp),), 
                      repro1(funcion: denetenr, icono: Icon(Icons.stop_outlined),), 
                       repro1(funcion: continuar, icono: Icon(Icons.stop_outlined),), 
                       FlatButton(onPressed: ()=>{Navigator.of(context).pushNamed('/menu')}, child:Text("hola")),
                       
               ],),
               
             ), 

             floatingActionButton: FloatingActionButton(child: Text("hola"), onPressed: null,),
             
  );

}

}
  AudioCache cache= AudioCache();
  AudioPlayer player= AudioPlayer();
  String estado= "frenado";
class repro1 extends StatelessWidget {
   final Function funcion; 
   final Icon icono;

  const repro1({
    Key? key,
      required this.funcion, 
      required this.icono,
  }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
             IconButton(onPressed:(){this.funcion();} , 
             icon:this.icono,  
             ),

      ],);
  }
}

void reproducir() async{
  if(estado == "frenado"){
  Random random = new Random();
           
           int cancionrandom = random.nextInt(3);
            int cancionanterior = 8;

            if ( cancionanterior == cancionrandom){
        
      
            }
          var audio= ['audio1.mp3','mapache.mp3','monda.mp3'];
          
        print(cancionrandom);
      
   //     player.play(audio[cancionrandom]);
         player = await cache.play('mapache.mp3');
         estado="sonando";
      }else{
           
            player.stop();
            Random random = new Random();
           
           int cancionrandom = random.nextInt(3);
            int cancionanterior = 8;

           
          var audio= ['audio1.mp3','mapache.mp3','monda.mp3'];
          
        print(cancionrandom);
      
   //     player.play(audio[cancionrandom]);
         player = await cache.play('mapache.mp3');

         estado= "sonando";
         
      }
        

}



void denetenr(){

player.pause(); 
estado= "frenado";
print("Me detuve");
}


void continuar(){
player.resume();
print("resume");


}
