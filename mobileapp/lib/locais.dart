import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';

void main() => runApp(locais());

class LocalCard extends StatelessWidget {
  final String image;
  final String nome;


  const LocalCard({super.key, required this.image, required this.nome,});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 10),
        Text(
          nome,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
   
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locais',
    
      home: locais(),
    );
  }
}
void onVoltarPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  MyApp()),
    );
  }



class locais extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locais'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back ,color: Colors.black,),
          onPressed: () {
             Navigator.pop(context);
            
          },
      
        ),
     backgroundColor: const Color.fromRGBO(17, 114, 120, 1), ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
                  SizedBox(height: 16),
             
                  LocalCard(
                    image: 'assets/deckpescador.png',
                    nome: "Deck do pescador",
                 
                    
                  ),
                  SizedBox(height: 16),
              
                  LocalCard(
                    image: 'assets/clubepesca.png',
                    nome: 'Clube de Pesca de Santos',
              
                 
                  ),
                


          
         
                  
                  LocalCard(
                  image:'assets/asturias.png',
                  nome:'Praia das Asturias',
               
                   
                  ),
           
                  SizedBox(height: 16),
                
              
          

     
        
                  
                  
                  const SizedBox(height: 16),
                
                  LocalCard(
                    image: 'assets/fenix.jpg',
                  
                  nome: 'Vitoria Fênix',
                  
                      
                
                  ),
                
    ])));
  }

 
 
    
    
  }
