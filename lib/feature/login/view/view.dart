import 'package:flutter/material.dart';

class LocationApp extends StatefulWidget {

  @override
  State<LocationApp> createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  bool _controlSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _textWelcome(),
                _textLogin(),
                const SizedBox(
                  height: 50.0,
                ),
                _buildMailField(),
                _buildPassField(),
                _textForgotPass(),
                const SizedBox(
                  height: 50.0,
                ),
                _loginButton(),
                const SizedBox(
                  height: 50.0,
                ),
                _bottomSignUpText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textForgotPass() {
    return Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot password?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w300),
                ),
              );
  }

  Container _textLogin() {
    return Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 46.0,
                      fontWeight: FontWeight.w800),
                ),
              );
  }

  Container _textWelcome() {
    return Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome back!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500),
                ),
              );
  }

  TextField _buildMailField() {
    return TextField(
                enableSuggestions: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  labelText: 'E-mail',
                ),
              );
  }

  SizedBox _loginButton() {
    return SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: null,
                  child: const Text(
                    'Login',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.pink)),
                ),
              );
  }

  TextField _buildPassField() {
    return TextField(
                obscureText: _controlSecure,
                enableSuggestions: false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _controlSecure
                            ? _controlSecure = false
                            : _controlSecure = true;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    color: Colors.grey.shade600,
                  ),
                ),
              );
  }

  Row _bottomSignUpText() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Don't have an account? ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Create",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              );
  }
}
