import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto1/cuadroDeTexto.dart';
import 'package:proyecto1/prueba.dart';

//flutter: assets:'assets/images/Quede.png';

class inicio extends StatefulWidget {

  const inicio({Key? key}) : super(key: key);

  @override
  _inicio createState() => _inicio();
}

class _inicio extends State<inicio>{

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
                  'Pagina Inicial',
                  style: TextStyle(fontSize: 35)
                  ),
                Image.network
                  (
                  'https://th.bing.com/th/id/R.11b61ab967822761fe4e6665cb61273a?rik=t5eT5%2fiYMsBVqg&pid=ImgRaw&r=0',
                  scale: 4, height: 300,
                  ),
                ///Image.asset('assets/images/Quede.png'),
                cuadroDeTexto(),

              ],
             ),
          )
     );

  }
}
