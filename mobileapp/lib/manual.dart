import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';

void main() {

  runApp(const manual());

}

class manual extends StatelessWidget {
  const manual({super.key});
  

  @override
 Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

      appBar: AppBar(

        title: Text('Manual'), leading:IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)
            ),
           
          
          
         
          backgroundColor: const Color.fromRGBO(17, 114, 120, 1),

      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(16.0),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
         Text(

              'Introdução',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(height: 16),
              Text( 
                'Pescar é uma atividade relaxante e emocionante que pode ser praticada em diversos ambientes, como rios, lagos, mares e represas. Este manual oferece uma visão geral das técnicas, equipamentos e dicas essenciais para começar a pescar.',

                style: TextStyle(fontSize: 16),

              ),

              SizedBox(height: 32),

              Text(

                'Equipamentos Básicos',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),

              SizedBox(height: 16),

              _buildListItem('Varas de Pesca:', 'Escolha a vara adequada para o tipo de pesca que deseja praticar (spinning, casting, fly, etc.).'),

              _buildListItem('Molinete/Carretilha:', 'Equipamento usado para lançar e recolher a linha. Molinetes são mais fáceis para iniciantes, enquanto carretilhas oferecem mais controle para pescadores experientes.'),

              _buildListItem('Linhas:', 'Selecione a linha com resistência adequada para o tipo de peixe que pretende capturar. Linhas monofilamento são versáteis, enquanto linhas de fluorocarbono são quase invisíveis na água.'),

              _buildListItem('Anzóis:', 'Disponíveis em diversos tamanhos e formatos. Escolha o tamanho certo para o peixe alvo.'),

              _buildListItem('Iscas:', 'Podem ser naturais (minhocas, insetos) ou artificiais (plugs, spinners). A escolha depende do tipo de peixe e do ambiente.'),

              SizedBox(height: 32),

              Text(

                'Tipos de Pesca',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),

              SizedBox(height: 16),

              _buildListItem('Pesca com Isca Artificial:', 'Usar iscas que imitam presas naturais dos peixes. Requer técnicas específicas de lançamento e recolhimento.'),

              _buildListItem('Pesca com Isca Natural:', 'Utiliza iscas vivas ou mortas. É ideal para iniciantes, pois é mais simples e eficaz.'),

              _buildListItem('Pesca de Fly:', 'Técnica especializada que utiliza uma linha pesada e uma isca leve (mosca). É ideal para rios e lagos.'),

              SizedBox(height: 32),

              Text(

                'Técnicas de Lançamento',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),

              SizedBox(height: 16),

              _buildListItem('Lançamento com Molinete:', 'Abra o arco do molinete, segure a linha com o dedo indicador, lance a vara para trás e depois para frente, liberando a linha no movimento para frente.'),

              _buildListItem('Lançamento com Carretilha:', 'Pressione o botão da carretilha, segure o carretel com o polegar, lance a vara para trás e depois para frente, liberando o carretel no movimento para frente.'),

              SizedBox(height: 32),

              Text(

                'Dicas de Sucesso',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),

              SizedBox(height: 16),

              _buildListItem('Escolha do Local:', 'Pesquise locais onde há maior concentração de peixes. Observe a presença de vegetação subaquática, pedras e outros abrigos naturais.'),

              _buildListItem('Horário de Pesca:', 'Pesque no início da manhã ou no fim da tarde, quando os peixes estão mais ativos.'),

              _buildListItem('Clima e Marés:', 'Esteja atento às condições climáticas e às marés, pois elas influenciam o comportamento dos peixes.'),

              _buildListItem('Silêncio e Discrição:', 'Mantenha-se silencioso e evite movimentos bruscos para não assustar os peixes.'),

              SizedBox(height: 32),
              Text(

                'Segurança e Regulamentação',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),

              SizedBox(height: 16),

              _buildListItem('Equipamento de Segurança:', 'Use coletes salva-vidas se estiver pescando em barcos. Tenha uma caixa de primeiros socorros à mão.'),

              _buildListItem('Regulamentação Local:', 'Respeite as leis de pesca da região, incluindo limites de tamanho e quantidade de peixes permitidos. Obtenha as licenças necessárias.'),

              _buildListItem('Sustentabilidade:', 'Pratique a pesca sustentável, capturando apenas o que vai consumir e liberando peixes menores ou espécies em risco.'),

              SizedBox(height: 32),
              Text(

                'Manutenção do Equipamento',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),
              SizedBox(height: 16),

              _buildListItem('Limpeza e Armazenamento:', 'Lave os equipamentos com água doce após cada uso, especialmente se pescou em água salgada. Armazene varas e molinetes em locais secos e protegidos.'),

              _buildListItem('Inspeção Regular:', 'Verifique regularmente linhas, anzóis e iscas para garantir que estão em boas condições. Substitua itens desgastados.'),

              SizedBox(height: 32),

              Text(
                'Conclusão',

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),
              ),

              SizedBox(height: 16),

              Text(
                'Pescar é uma atividade que pode proporcionar momentos de tranquilidade e emoção. Com o equipamento certo, técnicas adequadas e respeito à natureza, você estará pronto para aproveitar tudo o que a pesca tem a oferecer.\n\nBoa pesca!',

                style: TextStyle(fontSize: 16),

              ),

            ],

          ),

        ),

      ),  ));

  }


  Widget _buildListItem(String title, String description) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 8),

        Text(
          description,
             style: TextStyle(fontSize: 16),

        ),

        SizedBox(height: 16),

      ],

    );

  }

}  

