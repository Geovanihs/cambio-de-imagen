import 'package:get/get.dart';

class CambioImagenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    cambioImg();
  }

  int indexUrlImg = 0;
  String urlImg = '';

  void cambioImg() {
    if (indexUrlImg == 0) {
      urlImg =
          'https://peru21.pe/resizer/PLTVehOy5lgBetglG3ut4BnFaA0=/1200x900/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/RPYN3Z5HKREFJFOXX4VFZJXG7E.jpg';
      indexUrlImg ++;
    } else {
      urlImg =
          'https://truyen3s.com/cover/images/1daca0c9ddba0017faf394403b2cda33f26edcd2/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f385841484d4b3842625a5a744d413d3d2d3833363834363134382e313566316435623631363263323939663135383134373132353930342e6a7067';
      indexUrlImg --;
    }

    update();
  }
}