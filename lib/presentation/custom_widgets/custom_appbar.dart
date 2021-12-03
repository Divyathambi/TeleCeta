import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  final String text; 

  @override
  final Size preferredSize; 

  CustomAppBar( 
  this.text, 
  {Key? key}) : preferredSize = const Size.fromHeight(60), 
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text( 
        text, 
        style: const TextStyle(
          fontFamily: "NunitoSemiBold", 
          color: Colors.white, 
          fontWeight: FontWeight.bold
        ),
      ), 
      flexibleSpace: Container( 
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
                Color.fromRGBO(3, 4, 94, 1), 
                Color.fromRGBO(0, 119, 182, 1),
            ],
            begin: Alignment.centerLeft, 
            end: Alignment.centerRight
          ),
        ),
      ),
    );
  }
}