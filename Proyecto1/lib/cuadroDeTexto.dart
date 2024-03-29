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
    return Scaffold(
          appBar: AppBar(
            title: Text("Login"),
          ),
      body:PageView(
        children: [
        Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child:/// CAMPO DE TEXTO 1
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(85))
                    ),
                    icon: Icon(Icons.perm_contact_cal_rounded),
                    labelText: 'Ingresa tu usuario'

                ),
              ),
              padding:const EdgeInsets.fromLTRB(80, 50, 80, 25) ,
            ),
            /// CAMPO DE TEXTO 2
            Container(
              child:
              TextFormField(
                obscureText: true,
                textAlign: TextAlign.center,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese su contraseña';
                  }else{
                    /// Almacena el valor una vez que valida que se ingreso un dato
                    ControlAlmacenamiento.prefs.setString('Password', value);
                  }
                },
                /// Decoracion
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(85))),
                    icon: Icon(Icons.lock),
                    labelText: 'Contraseña'
                ),
              ),
              padding:const EdgeInsets.fromLTRB(80, 0, 80, 0) ,
            ),
            /// MENSAJE DE ENVIO Y BOTON DE ENVIAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 25),
              child: ElevatedButton(
                onPressed: () {
                  /// devolverá true si el formulario es válido, o falso si
                  /// el formulario no es válido.
                  if (_formKey.currentState!.validate()) {

                    /// Mostrara una barra en la parte inferior si el formulario es valido
                    String? password = ControlAlmacenamiento.prefs.getString('Password');
                    if (password == '1234') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Inicio de sesion correcto')));

                      // Las credenciales son válidas, realizar acción
                    } else {
                      // Las credenciales son inválidas, mostrar mensaje de error
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('contraseña incorrecta')));
                    }

                  }
                },
                child: Text('Enviar'),
              ),
            ),

          ],
        ),

      ),
        ],
      ),
    );


  }
}





