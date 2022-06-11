import 'package:flutter/material.dart';
import 'package:student_portal_app/image_assets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SplashWidget();
  }

  Widget _SplashWidget() {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            width: 200,
            child: Image.asset(
              IA_LOGO,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
