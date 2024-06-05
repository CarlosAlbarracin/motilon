
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:motilon/common/theme_helper.dart';

import 'package:motilon/login/services/firebase_auth_service.dart';
import 'package:motilon/login/widgets/customized_textfield.dart';
import 'package:motilon/menu/views/pages/home_page.dart';
import 'package:motilon/prinpical/main.dart';



import 'forgot_password_page.dart';

import 'registration_page.dart';
import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final double _headerHeight = 150;
  final Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final User? currentUser = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container( 
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),// This will be the login form
                child: Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      'Motilon Viajero ',
                      style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Ingresa tu cuenta',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            CustomizedTextfield(
                                            myController: emailController,
                                            hintText: "Correo",
                                            isPassword: false,
                                          ),
                            const SizedBox(height: 8.0),
                            CustomizedTextfield(
                                            myController: passwordController,
                                            hintText: "Contraseña",
                                            isPassword: true,
                                          ),
                            const SizedBox(height: 15.0),
                            Container(
                              margin: const EdgeInsets.fromLTRB(10,0,10,20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push( context, MaterialPageRoute( builder: (context) => const ForgotPasswordPage()), );
                                },
                                child: const Text( "¿olvidaste tu contraseña?", style: TextStyle( color: Colors.grey, ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Ingresar'.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: () async{
                                  try {
                    await FirebaseAuthService().login(
                        emailController.text.trim(),
                        passwordController.text.trim());
                    if (FirebaseAuth.instance.currentUser != null) {
                      if (!mounted) return;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  const Menu()));
                    }

                    //  This code is gone inside the catch block
                    // which is executed only when we have firebaseexception
                    //  else {
                    //   showDialog(
                    //       context: context,
                    //       builder: (context) => AlertDialog(
                    //               title: Text(
                    //                   " Invalid Username or password. Please register again or make sure that username and password is correct"),
                    //               actions: [
                    //                 ElevatedButton(
                    //                   child: Text("Register Now"),
                    //                   onPressed: () {
                    //                     Navigator.push(
                    //                         context,
                    //                         MaterialPageRoute(
                    //                             builder: (context) =>
                    //                                 SignUpScreen()));
                    //                   },
                    //                 )
                    //               ]));

                    // }
                  } on FirebaseException catch (e) {
                    debugPrint("error is ${e.message}");

                    showDialog(
                        // ignore: use_build_context_synchronously
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text(
                                    " Invalido Correo o contraseña"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("Registrarse ahora"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   const RegistrationPage()));
                                    },
                                  )
                                ]));
                  }

                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(10,20,10,20),
                              //child: Text('Don\'t have an account? Create'),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(text: "¿No tienes Cuenta? "),
                                    TextSpan(
                                      text: 'Crear',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage()));
                                        },
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                                    ),
                                  ]
                                )
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );

  }
}