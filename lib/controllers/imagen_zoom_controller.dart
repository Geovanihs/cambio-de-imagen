import 'package:get/get.dart';

class ImagenZoomController extends GetxController{
  var escala = 100.0.obs;

  void acercar(){
    escala.value = escala.value + 10;
  }
  void alejar(){
    escala.value = escala.value - 10;
  }

}