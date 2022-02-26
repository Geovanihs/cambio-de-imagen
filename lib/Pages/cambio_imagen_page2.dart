
import 'package:contador/controllers/cambio_imagen_controller2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPage2 extends StatelessWidget {
  const CambioImagenPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de imagen'),
      ),
      body: Center(
        child: GetBuilder<CambioImagenController2>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    _.cambioImgLeft();
                  },
                  icon: const Icon(Icons.arrow_back)),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(_.urlImgs[_.indexUrlImg]),
              ),
              IconButton(
                  onPressed: () {
                    _.cambioImgRight();
                  },
                  icon: const Icon(Icons.arrow_forward))
            ],
          );
        }),
      ),
    );
  }
}
