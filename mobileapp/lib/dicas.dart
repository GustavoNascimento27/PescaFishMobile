import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';


void main(){
    runApp(dicas());
}

void onVoltarPressed(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyApp()),
    );
  }
      
class dicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicas de Pesca',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {

              Navigator.pop(context);
            },
          ),
          title: Text('DICAS', style: TextStyle(color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DICAS PARA A PESCA',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                _buildcoisa(
                  '1. Equipamento Adequado:',
                  'Use varas, linhas e anzóis específicos para o tipo de peixe que deseja capturar.',
                ),
                SizedBox(height: 10.0),
                _buildcoisa(
                  '2. Isca Correta:',
                  'Utilize iscas naturais ou artificiais que sejam eficazes para a espécie alvo na região e estação.',
                ),
                SizedBox(height: 10.0),
                _buildcoisa(
                  '3. Horários Ideais:',
                  'Pesque no início da manhã ou fim da tarde, quando os peixes estão mais ativos.',
                ),
                SizedBox(height: 10.0),
                _buildcoisa(
                  '4. Condições Climáticas:',
                  'Esteja atento ao clima, pois mudanças no tempo, como chuvas ou vento, podem afetar a atividade dos peixes.',
                ),
                SizedBox(height: 10.0),
                _buildcoisa(
                  '5. Variedade de Técnicas:',
                  'Aprenda e aplique diferentes técnicas de pesca, como pesca com mosca, pesca de fundo e pesca de superfície.',
                ),
                SizedBox(height: 10.0),
                _buildcoisa(
                  '6. Manutenção do Equipamento:',
                  'Verifique e mantenha seu equipamento em boas condições, substituindo linhas desgastadas e afiando anzóis.',
                ),
                SizedBox(height: 10.0),
                _buildcoisa(
                  '7. Segurança:',
                  'Use coletes salva-vidas quando necessário e esteja ciente dos perigos locais, como correntes fortes ou animais selvagens.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildcoisa(String title, String description) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}