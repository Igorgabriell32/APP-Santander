import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool controle = false.obs;
  RxBool controleonend = false.obs;
  RxDouble tamanhoCard = 60.00.obs;

  bool MostraSaldo(value) {
    controle.value = !value;
    if (value == false) {
      tamanhoCard.value = tamanhoCard.value + 60;
      print('if: $tamanhoCard.value');
    } else {
      tamanhoCard.value = tamanhoCard.value - 60;

      print('else: $tamanhoCard.value');
    }
    return controle.value;
  }

  void Onend() {
    controleonend.value == false
        ? controleonend.value == true
        : controleonend.value = true;
  }
}
