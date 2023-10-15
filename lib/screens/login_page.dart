import 'package:flutter/material.dart';
import 'menu.dart';
import './doctors_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';

late User user;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isChecked = false;

  void signInUser(context) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: userNameController.text,
          password: passwordController.text
      );
      user = credential.user!;

      userNameController.text = '';
      passwordController.text = '';

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => isChecked ? DoctorsMenu() : Services()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

    debugPrint(user.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              decoration:BoxDecoration(
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 100),
                    child: Image.network('https://yt3.googleusercontent.com/ouvUnKXZTlHVl6TV9eqoiPI23A4201_57BjkL_f_mMVaGtEgmkDee5oyEAu8y7erUJf59uVr9W4=s900-c-k-c0x00ffffff-no-rj')
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: 'User Name'
                      ),
                      controller: userNameController,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: 'Password'
                      ),
                      controller: passwordController,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 250,),
                      Text('Forgot Password?',
                        style: TextStyle(
                          // decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            Checkbox(value: isChecked,
                            onChanged: (newBool){
                              setState(() {
                                isChecked = newBool!;
                              });
                            },),
                        Text('Login as A Doctor'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: ElevatedButton(onPressed: (){
                      signInUser(context);
                    },
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(120, 40)
                        ),
                        child: Text('Login')
                    ),
                  ),
                  SizedBox(height: 40,),
                  Text('Not a member yet?'),
                  SizedBox(height: 10,),
                  // GestureDetector(
                  //   onTap: (){
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => SignUp()));
                  //   },
                  //   child: Text('Sign Up',
                  //     style: TextStyle(
                  //       color: Colors.blue,
                  //       fontWeight: FontWeight.bold,
                  //       decoration: TextDecoration.underline,
                  //     ),),
                  // )
                ],
              )
          ),
        ),
      ),
    );
  }
}
