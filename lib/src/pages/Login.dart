import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:machine_test_accruon/constants/color.dart';
// import 'package:local_auth/local_auth.dart';
// import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:machine_test_accruon/src/pages/dashboard.dart';


class Login extends StatefulWidget {
  final camera;
  const Login({super.key, this.camera});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final LocalAuthentication localAuthentication=LocalAuthentication();

  // authentication()async{
  //   // bool isBiometricAvailable=await localAuthentication.canCheckBiometrics;
  //   // bool isAuthenticated=await localAuthentication.authenticate(localizedReason: "Authenticate with biometric"
  //   // );
  //   // if(isAuthenticated){
  //   // }else{
  //   //
  //   // }
  //
  // }

  // Future<void> authinticate() async {
  //   try {
  //     final bool didAuthenticate = await localAuthentication.authenticate(
  //       localizedReason: 'Please authenticate to show account balance',
  //       options: const AuthenticationOptions(useErrorDialogs: false),
  //     );
  //   } on PlatformException catch (e) {
  //     if (e.code == auth_error.notEnrolled) {
  //       return null;
  //     } else if (e.code == auth_error.lockedOut ||
  //         e.code == auth_error.permanentlyLockedOut) {
  //     } else {
  //       // ...
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour.babyBlue,
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Authenticate Here',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Center(
          child: ElevatedButton(
            child: const Text(''),
            onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard(camera: widget.camera,))),
          ),
        )
      ],)
    );
  }
}
