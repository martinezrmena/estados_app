import 'package:flutter/material.dart';

import 'package:estados_app/models/usuario.dart';
// import 'package:estados_app/services/usuario_service.dart';

class Pagina1Page extends StatelessWidget {
  
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      // body: StreamBuilder(
      //   // stream: usuarioService.usuarioStream,
      //   builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
          
      //     return snapshot.hasData
      //       ? InformacionUsuario( snapshot.data )
      //       : const Center(child: Text( 'No hay información del usuario' ) );

      //   },
      // ),

     floatingActionButton: FloatingActionButton(
       child: const Icon( Icons.accessibility_new ),
       onPressed: () => Navigator.pushNamed(context, 'pagina2')
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario? usuario;

  const InformacionUsuario( this.usuario, {super.key} );


  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          const Divider(),

          ListTile( title: Text('Nombre: ${ usuario?.nombre }') ),
          ListTile( title: Text('Edad: ${ usuario?.edad }') ),

          const Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          const Divider(),

          const ListTile( title: Text('Profesion 1') ),
          const ListTile( title: Text('Profesion 1') ),
          const ListTile( title: Text('Profesion 1') ),

        ],
      ),
    );
  }

}