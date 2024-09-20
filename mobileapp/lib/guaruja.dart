import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';


void main() {

  runApp(guaruja());

}
void onVoltarPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  MyApp()),
    );
  }


class GuarujaCard extends StatelessWidget {
  final String image;
  final String nome;
  final String descricao;
  final String descricaoum;
  final String descricaodois;

   const GuarujaCard({ required this.image, required this.nome,  required this.descricao, required this.descricaoum, required this.descricaodois});
  
  @override

  Widget build(BuildContext context) {
   return Column(
            
               crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    Image.asset(image),

                    Text(nome, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
                     Text(descricao),
                     Text(descricaoum),
                     Text(descricaodois),
                    
   
   
   ]);
  }
}

class GuarujaumCard extends StatelessWidget {
  final String image;
  final String nome;
 
   const GuarujaumCard({ required this.image, required this.nome});
  
  @override

  Widget build(BuildContext context) {
    return Column(
            
               crossAxisAlignment: CrossAxisAlignment.center,
        
                children:[
                    Image.asset(image),
                    SizedBox(height:10),
                    Text(nome),
                  
            
   
   ]);
  }
}






class guaruja extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(

          leading: IconButton(

            icon: Icon(Icons.arrow_back_ios),

            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Guaruja',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal
        ),
    body: Column( 
   children: [    Expanded(

              child: Column(
              
                children: [
                  Expanded(child: 
                 GuarujaCard(image: 'assets/gua.png', nome: "Guaruja", descricao: 'Destino turisitico popular ', descricaoum:'Belezas naturais impressionantes' , descricaodois: 'Visite e aproveite as maravilhas', 
                 )),

                    SizedBox(height: 16),
Expanded(child:
                 GuarujaumCard(image: 'assets/praiatombo.png', nome: 'Praia do Tombo')),

                 SizedBox(height:16),

                 Expanded(child:

                 GuarujaumCard(image: 'assets/praiaasturias.png', nome: 'Praia das Asturias'))
              
        
                   

                          

             
 

]))])));
}
}