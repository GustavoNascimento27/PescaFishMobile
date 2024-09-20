import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';


void main() {
  runApp(const varas());
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
     , body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/varatelescopica.png'),
                const Text('Vara de pesca telescópica'),
                const Text('Para pescas em geral'),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/varasurf.png'),
                const Text('Vara de pesca de Surfcasting'),
                const Text('Para lançamentos a partir da praia'),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/varafundo.png'),
                const Text('Vara de pesca de fundo'),
                const Text('Para peixes que habitam o fundo'),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/varamar.png'),
                const Text('Vara de pesca de mar'),
                const Text('Para pesca em alto-mar'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}