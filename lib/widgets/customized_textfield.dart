import 'package:flutter/material.dart';

class CustomizedTextfield extends StatelessWidget {

  final TextEditingController myController;
  final String hintText;
  final bool isPassword;
  const CustomizedTextfield(
    {Key key, this.myController, this.hintText, this.isPassword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        keyboardType: isPassword? TextInputType.visiblePassword 
        : TextInputType.emailAddress,
        enableSuggestions: isPassword? false: true,
        autocorrect: isPassword ? false: true,
        obscureText: isPassword??true,
        controller: myController,
        decoration: InputDecoration(
          suffixIcon: isPassword ? IconButton(
            icon: Icon(Icons.remove_red_eye, color: Colors.grey,),
            onPressed: () {},
          ): null,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 228, 225, 255), width: 1),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 228, 225, 255), width: 1),
            borderRadius: BorderRadius.circular(10)
          ),
          fillColor: Color.fromARGB(255, 228, 225, 255),
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}