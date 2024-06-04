import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart';

class AppController extends GetxController {
  void loginApi(
      String emailC, String passC) async {
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': emailC,
            'password': passC});
      var data = jsonDecode(response.body);
      print(data);

      if (response.statusCode == 200) {
        Get.snackbar('login', 'success');
      } else {
        Get.snackbar('login', 'fail');
      }
    } catch (e) {
      Get.snackbar('login', 'fail');
    }
  }
}
