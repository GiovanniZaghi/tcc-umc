import 'package:flutter/material.dart';
import 'package:todolist/app/helpers/menuPessoa.dart';
import 'package:todolist/app/helpers/nav.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      drawer: MenuPessoa(),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          backgroundColor: Colors.black,
          onPressed: (){
            _CriarTarefa();
          }),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[

        ],
      ),
    );
  }

   _CriarTarefa() {
    return AlertDialog(
      title: Text("tarefa" == null ? 'Nova tarefa' : 'Editar tarefas'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
             // controller: _titleController,
              decoration: InputDecoration(labelText: 'Título'),
              autofocus: true),
          TextField(
              //controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Descrição')),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancelar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Salvar'),
          onPressed: () {

          },
        ),
      ],
    );
  }
}


