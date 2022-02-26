import 'package:contador/controllers/cambio_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPages extends StatelessWidget {
  const CambioImagenPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de imagen'),
      ),
      body: Center(child: GetBuilder<CambioImagenController>(builder: (_) {
        return GestureDetector(
          onTap: () {
            _.cambioImg();
          },
          child: CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(_.urlImg),
          ),
        );
      })),
    );
  }
}