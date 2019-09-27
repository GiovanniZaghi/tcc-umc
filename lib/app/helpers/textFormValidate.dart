import 'package:flutter/material.dart';

class TextFormValidate extends StatelessWidget {
  final String label;
  final String place;
  final controller;
  final String msg;
  final bool obscure;
  final keyboardtype;
  Icon fieldIcon;
  final int lines;

  TextFormValidate({
    this.label = "Label",
    this.place = "PlaceHolder",
    this.controller,
    this.msg = "Erro",
    this.obscure = false,
    this.keyboardtype,
    this.fieldIcon,
    this.lines = 1
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          maxLines: lines,
          decoration: InputDecoration(
            hintText: label,
            icon: fieldIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,

              ),
            ),
          ),

          obscureText: obscure,
          controller: controller,
          validator: (value) {
            if (value.isEmpty) {
              return msg;
            }
            return null;
          },
        ),
      ),
    );
  }
}
