import 'package:get/get.dart';

class ImagenZoomController extends GetxController{
  var escala = 100.0.obs;
  var opacidad = 1.0;

  void acercar(){
    escala.value = escala.value + 10;
  }
  void alejar(){
    escala.value = escala.value - 10;
  }
  void aumentar() {
    opacidad += 0.8;
    update();

  }
  void disminuir(){
    opacidad -= 0.2;
    update();

  }
  void restablecer(){

  }

}