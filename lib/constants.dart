import 'package:flutter/material.dart';

const kHeadingText = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

const kTextSub = TextStyle(
  fontSize: 20,
);

const kWelcomeText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 40,
  color: Color(0xff0C2822),
);

const kVantText = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Color(0xff21D0C3),
);

const kTextFieldDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  hintText: "Enter a value",
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff3BC6AA), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff3BC6AA), width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0))),
);
