import 'package:flutter/material.dart';
import 'package:food_delivery_app/product/languages.dart';
import 'package:food_delivery_app/product/input_decorator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  static IconData suffixIcon = Icons.visibility;
  static IconData suffixIconOff = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left_outlined),
        ),
        title: Text(
          Languages.logInTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
//--------------------------------------------------------------------

      body: Padding(
        padding: _PaddinUtility().generalPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: _PaddinUtility().textOnlyPadding,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  Languages.letsLogIn,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),

            //  Email TextField:
            Padding(
              padding: _PaddinUtility().emailTextFieldOnlyPadding,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                textAlign: TextAlign.left,
                decoration: InputDecorators().emailDecorator,
              ),
            ),

            // Password TextField:
            TextField(
                obscureText: _obscureText,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  labelText: Languages.password,
                  border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  prefixIcon: const Icon(Icons.lock_outline_sharp),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(_obscureText ? suffixIconOff : suffixIcon)),
                )),

            //"Forgot Password?":
            Padding(
              padding: _PaddinUtility().textAllPadding,
              child: Container(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {}, child: const Text(Languages.forgotPassword)),
              ),
            ),

            //  "Login" ElevatedButton:
            OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.orange[800]),
              //borderRadius eklenecek!!

              onPressed: () {},
              child: Container(
                width: 335,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  Languages.logInButtonText,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PaddinUtility {
  final emailTextFieldOnlyPadding = const EdgeInsets.only(bottom: 20);
  final textOnlyPadding = const EdgeInsets.only(bottom: 30);
  final generalPadding = const EdgeInsets.all(20.0);
  final textFieldOnlyPadding = const EdgeInsets.all(20.0);
  final textAllPadding = const EdgeInsets.all(8.0);
}
