import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  var isAuthenticated = false.obs;

  void login(String email, String password) async {
    var response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      body: {'email': email, 'password': password},
    );
    if (response.statusCode == 200) {
      isAuthenticated.value = true;
      Get.toNamed('/home');
    }
  }

  void signup(String name, String email, String phone, String password) async {
    var response = await http.post(
      Uri.parse('https://reqres.in/api/register'),
      body: {'email': email, 'password': password},
    );
    if (response.statusCode == 200) {
      isAuthenticated.value = true;
      Get.toNamed('/home');
    }
  }
}
