import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';


void main() {

  runApp(santos());

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

              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/san.png'), ),Expanded(
 child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Praias belas e movimentadas.',

                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),  ),

                          SizedBox(height: 8),
                          Text(
                            'Porto importante do Brasil.',
                            style: TextStyle(
                              fontSize: 16,
                            ),  ),
                          SizedBox(height: 8),
                          Text(
                            'História rica e vibrante.',
                            style: TextStyle(
                              fontSize: 16,

                            ),
                          ),
                          SizedBox(height: 8),

                          Text(
                            'Venha conhecer e se encantar!',
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
 child: Image.asset('assets/praiagonzaga.png'),
 ),Expanded( child: Center(child: Text( 'PRAIA DO GONZAGA',

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
                    child: Image.asset('assets/praiajose.png'),
                  ),
                  Expanded(

                    child: Center(
                      child: Text(
                        'PRAIA DO JOSE MENINO',
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