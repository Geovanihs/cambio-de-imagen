import 'package:get/get.dart';

class CambioImagenController2 extends GetxController {
  int indexUrlImg = 0;
  List<String> urlImgs = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUDCIqUOBzvKzd-j6EqpcslaIJxwisqrr3Ug&usqp=CAU',
    'https://images.squarespace-cdn.com/content/v1/58533b8eebbd1abde9c34374/1490038461823-85N8SSAN9J35NAE5EHJ1/top_wave_02.jpg?format=2500w',
    'https://i.kym-cdn.com/photos/images/original/001/468/202/b02.jpg'
    
  ];

  void cambioImgLeft() {
    if (indexUrlImg == 0) {
      indexUrlImg =2;
    } else {
      indexUrlImg--;
    }
    update();
  }

  void cambioImgRight() {
    if (indexUrlImg == 2) {
      indexUrlImg = 0;
    } else {
      indexUrlImg++;
    }
    update();
  }
}
