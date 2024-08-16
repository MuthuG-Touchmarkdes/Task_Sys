import 'package:flutter/material.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/size.dart';
import 'package:freshertask/Theme/styles.dart';

Widget getFTitle(String name){
 return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(name,style: STYLE_REG_14.copyWith(color: Colors.black),),
            );
}
InputDecoration customDecoration(String lable, {bool showLabel=false,bool enterShow=true, bool dropDown=false,bool your=false, Color? borderColor}) {

  // String 
  return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            labelText:showLabel == false?null: lable,
            labelStyle: STYLE_B_14,
      focusedBorder: OutlineInputBorder(
        borderSide:  BorderSide(color:borderColor?? PRIMARY),
        borderRadius: BorderRadius.circular(RADIUS_10)
      ),
      border:  OutlineInputBorder(
        borderSide:  BorderSide(color:borderColor?? BLACK_11),
        borderRadius: BorderRadius.circular(RADIUS_10)
      ),
      errorBorder:
           OutlineInputBorder(borderSide: const BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(RADIUS_10)),
      focusedErrorBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color:borderColor?? Colors.red),
        borderRadius: BorderRadius.circular(RADIUS_10)
      ),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: borderColor??BLACK_11),
        borderRadius: BorderRadius.circular(RADIUS_10)
      ),
      hintText: "${showLabel?"":enterShow?"Enter ${your?"your":""} ":dropDown?"Select ":"" }$lable",
      hintStyle:STYLE_B_14);
}

showAlertDialog(BuildContext context) {  
  // Create button  
  Widget okButton = TextButton(  
    child: Text("OK"),  
    onPressed: () {  
      Navigator.of(context).pop();  
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: Text("Simple Alert"),  
    content: Text("This is an alert message."),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}  