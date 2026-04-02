//página de formulário
//tela com elementos de formulário para interação do usuário
//textField
//checkBox
//radio button
//slider//barra de seleção
//switch => botão de alternância
//dropdown => menu suspenso

//form => ajuda na validação de dados

import 'package:flutter/material.dart';

//chama as mudanças de estado
class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}
//lógica de construção da tela
class _FormPageState extends State<FormPage> {
  //atributos
  String _nome = "";
  String _email = "";
  String _senha = "";
  String _confirmarSenha = "";
  bool _aceitarTermos = false; //Switch dos termos
  String _sexo ="Feminino"; //radio (feminino)
  double _idade = 18; //slider -> posição 18
  List<String> _interesses = [];
  String _cidade = "Americana"; //matém americana como cidade padrão
  
  //esconder senha
  bool _obscureSenha = true;

  //chave global de validação do formulário
  final formKey = GlobalKey<FormState>(); //formulário somente será enviado se a chave estiver validada


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulário de Cadastro"),),
      body: Padding(
        padding: EdgeInsets.all(8),
        //adicionar elemento e fazer a verificação
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //campo de texto para o nome
                TextFormField(
                  //permite validação do campo
                  decoration: InputDecoration(labelText: "Digite seu nome...", border: OutlineInputBorder()),
                  onChanged: (value) => setState(() {_nome = value;}),
                  validator: (value) => value!.isEmpty ? "Campo Obrigatório": null,
                ),
                //campo email
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(labelText: "Digite seu Email...", border:OutlineInputBorder()),
                  onChanged: (value) => setState(() {_email=value;}),
                  validator: (value) => value!.contains("@") ? null : "Email Inválido",
                ),
                //campo senha
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(labelText: "Digite sua senha...",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(onPressed: () => setState(() {_obscureSenha = !_obscureSenha; //inverter o valor paraa booleana
                  }), icon: Icon(_obscureSenha ? Icons.visibility : Icons.visibility_off))),
                  onChanged: (value) => setState(() {_senha= value;}),
                  validator: (value) => value!.length <=6 ? "Senha deve ser maior que 6 caracteres": null,
                  obscureText: _obscureSenha, //esconde a senha
                  //icone para mostrar ou esconder a senha
                  
                ),
                //campo confirmar senha
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(labelText: "Confirme sua senha...", border:OutlineInputBorder(),
                   suffixIcon: IconButton(onPressed: 
                    () => setState(() {
                    _obscureSenha = !_obscureSenha;}), icon: Icon(
                      _obscureSenha ? Icons.visibility : Icons.visibility_off,))),
                  onChanged: (value) => setState(() {_confirmarSenha = value;}),
                  validator: (value) => value! !=_senha ? "As duas senhas devem ser iguais":null,
                  obscureText: _obscureSenha,

                ),
              ],
            ),
          )),),
    );
  }
}