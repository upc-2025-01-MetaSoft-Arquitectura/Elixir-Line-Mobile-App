import 'package:flutter/material.dart';
import 'package:myapp/injection.dart';
import 'package:myapp/shared/presentation/app_widget.dart';

void main() {
  configureDependencies();
  runApp(AppWidget());
}
