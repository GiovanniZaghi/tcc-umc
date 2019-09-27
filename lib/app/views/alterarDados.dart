
import 'package:flutter/material.dart';
import 'package:todolist/app/helpers/buttonApp2Park.dart';
import 'package:todolist/app/helpers/textFormValidate.dart';
import 'package:todolist/generated/i18n.dart';

class AlterarDados extends StatefulWidget {
  @override
  _AlterarDadosState createState() => _AlterarDadosState();
}

class _AlterarDadosState extends State<AlterarDados> {
  final _formKey = GlobalKey<FormState>();
  final _email = new TextEditingController();
  final _senha = new TextEditingController();
  final _tel = new TextEditingController();
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alterar Dados",
        ),
        backgroundColor: Colors.black,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: Container(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            children: <Widget>[
              TextFormValidate(
                controller: _email,
                label: S.of(context).alterarDados_Email,
                place: S.of(context).alterarDados_PlaceHolder_Email,
                fieldIcon: Icon(Icons.email),
                keyboardtype: TextInputType.text,
                obscure: false,
              ),
              Container(height: 10,),
              TextFormValidate(
                controller: _senha,
                label: S.of(context).alterarDados_Senha,
                place: S.of(context).alterarDados_PlaceHolder_Senha,
                fieldIcon: Icon(Icons.security),
                obscure: true,
                keyboardtype: TextInputType.text,
              ),
              Container(height: 10,),
              TextFormValidate(
                controller: _tel,
                label: S.of(context).alterarDados_Telefone,
                place: S.of(context).alterarDados_PlaceHolder_Telefone,

                fieldIcon: Icon(Icons.call),
                keyboardtype: TextInputType.number,
                obscure: false,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: ButtonApp2Park(
                    text: S.of(context).alterarDados_AlterarDados,
                    onPressed: (){

                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
