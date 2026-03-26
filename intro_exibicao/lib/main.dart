// tela para estudo dos widgets de exibição
//  text, image, icon entre outros

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    //router =>rotas de navegação
    //home =>pagina inicial 
    home: MyApp(),
    //themeApp =>(Claro/escuro)
  )); //Diogo gosta de colocar o MaterialApp no void main
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

//etsrutura da tela 
  // estrutura da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold(//sempre começa por ele, elemento principal da tela
    //appbar, drawer, bnBar, body, fabutton, snakebar
      appBar: AppBar(title: Text("Exemplos de Widget de Exibição")),

      //adicionar um elemento de Scroll

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          //Widget de Text
          //adicionar um container
        
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Explorando o Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                //dentro da column
                //adicionar uma image
                Image.network(
                  //Link URL da Imagm
                  "https://images.unsplash.com/photo-1773566718935-034f3b57149e",
                  height: 600,
                  fit: BoxFit.contain,),
                //adicionar imagem local
                Image.asset("assets/img/Paisagem.jpg",
                  height: 250,
                  fit: BoxFit.cover,)
                    
              ],
            ),
          ),
        ),
      ),

    );
  }

}
