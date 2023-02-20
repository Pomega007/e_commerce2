import 'package:flutter/material.dart';

InputDecoration CustomTextWidget(String labelText) {
  return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.black,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff03d399)),
      ));
}

InputDecoration CustomTextFieldWidget(String text) {
  return InputDecoration(
    prefix: Text(text),
  );
}

TextStyle ButtonText() {
  return TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
}

TextStyle LightThemeText() {
  return TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}

TextStyle DarkThemeText() {
  return TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
}

TextStyle EmailTextTile() {
  return TextStyle(
    color: Colors.white.withOpacity(0.5),
    fontSize: 12,
  );
}

TextStyle TextTile() {
  return TextStyle(
      color: Color(0xff03d399), fontSize: 48, fontWeight: FontWeight.bold);
}

TextStyle TextTileHome() {
  return TextStyle(
      color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold);
}

TextStyle TextTileProduct() {
  return TextStyle(
      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
}

TextStyle TextTileProductPrice() {
  return TextStyle(
      color: Color(0xff03d399), fontSize: 24, fontWeight: FontWeight.bold);
}

TextStyle TextButton() {
  return TextStyle(
    color: Color(0xff03d399),
    fontSize: 16,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );
}

TextStyle TextButtonList() {
  return TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
