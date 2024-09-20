import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';


void main() {
  runApp(const varas());
}


class VarasCard extends StatelessWidget {
  final String image;
  final String nome;
  final String descricao;
   const VarasCard({super.key, required this.image, required this.nome, required this.descricao});
  
  @override

  Widget build(BuildContext context) {
   return Center(
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                    Image.asset(image),
                    SizedBox(height:10),
                    Text(nome),
                     Text(descricao),
   
   
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
class varas extends StatelessWidget {
  const varas({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Varas'),   leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
         backgroundColor: const Color.fromRGBO(17, 114, 120, 1), 
         
      )          
      , body:GridView.count(
                    crossAxisCount: 2,
                    children:[
                        VarasCard( image: 'assets/varatelescopica.png',nome: 'Vara de pesca Telescópica', descricao:'Para uso geral'),
                         VarasCard(image: 'assets/varasurf.png', nome: 'Vara de pesca de surfcasting', descricao:'Para lançamentos a partir da praia' ),
                          VarasCard(  image: 'assets/varamar.png', nome: 'Vara de pesca de mar', descricao:'Para pesca em alto mar '),
                           VarasCard(  image:'assets/varafundo.png', nome: 'Vara de Pesca de Fundo', descricao:'Para peixes que habitam no fundo' ),
                    ]
      )
    );
    

    }
    }