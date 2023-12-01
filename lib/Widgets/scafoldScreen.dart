import 'package:flutter/material.dart';
import 'package:freshertask/Services/commonService.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:freshertask/Widgets/gestureWidget.dart';


class ScafoldScreen extends StatefulWidget {
  final String? title;
  final bool showTitle;
  final bool centerTitle;
  final Widget? body;
  final bool showBackButton;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  const ScafoldScreen({ Key? key, this.title,  this.showTitle=true, this.body, this.centerTitle=false, this.showBackButton=true, this.floatingActionButton, this.floatingActionButtonLocation, this.floatingActionButtonAnimator }) : super(key: key);

  @override
  _ScafoldScreenState createState() => _ScafoldScreenState(this.title,  this.showTitle, this.body);
}

class _ScafoldScreenState extends State<ScafoldScreen> {
    String? title;
   bool showTitle;
   Widget? body;
   _ScafoldScreenState(this.title,  this.showTitle, this.body):super();
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    print("$showTitle");
    return Scaffold(
      floatingActionButton: widget.floatingActionButton,
      floatingActionButtonAnimator: widget.floatingActionButtonAnimator,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      body: Container(
         height: size.height,
                decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0,0.4,0.75],
                colors: [
                  PRIMARY11.withOpacity(0.8),
                  PRIMARY21.withOpacity(0.8),
                  PRIMARY31.withOpacity(0.8),
                ],
              )
            ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: LayoutBuilder(
                        builder: (context, cSize) {
                return Column(
                  children: [
                    if(showTitle)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          if(widget.showBackButton)
                          GestureWidget(
                            onTap: () {
                              GO.back();
                            },
                            child: Icon(Icons.arrow_back,color: PRIMARY,),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: widget.centerTitle?MainAxisAlignment.center:MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(title??"",style: STYLE_B_18,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: body!
                    )
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );;
  }
}