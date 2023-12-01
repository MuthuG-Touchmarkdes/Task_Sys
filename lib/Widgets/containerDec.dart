import 'package:flutter/material.dart';
import 'package:freshertask/Theme/size.dart';

class ContainerDec extends StatelessWidget {
  final Widget? child;
  final Color backgroundColor;
  final double? paddingSpace;
const ContainerDec({ Key? key, this.child, this.backgroundColor=Colors.white, this.paddingSpace }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Card(
      child: Container(
            padding:  EdgeInsets.all(paddingSpace??SPACE_16),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(RADIUS_5)),
            child: child,
          ),
    );
  }
}