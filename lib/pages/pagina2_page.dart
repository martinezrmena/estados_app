import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:estados_app/services/usuario_service.dart';


class Pagina2Page extends StatelessWidget {
  
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
          ? Text('Nombre: ${ usuarioService.usuario!.nombre }')
          : const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                final newUser = Usuario(
                  nombre: 'Fernando Herrera', 
                  edad: 34,
                  profesiones: ['Fullstack Developer', 'Video Jugador Experto']
                );
                usuarioService.usuario = newUser;
              },
              child: const Text('Establecer Usuario', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioService.cambiarEdad(45);
              },
              child: const Text('Cambiar Edad', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioService.agregarProfesion();
              },
              child: const Text('Añadir Profesion', style: TextStyle( color: Colors.white ) )
            ),

          ],
        )
     ),
   );
  }
}