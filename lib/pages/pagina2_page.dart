import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {
  
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {

    // final usuarioCubit = context.read<UsuarioCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
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
                  profesiones: [
                    'FullStack Developer',
                    'Videojugador Veterano'
                  ]
                );

                // usuarioCubit.seleccionarUsuario(newUser);
              },
              child: const Text('Establecer Usuario', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                // usuarioCubit.cambiarEdad(30);
              },
              child: const Text('Cambiar Edad', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                // usuarioCubit.agregarProfesion();
              },
              child: const Text('Añadir Profesion', style: TextStyle( color: Colors.white ) )
            ),

          ],
        )
     ),
   );
  }
}