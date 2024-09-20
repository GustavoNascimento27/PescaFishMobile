import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';


void main() {

  runApp(santos());

}
class SantosCard extends StatelessWidget {
  final String image;
  final String nome;
  final String descricao;
  final String descricaoum;
  final String descricaodois;
  final String descricaotres;
   const SantosCard({ required this.image, required this.nome,  required this.descricao, required this.descricaoum, required this.descricaodois, required this.descricaotres});
  
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
                     Text(descricaotres)
   
   
   ]);
  }
}

class SantosumCard extends StatelessWidget {
  final String image;
  final String nome;
 
   const SantosumCard({ required this.image, required this.nome});
  
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




void onVoltarPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  MyApp()),
    );
  }


class santos extends StatelessWidget {

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
          title: Text('SANTOS',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal
        ),
    body: Column( 
   children: [    Expanded(

              child: Column(
              
                children: [
                  Expanded(child: 
                 SantosCard(image: 'assets/san.png', nome: "Santos", descricao: 'Praias belas e movimentadas', descricaoum:'Ponto importante do Brasil' , descricaodois: 'História rica e vibrante', descricaotres: 'Venha conhecer e se encantar',
                 )),

                    SizedBox(height: 16),
Expanded(child:
                 SantosumCard(image: 'assets/praiagonzaga.png', nome: 'Praia do Gonzaga')),

                 SizedBox(height:16),

                 Expanded(child:

                 SantosumCard(image: 'assets/praiajose.png', nome: 'Praia do José Menino'))
              
        
                   

                          

             
 

]))])));
}
}