

import 'package:flutter/material.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/styles.dart';

class MyButton extends StatelessWidget {
  final String? leftLabel;
  final bool? single;
  final String? rightLabel;
  final GestureTapCallback? leftPress;
  final GestureTapCallback? rightPress;
  final Color leftButton;
  final Color? rightButton;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final TextStyle? leftLabelStyle;
  final TextStyle? rightLabelStyle;
  final double? height;
  final double? leftWidth;
  final double? rightWidth;
  final double? padding;
  final int? leftFlex;
  final int? rightFlex;
  final BorderSide leftBorderSide;
  final bool reverse;

  const MyButton({
    Key? key,
    this.leftLabel,
    this.rightLabel,
    this.leftPress,
    this.rightPress,
    this.leftButton=PRIMARY,
    this.rightButton,
    this.leftLabelStyle,
    this.rightLabelStyle,
    this.height,
    this.leftWidth,
    this.rightWidth,
    this.single = false,
    this.padding = 0,
    this.leftFlex,
    this.rightFlex,
    this.leftIcon,
    this.rightIcon,
    this.leftBorderSide=BorderSide.none,
    this.reverse=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return single!
        ? MaterialButton(
            height: height ?? 44,
            color: leftButton,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: leftBorderSide
                ),
            onPressed: leftPress,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leftIcon != null)
                  Icon(
                    leftIcon,
                    color: Colors.white,
                    size: 20,
                  ),
                if (leftIcon != null)
                  const SizedBox(
                    width: 5,
                  ),
                Text(
                  leftLabel!,
                  style:leftLabelStyle?? STYLE_SEMI_14,
                ),
              ],
            )),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: getButtons(),
          );
  }
  List<Widget> getButtons(){
  List<Widget> buttons=  [if (leftLabel!.isNotEmpty)
                Expanded(
                  flex: leftFlex ?? 4,
                  child: MaterialButton(
                    height: height ?? 44,
                    color: leftButton,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    onPressed: leftPress,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (leftIcon != null)
                          Icon(
                            leftIcon,
                            color: Colors.white,
                            size: 20,
                          ),
                        if (leftIcon != null)
                          const SizedBox(
                            width: 5,
                          ),
                        Text(leftLabel!,
                            style:leftLabelStyle?? STYLE_SEMI_14,),
                      ],
                    )),
                  ),
                ),
              const SizedBox(
                width: 15,
              ),
              if (rightLabel != null && rightLabel!.isNotEmpty)
                Expanded(
                  flex: rightFlex ?? 3,
                  child: MaterialButton(
                    height: height ?? 44,
                    color: rightButton ?? const Color(0xd1dedede),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    onPressed: rightPress,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (rightIcon != null)
                          Icon(
                            rightIcon,
                            color: Colors.white,
                            size: 20,
                          ),
                        if (rightIcon != null)
                          const SizedBox(
                            width: 5,
                          ),
                        Text(rightLabel!,
                            style:rightLabelStyle?? STYLE_SEMI_14.copyWith(color: Colors.black),),
                      ],
                    )),
                  ),
                )];
                if (reverse) {
                  return buttons.reversed.toList();
                }
                return buttons;
  }
}
