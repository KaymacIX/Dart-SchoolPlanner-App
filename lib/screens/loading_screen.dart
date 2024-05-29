import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c3d55),
      body: Column(
        children: [
          // logo
          const Align(
            alignment: Alignment.center,
          ),
          const Spacer(),
          Image.asset('lib/assets/images/Logo.png'),
          const Spacer()
        ],
      ),
    );
  }
}
