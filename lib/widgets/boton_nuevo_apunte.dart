// lib/widgets/boton_nuevo_apunte.dart

import 'package:flutter/material.dart';
import '../screens/notas_form_screen.dart';

class BotonNuevoApunte extends StatelessWidget {
  final String materiaActual;

  BotonNuevoApunte({required this.materiaActual});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.create, color: Colors.white), 
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => NotasFormScreen(materiaActual: materiaActual),
        );
      },
    );
  }
}