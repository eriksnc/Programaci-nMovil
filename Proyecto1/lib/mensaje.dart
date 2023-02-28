import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:proyecto1/cuadroDeTexto.dart';

class mensaje extends StatefulWidget {

  const mensaje({Key? key}) : super(key: key);
  @override
  _mensajeState createState() => _mensajeState();

}

class _mensajeState extends State <mensaje>{
  String texto1 = "";
  String texto2 = '';
  final _formKey = GlobalKey<FormState>();
  late FocusNode myFocusNode;

  @override
  void dispose() {
    // Limpia el nodo focus cuando se haga dispose al formulario
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  callback(varFruit1,varFruit2) {
    setState(() {
      texto1 = varFruit1;
      texto2 = varFruit2;
    });
  }


  @override
  Widget build(BuildContext context){
    return Form(

      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          /// CAMPO DE TEXTO 1
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese el usuario';
              }else{
                texto1 = value;
              }
            },
            decoration: InputDecoration(
                icon: Icon(Icons.perm_contact_cal_rounded),
                labelText: 'Ingresa tu usuario'
            ),

          ),

          /// CAMPO DE TEXTO 2
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value!.isEmpty) {

                return 'Ingrese al area que pertenece';
              }else{

                texto2 = value;
              }
            },
            decoration: InputDecoration(
                icon: Icon(Icons.work),
                labelText: 'Ingresa tu carrera'
            ),
          ),


        ],
      ),
    );
  }

}

class FruitButton extends StatelessWidget{
  final String texto1,texto2;
  final Function callback;
  FruitButton({required this.texto1,required this.texto2, required this.callback});

  @override
  Widget build(BuildContext context){
    /// MENSAJE DE ENVIO Y BOTON DE ENVIAR
    return RaisedButton(

        color: Colors.blueAccent,
        textColor: Colors.white,
        onPressed: () {
          callback(texto1,texto2);
        },
        child: Text('Enviar'),
      );

  }
}