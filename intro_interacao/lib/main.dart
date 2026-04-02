//Uso de Elementos de Interação ( TextField, ElevatedButton, CheckBox, Slider)

import 'package:flutter/material.dart';
import 'package:intro_interacao/pages/contato_page.dart';
import 'package:intro_interacao/pages/form_page.dart';
import 'package:intro_interacao/pages/home_page.dart';

void main(List<String>args){
  runApp(MaterialApp(
    //sistema de rotas para navegação entre telas
    //home(Tela Inicial), Form: (tela com Formulário), Contato(Formulário de contato)
    routes: {
      "/":(context) => HomePage(),
      "/form":(context) => FormPage(),
      "/contato":(context) => ContatoPage(),
    },
    //direcionar para o app quando iniciar para home
    initialRoute: "/",

  ));
}

//página main finalizada
