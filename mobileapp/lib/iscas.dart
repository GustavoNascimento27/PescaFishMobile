import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';

void main(){
    runApp(Iscas());
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
                        _buildGridItem('pequenos peixes', 'assets/iscaart.png'),
                         _buildGridItem('Pequenos peixes', 'assets/iscaart.png'),
                          _buildGridItem( 'Ração para peixes',  'assets/racao.png'),
                           _buildGridItem(  'Minhoca', 'assets/minhoca.png' ),
                    ],
                ),
          
                    
                )
                );
            
        
    }
    Widget _buildGridItem(String title, String imagePath){
        return Center(
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset(imagePath),
                    SizedBox(height:10),
                    Text(title),
                ]
            )
        );
    }
}