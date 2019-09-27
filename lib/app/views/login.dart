import 'package:flutter/material.dart';
import 'package:todolist/app/helpers/buttonApp2Park.dart';
import 'package:todolist/app/helpers/nav.dart';
import 'package:todolist/app/helpers/textFormValidate.dart';
import 'package:todolist/app/views/home.dart';
import 'package:todolist/generated/i18n.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
        backgroundColor: Colors.black87,

      ),

      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: Form(

        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              height: 150,
              child: Text(S.of(context).Login_title, style: TextStyle(fontSize: 24, color: Colors.white),),

            ),
            Container(
              height: 20,
            ),
            TextFormValidate(
              fieldIcon: Icon(Icons.person),
              label: S.of(context).Login_Email,
            ),
            Container(
              height: 20,
            ),
            TextFormValidate(
              fieldIcon: Icon(Icons.vpn_key),
              label: S.of(context).Login_senha,
            ),
            Container(
              height: 50,
            ),
            ButtonApp2Park(
              color: Colors.black,
              text: S.of(context).Login_logar,
              onPressed: (){
                pushReplacement(context, Home());
              },
              backgroundColor: Colors.black87,
            ),
            Container(
              height: 50,
            ),
            InkWell(
              child: Text(S.of(context).Login_Cadastrar, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold, ),),
              onTap: (){},

            ),
          ],
        ),
      ),
    );
  }
}
