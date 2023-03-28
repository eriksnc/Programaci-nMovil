import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:proyecto1/Control_Almacenamiento.dart';

var texto1 = "";
var texto2 = "";

class cuadroDeTexto extends StatefulWidget {

  const cuadroDeTexto({Key? key}) : super(key: key);
  @override
  _cuadrotextoState createState() => _cuadrotextoState();

}

class _cuadrotextoState extends State<cuadroDeTexto>{

  final _formKey = GlobalKey<FormState>();
  late FocusNode myFocusNode;


  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Limpia el nodo focus cuando se haga dispose al formulario
    myFocusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // Crea un widget Form usando el _formKey que creamos anteriormente
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
                /// Almacena el valor una vez que valida que se ingreso un dato
                ControlAlmacenamiento.prefs.setString('Nombre', value);
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
                /// Almacena el valor una vez que valida que se ingreso un dato
                ControlAlmacenamiento.prefs.setString('Carrera', value);
              }
            },
            /// Decoracion
            decoration: InputDecoration(
                icon: Icon(Icons.work),
                labelText: 'Ingresa tu carrera'
            ),
          ),

          /// MENSAJE DE ENVIO Y BOTON DE ENVIAR
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 25),
            child: RaisedButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                /// devolverá true si el formulario es válido, o falso si
                /// el formulario no es válido.
                if (_formKey.currentState!.validate()) {

                  /// Mostrara una barra en la parte inferior si el formulario es valido
                }
              },
              child: Text('Enviar'),
            ),
          ),

        ],
      ),
    );
  }
}





