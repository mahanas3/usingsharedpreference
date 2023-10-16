import 'package:flutter/material.dart';
import 'package:flutter_project14/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controller = TextEditingController();
  final controller1 = TextEditingController();

  SharedPreferences? prefs;

  @override
  login() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    login();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF263238),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 80),
              child: Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )),
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  focusColor: Colors.white60,
                  fillColor: Colors.white60,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.white60)),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: const InputDecoration(
                  focusColor: Colors.white60,
                  fillColor: Colors.white60,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white60)),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'ForgotPassword?',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.black),
                    onPressed: () async {
                      await prefs?.setString('login', controller.text);

                      await prefs?.setString('login', controller1.text);

                      final String? action = prefs?.getString('login');

                      print(action);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
