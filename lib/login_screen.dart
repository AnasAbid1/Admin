import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHide = true;

  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userPhone = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    userName.dispose();
    userEmail.dispose();
    userPass.dispose();
    userPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text("Login Screen"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: userEmail,
                decoration: InputDecoration(
                    label : Text("Enter Your Email"),
                       hintText : "joh@gmail.com",
                error : ErrorWidget("Email is Required"),
                    icon : Icon(Icons.email),
              ),
                ),
              TextFormField(
                controller: userEmail,
                decoration: InputDecoration(
                    label : Text("Enter Your Password"),
                    error : ErrorWidget("Password is Required"),
                    icon : Icon(Icons.email),

              ),
              ),
              OutlinedButton(onPressed: () {
                if (formKey.currentState!.validate()) {
                  debugPrint(userEmail.text);
                  debugPrint(userPass.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("User LoggedIn as: ${userEmail.text}"),
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        backgroundColor: Colors.green,

                      ));
                  userEmail.clear();
                  userPass.clear();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyHome(),));
                }
              }, child: const Text("Login"))
            ],
          ),
        ));
  }
}