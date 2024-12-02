class Usuario {
  
  String? nombre;
  int edad;
  List<String> profesiones;

  Usuario({ 
    this.nombre,
    required this.edad, 
    this.profesiones = const [],
  })
  : assert( nombre != null);

}