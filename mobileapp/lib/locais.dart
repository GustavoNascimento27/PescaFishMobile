import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';

void main() => runApp(locais());

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
           
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SANTOS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
             
                  buildPlaceCard(
                    'assets/deckpescador.png',
                    
                  ),
                    Text('Deck do Pescador'),
                  SizedBox(height: 16),
              
                  buildPlaceCard(
                    'assets/clubepesca.png',
                 
                  ),
                  Text('Clube de Pesca de Santos'),
                ],
              ),
            ),

          
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GUARUJA',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  
                  buildPlaceCard(
                    'assets/asturias.png',
                   
                  ),
                  Text('Praia das Asturias'),
                  SizedBox(height: 16),
                ],
              ),
            ),

     
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VITORIA FENIX',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                
                  buildPlaceCard(
                    'assets/fenix.jpg',
                
                  ),
                      Text('Vitoria Fênix'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlaceCard(String imagePath) {
    return Card(
      child: InkWell(
        onTap: () {
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            Padding(
              padding: const EdgeInsets.all(16.0),

                
                ),
            ]),
            ),
      
    
    );
  }
}