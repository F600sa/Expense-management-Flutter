import 'package:get/get.dart';

import 'home_controller.dart';


class HomeBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<Home_Controller>(Home_Controller(),tag:"home_data",permanent: true);

  }

}