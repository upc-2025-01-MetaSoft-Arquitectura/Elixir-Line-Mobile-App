import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            'https://i.postimg.cc/Qd1xCyMR/app-background-best-quality-optimized.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(color: Colors.black.withAlpha((255 * 0.3).round())),
        child,
      ],
    );
  }
}