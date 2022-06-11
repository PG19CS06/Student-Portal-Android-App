import 'package:flutter/material.dart';
import 'package:student_portal_app/image_assets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _splashWidget();
  }

  Widget _splashWidget() {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          child: Image.asset(
            IA_LOGO,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
