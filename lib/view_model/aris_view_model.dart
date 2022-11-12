import 'package:get/state_manager.dart';

class ArisViewModel extends GetxController {
  RxBool isLoaing = false.obs;
  @override
  void onInit() {
    super.onInit();
    getArisData();
  }

  Future<void> getArisData() async {
    isLoaing(true);
    await Future.delayed(const Duration(seconds: 3));
    isLoaing(false);
  }
}
