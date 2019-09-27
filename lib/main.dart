import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todolist/app/views/login.dart';
import 'package:todolist/generated/i18n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do List - UMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

    );
  }
}




