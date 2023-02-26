import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



class prueba extends StatefulWidget {
  String text1,text2;
  prueba(this.text1,this.text2);
  @override
  _pruebaState createState() => _pruebaState();

}

class _pruebaState extends State<prueba>{

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
    return Scaffold
      (

      //backgroundColor: Colors.deepOrangeAccent,
        body: Center
          (
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              Text
                (
                //'Pagina Inicial\n Bienvenido\nUsuario: '+widget.text1+'\nCarrera: '+widget.text2,
                  'Pagina Inicial\nBienvenido\nUsuario:'+ widget.text1+'\nCarrera: '+widget.text2,
                  style: TextStyle(fontSize: 35)
              ),
              Image.network
                (
                'https://th.bing.com/th/id/R.11b61ab967822761fe4e6665cb61273a?rik=t5eT5%2fiYMsBVqg&pid=ImgRaw&r=0',
                scale: 4, height: 300,
              ),

            ],
          ),
        )
    );
  }
}