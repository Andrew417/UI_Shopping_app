import 'package:flutter/material.dart';

void pushwithReplacment(BuildContext context, Widget newPage) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => newPage),
  );
}

void pushTo(BuildContext context, Widget newPage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newPage));
}
