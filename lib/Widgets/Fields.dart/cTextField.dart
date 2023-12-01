import 'package:flutter/material.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:freshertask/Widgets/commonWidgets.dart';

class CTextField extends StatefulWidget {
  final void Function(String)? onChanged;
  final String label;
  final String value;
  const CTextField({ Key? key, this.onChanged, required this.label, required this.value }) : super(key: key);

  @override
  _CTextFieldState createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
   initData();
  }
  initData(){
 controller.text=widget.value;
 setState(() {
   
 });
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                      controller: controller,
                      style: STYLE_REG_14,
                      onChanged: widget.onChanged,
                      decoration:
                          customDecoration(widget.label));
  }
}