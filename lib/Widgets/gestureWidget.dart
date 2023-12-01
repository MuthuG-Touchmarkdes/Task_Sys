import 'package:flutter/material.dart';

class GestureWidget extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;
const GestureWidget({ Key? key, this.onTap, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: child,
    );
  }
}