import 'package:contador/controllers/imagen_zoom_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagenZoomPage extends StatelessWidget{
  ImagenZoomPage({Key? key}) : super(key: key);
    final imagenZoomController = Get.find<ImagenZoomController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manipular Imagen'),
      ),
      body: Container(
        child: Center(
          child: Obx(()=>
          CircleAvatar(
          radius: imagenZoomController.escala.value,
          backgroundImage: const NetworkImage(
            'https://i0.wp.com/noescinetodoloquereluce.com/wp-content/uploads/2014/04/puss-in-boots.jpg?resize=800%2C445&ssl=1'
          ),
        ),)
        ) 
      ),
      floatingActionButton : Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          splashColor: Colors.cyan,
          tooltip: 'Acercar',
          child: const Icon(Icons.zoom_in),
          backgroundColor: Colors.yellow,
          onPressed: () => imagenZoomController.acercar(),
        ),
      FloatingActionButton(
          splashColor: Colors.cyan,
          tooltip: 'Alejar',
          child: const Icon(Icons.zoom_out),
          backgroundColor: Colors.yellow,
          onPressed: () => imagenZoomController.alejar(),
        )
      ]
      )
    );
  }
}
