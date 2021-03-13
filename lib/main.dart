import 'package:ex_provider/src/models/appBarButton.dart';
import 'package:ex_provider/src/models/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/app.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MyButton>(
      create: (context) => MyButton(),
    ),
    ChangeNotifierProvider<AppBarButton>(
      create: (context) => AppBarButton(),
    )
  ], child: App()));
}
