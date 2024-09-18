import 'package:flutter/material.dart';

Widget textButton ({


  required String text,
  required void Function() function,
}
    ){
  return TextButton(
    onPressed: function,
    style:  ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepOrangeAccent)
    ),
    child:  Text(
      text ,
      style: const TextStyle(
          color: Colors.black
      ),
    ),

  );
}