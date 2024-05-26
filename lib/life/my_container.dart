import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? renk;
  Widget? child;
  final void Function()? onPress;

  MyContainer({this.renk = Colors.white, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: renk,
        ),
        child: child,
      ),
    );
  }
}
