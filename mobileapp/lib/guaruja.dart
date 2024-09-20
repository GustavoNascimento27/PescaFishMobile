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

              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/gua.png'), ),Expanded(
 child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Praias lindas e badaladas.',

                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),  ),

                          SizedBox(height: 8),
                          Text(
                            'Destino turistico popular.',
                            style: TextStyle(
                              fontSize: 16,
                            ),  ),
                          SizedBox(height: 8),
                          Text(
                            'Belezas naturais e impressionantes.',
                            style: TextStyle(
                              fontSize: 16,

                            ),
                          ),
                          SizedBox(height: 8),

                          Text(
                            'Visite e aproveite as maravilhas!',
                            style: TextStyle(
                              fontSize: 16,
   ),
         ), ], ),
),
), ],
 ), ),
  Expanded(
 child: Row( children: [
   Expanded(
 child: Image.asset('assets/praiatombo.png'),
 ),Expanded( child: Center(child: Text( 'Praia do Tombo',

                      style: TextStyle(

                   fontSize: 20,

             fontWeight: FontWeight.bold
                        ),
                      ),

                    ),

                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/praiaasturias.png'),
                  ),
                  Expanded(

                    child: Center(
                      child: Text(
                        'Praia das Asturias',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                ),
               ),

                   ),         ),

           ],

              )
            ),
         ],
       ),

      ),
    );

  }

}