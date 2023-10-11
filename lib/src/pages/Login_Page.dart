import 'package:flutter/material.dart';
import 'package:machine_test_accruon/constants/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _controller=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  GlobalKey _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Sign in"),
          SizedBox(
            height: MediaQuery.of(context).size.height*.05,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.05,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder()
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              height: MediaQuery.of(context).size.height*.1,
              width:MediaQuery.of(context).size.width*.2 ,
              color: Colour.darkBlue,
            ),
          )
        ],
      ),
    );
  }
}
