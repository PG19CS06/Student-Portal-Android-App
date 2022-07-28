import 'package:flutter/material.dart';
import 'package:student_portal_app/app_constants.dart';
import 'package:student_portal_app/strings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormFieldState>();
  final _usernameKey = GlobalKey<FormFieldState>();
  final _passwordFocusNode = FocusNode();
  final _usernameFocusNode = FocusNode();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _loginWidget());
  }

  Widget _loginWidget({loading = false}) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                spacer32,
                TextFormField(
                  controller: _usernameController,
                  key: _usernameKey,
                  focusNode: _usernameFocusNode,
                  autofocus: true,
                  enabled: !loading,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      counterText: "",
                      labelText: "Email Address",
                      prefixIcon: Icon(Icons.mail_outline),
                      isDense: true,
                      border: OutlineInputBorder()),
                ),
                spacer16,
                TextFormField(
                  controller: _passwordController,
                  key: _passwordKey,
                  focusNode: _passwordFocusNode,
                  enabled: !loading,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock_outline),
                      isDense: true,
                      border: OutlineInputBorder()),
                ),
                spacer32,
                ElevatedButton(onPressed: () {}, child: const Text(sLogin)),
                Center(
                    child: InkWell(
                  child: const Text("New User? Create Account"),
                  onTap: () {
                    // Navigator.of(context).pushNamed(routeRegister);
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
