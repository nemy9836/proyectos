
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

    title: 'Probando',

    home: MyButton(),

  ));

}


class MyButton extends StatefulWidget{

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _lights = false;
  String _ec = 'encendido';
  String _ap = 'apagado';

  @override
  Widget build(BuildContext context){

    return Container(
      alignment: FractionalOffset.center,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.lightbulb_outline,
              color: _lights ? Colors.yellow.shade600: Colors.black,
              size: 80,
            ),
          ),
          GestureDetector(
            onTap: () {

              setState(() {

                if (_lights == true) {
                  _lights = false;
                  
                } else {
                  _lights = true;
                  
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(

               borderRadius: BorderRadius.circular(15.0),

               color: Colors.blue,

              ),
              //color: Colors.yellow.shade600,
              padding: const EdgeInsets.all(8),
              child: Text(_lights == true? _ec: _ap, style: TextStyle(fontSize: 35.0, color: Colors.greenAccent, decoration: TextDecoration.none),),
            ),
          ),
        ],
      ),
    );

  }
}