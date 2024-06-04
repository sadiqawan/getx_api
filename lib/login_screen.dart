import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AppController appController = Get.put(AppController());
  final emailC = TextEditingController();
  final passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailC,
            decoration: InputDecoration(
              hintText: 'email',
            ),
          ),
          TextField(
            controller: passC,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          ElevatedButton(onPressed: (){
            final email = emailC.text.trim();
            final pass = passC.text.trim();

            appController.loginApi(email, pass);

          }, child: Text('Login'))
        ],
      ),
    );
  }
}
