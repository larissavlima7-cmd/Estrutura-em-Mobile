import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp()
    ));
}

// importando as característcas da página stateful
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  
  
  //metodo para identificar as mudanças de estado e chamar a reconstrução da janela
  @override
  State<MyApp> createState() =>_MyAppState();
  //arrow function
}

//classe para a construção da lógica e da estrutura da janela
class _MyAppState extends State<MyApp>{
  //a classe normal da aplicação
  //atributos
  int contador = 0;

  //metodo build da tela (metodo obrigatório)
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativo com Stateful - Contador")),
      //body //container para espaçamento interno
      body: Padding(
        padding: EdgeInsets.all(8), //espaçamento de 8 em todas as bordas
        //container para Centralizar os elementos no meio da tela (Esquerda e Direita)
        child: Center(
          //Column => permite adicionar mais que um elemento
          child: Column(
            //Centraliza os elementos no eixo principal da Collumn (Y)
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nº de Click: $contador", style: TextStyle(fontSize: 20)),
              //adicionar um botão => toda vez que for pressionado vai criar uma ação (uma mudança de estado)
              ElevatedButton(
                onPressed: (){
                  //adicionar mudança de estado (setState)
                  setState(() {
                    //colocar uma modificação na tela
                    contador++; //adiciona 1 ao ocntador
                  });
                },
                child: Text("Adicionar +1"),
                )
            ],
          ),
        ),
      ),
    );
  }
}