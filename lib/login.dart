import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:getx/utils/toast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  DatabaseReference ref = FirebaseDatabase.instance.ref("user");
  bool wait = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Login Screen",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: hight * 0.1, horizontal: width * 0.2),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: "Enter your Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: hight * 0.05,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: hight * 0.05,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: hight * 0.05,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black)),
                onPressed: wait == true
                    ? null
                    : () {
                        loginUser(nameController.text, emailController.text,
                            passwordController.text);
                      },
                child: wait == true
                    ? const Center(
                        child: CircularProgressIndicator(
                        color: Colors.orange,
                      ))
                    : const Text(
                        "Signup",
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ))
          ],
        ),
      ),
    );
  }

  void loginUser(String name, String emailText, String passwordText) async {
    setState(() {
      wait = true;
    });

    await _auth
        .createUserWithEmailAndPassword(
            email: emailText, password: passwordText)
        .then(
      (value) async {
        setState(() {
          wait = false;
        });
        await ref
            .child(DateTime.now().microsecondsSinceEpoch.toString())
            .set({'name': name, 'emai;': emailText});

        FlutterToost().showToast("User created successfully");
      },
    ).onError(
      (error, stackTrace) {
        setState(() {
          wait = false;
        });
        FlutterToost().showToast(error.toString());
      },
    );
  }
}
