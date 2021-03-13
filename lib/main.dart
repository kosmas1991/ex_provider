import 'package:ex_provider/src/models/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/app.dart';

void main(){
  runApp(ChangeNotifierProvider(create: (context) => MyButton(),child: App()));
}