import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        child,
        Positioned(
          top: size.height * 0.76,
          left: 10,
          child: Image.asset(
            'assets/images/bg-blur-1.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: size.height * 0.020,
          left: -100,
          child: Image.asset(
            'assets/images/bg-blur-2.png',
            width: 300,
          ),
        ),
        Positioned(
          right: size.height * 0.08,
          bottom: size.height * 0.65,
          child: Image.asset(
            'assets/images/bg-blur-3.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
