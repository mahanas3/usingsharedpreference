import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project14/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

final email = TextEditingController();

final password1 = TextEditingController();

final password2 = TextEditingController();

class _RegisterState extends State<Register> {
  register() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {});
    register();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: password1,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                labelText: 'Password',
                hintText: 'Enter your Password',
                hintStyle: TextStyle(color: Colors.black)),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: password2,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                labelText: 'Password',
                hintText: 'Confirm your Password',
                hintStyle: TextStyle(color: Colors.black)),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            width: 150,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87
            ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
