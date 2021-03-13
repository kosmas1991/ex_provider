import 'package:ex_provider/src/models/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider example'),
      ),
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<MyButton>(builder: (context, value, child) => Icon(value.getState?Icons.toggle_on:Icons.toggle_off,color: value.getState?Colors.green:Colors.redAccent,size: 70,))
            ],
          ),
        ),
      ),
      floatingActionButton: Consumer<MyButton>(builder: (context, theButton, child) => FloatingActionButton(backgroundColor: Colors.grey.shade500,
          onPressed: () {
            //var theButton = Provider.of<MyButton>(context,listen: false); //another way to do this instead of consumer class. nothing needs to change, so listen: false
            theButton.setState = !theButton.getState;
          },
          child: Icon(Icons.switch_right,color: Colors.black),
        ),
      ),
    );
  }
}
