import 'package:flutter/material.dart';

class MaterialButtonWithPadding extends StatelessWidget {
  String? buttonName;
  VoidCallback? onPressedCallback;
  Color? buttonColor;

  MaterialButtonWithPadding(
      {this.buttonName, this.onPressedCallback, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: this.buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressedCallback,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonName.toString(),
          ),
        ),
      ),
    );
  }
}
//Navigator.pushNamed(context, goingtoScreen.toString());