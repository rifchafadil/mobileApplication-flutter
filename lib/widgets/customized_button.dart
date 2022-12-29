import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  const CustomizedButton({Key key, this.buttonText, this.buttonColor, this.onPressed, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                ),
              ),
            ),
        ),
      ),
    );
  }
}