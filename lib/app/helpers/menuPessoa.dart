import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todolist/app/helpers/nav.dart';
import 'package:todolist/app/views/alterarDados.dart';
import 'package:todolist/generated/i18n.dart';

class MenuPessoa extends StatefulWidget {
  @override
  _MenuPessoaState createState() => _MenuPessoaState();
}

class _MenuPessoaState extends State<MenuPessoa> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: _listMenu(),
      ),
    );
  }

  Widget _avatar(context, person) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Color.fromRGBO(41, 202, 168, 3),
      ),
      accountName: Text("Giovanni Freitas"),
      accountEmail: Text("vanni.freitas@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
            ? Colors.blueAccent
            : Colors.white,
        child: Text(
          person.name.substring(0,1) + " " + person.last_name.substring(0,1),
          style: TextStyle(fontSize: 30.0, color: Color.fromRGBO(41, 202, 168, 3),),
        ),
      ),
    );
  }

  _listMenu() {
    return ListView(
      children: <Widget>[
        Divider(color: Colors.white,), // adiciona o avatar
        ListTile(
            leading: Icon(Icons.home, color: Colors.white,),
            title: Text(S.of(context).menuPessoa_Inicio, style: TextStyle(color: Colors.white),),
            subtitle: Text(S.of(context).menuPessoa_desInicio, style: TextStyle(color: Colors.white),),
            onTap: () {
            }),
        ListTile(
            leading: Icon(Icons.account_circle, color: Colors.white,),
            title: Text(S.of(context).menuPessoa_alterarDados, style: TextStyle(color: Colors.white),),
            subtitle: Text(S.of(context).menuPessoa_descAlterarDados, style: TextStyle(color: Colors.white),),
            onTap: () {
              push(context, AlterarDados());
            }),

        Divider(color: Colors.white,),
        ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.white,),
            title: Text("Fechar", style: TextStyle(color: Colors.white),),
            subtitle: Text("Fechar Aplicativo", style: TextStyle(color: Colors.white),),
            onTap: () {
              SystemNavigator.pop();
            }),
      ],
    );
  }
}
