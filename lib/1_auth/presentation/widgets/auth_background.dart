import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(
            'assets/images/background2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(color: Colors.black.withAlpha((255 * 0.5).round())),
        child,
      ],
    );
  }
}
