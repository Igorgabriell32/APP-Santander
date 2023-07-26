import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool controle = false.obs;

  bool MostraSaldo(value) {
    controle.value = !value;
    return controle.value;
  }
}
