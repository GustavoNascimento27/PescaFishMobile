import 'package:flutter/material.dart';
import 'package:mobileapp/dicas.dart';
import 'package:mobileapp/guaruja.dart';
import 'package:mobileapp/iscas.dart';
import 'package:mobileapp/manual.dart';
import 'package:mobileapp/peixes.dart';
import 'package:mobileapp/santos.dart';
import 'package:mobileapp/varas.dart';
import 'package:mobileapp/manual.dart';
import 'package:mobileapp/locais.dart';
import 'package:mobileapp/dicas.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: MyApp(),
  ));
}

void onPeixesPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Peixes()),
    );
  }
  void onIscasPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Iscas()),
    );
  }
    void onvarasPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => varas()),
    );
  }
    void onlocaisPressed(BuildContext context, String title){
      Navigator.push(context, MaterialPageRoute(builder: (context) => locais())
      );
    }
    void onmanualPressed(BuildContext context, String title){
      Navigator.push(context,MaterialPageRoute(builder:(context) => manual())
     );  } 

     void ondicasPressed(BuildContext context, String title){
      Navigator.push(context, MaterialPageRoute(builder: (context) => dicas()));
     } 
     void onsantospressed(BuildContext context, String title){
      Navigator.push(context, MaterialPageRoute(builder:(context) => santos() ));
     }
       void onguarujapressed(BuildContext context, String title){
      Navigator.push(context, MaterialPageRoute(builder:(context) => guaruja() ));
     }
    
    
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(17, 114, 120, 1),
          title: const Text(
            'PescaFish',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fundoo.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children:<Widget>[ Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 6, top: 20),
                  
              width: 247,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/mapa.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(20)), padding: new EdgeInsets.only(left: 20, right: 20, bottom: 10, top:10), margin: EdgeInsets.only(bottom: 60), child: const Text('Recursos', style:TextStyle(fontSize:20.0,color: Colors.white)),),
        
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[ElevatedButton(onPressed:() {
                onPeixesPressed(context, "Peixes");
              }, 
              child: const Text('Peixes'), style: ElevatedButton.styleFrom(minimumSize: Size(100, 40),foregroundColor: Colors.white, backgroundColor: Colors.green),
                ),
                ElevatedButton(onPressed:() {
                onIscasPressed(context, "Iscas");
              }, 
              child: const Text('Iscas'), style: ElevatedButton.styleFrom(minimumSize: Size(100, 40),foregroundColor: Colors.white, backgroundColor: Colors.green),
               ) 
               ],
              ) ,SizedBox(height: 40), // Espaço entre as linhas
              Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly, children: <Widget>[ElevatedButton(onPressed: (){
                onvarasPressed(context, "Varas");
              }, child: const Text('Varas'), style:ElevatedButton.styleFrom(minimumSize: Size(100, 40),foregroundColor: Colors.white, backgroundColor: Colors.green ,))
              ,ElevatedButton(onPressed: (){
                onlocaisPressed(context, "locais");
              }, child: const Text('Locais'), style:ElevatedButton.styleFrom(minimumSize: Size(100, 40),foregroundColor: Colors.white, backgroundColor: Colors.green ,))
             
              ], ), SizedBox(height:40)
              ,Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,  children: <Widget>[ElevatedButton(onPressed: (){
                onmanualPressed(context, "manual");
              }, child: const Text('Manual'), style:ElevatedButton.styleFrom(minimumSize: Size(100, 40),foregroundColor: Colors.white, backgroundColor: Colors.green ,))
              ,ElevatedButton(onPressed: (){
                ondicasPressed(context, "dicas");
              }, child: const Text('Dicas'), style:ElevatedButton.styleFrom(minimumSize: Size(100, 40),foregroundColor: Colors.white, backgroundColor: Colors.green ,))
            
            ] 
            ),SizedBox(height: 40), 
         
          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly, children: <Widget>[IconButton(icon: Image.asset('assets/santos.png'), iconSize: 1.0, onPressed: (){
            onsantospressed(context, 'santos');
              }, 
          )
           
            
             , Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly, children: <Widget>[
              
              IconButton(icon: Image.asset('assets/guaruja.png'), iconSize: 1.0, onPressed: (){
              onguarujapressed(context, 'guaruja');
            })])
            
            
         ] ),
       ] ),
     ) )));
    
  }
}