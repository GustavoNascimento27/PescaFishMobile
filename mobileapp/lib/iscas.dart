import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';

void main(){
    runApp(Iscas());
}

class IscasCard extends StatelessWidget {
  final String image;
  final String nome;


  const IscasCard({super.key, required this.image, required this.nome});
  
  @override

  Widget build(BuildContext context) {
   return Center(
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset(image),
                    SizedBox(height:10),
                    Text(nome),
   
   ]));
  }
}

void onVoltarPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyApp()),
    );
  }
  
class Iscas extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            home:Scaffold(
                appBar:AppBar(
                    title:Text('Iscas'),
                    backgroundColor:Colors.teal,
                    leading:IconButton(onPressed: (){
              Navigator.pop(context);
            },
                        icon:Icon(Icons.arrow_back_ios),
                        
                        
                    )
              
                )
               , body:GridView.count(
                    crossAxisCount: 2,
                    children:[
                        IscasCard( image: 'assets/peqpeixes.png',nome: 'Pequenos peixes'),
                         IscasCard(image: 'assets/iscaart.png', nome: 'Iscas artificiais' ),
                          IscasCard(  image: 'assets/racao.png', nome: 'Ração',),
                           IscasCard(  image:'assets/minhoca.png', nome: 'Minhoca', ),
                    ],
                ),
          
                    
                )
                );
            
        
    }
  
    }