import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/size.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:freshertask/Widgets/commonWidgets.dart';
import 'package:freshertask/Widgets/containerDec.dart';
import 'package:freshertask/Widgets/myButton.dart';
import 'package:freshertask/Widgets/scafoldScreen.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  _TaskDetailsState createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return ScafoldScreen(
      showBackButton: false,
      showTitle: false,
      floatingActionButton: SpeedDial(
        foregroundColor: Colors.white,
          icon: Icons.remove_red_eye_outlined,
          backgroundColor: PRIMARY,
          
          activeIcon: Icons.close,
          spacing: 3,
          // openCloseDial: isDialOpen,
          childPadding: const EdgeInsets.all(5),
          spaceBetweenChildren: 4,
          onOpen: () => debugPrint('OPENING DIAL'),
          onClose: () => debugPrint('DIAL CLOSED'),
          
          elevation: 8.0,
          animationCurve: Curves.elasticInOut,
          isOpenOnStart: false,
          children: [
            SpeedDialChild(
              child:  const Icon(Icons.check),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
             shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
              label: 'Completed',
              onTap: () {},
            ),
            SpeedDialChild(
              child: const Icon(Icons.access_time),
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
              label: 'In Progress',
               shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
              onTap: (){},
            ),
            SpeedDialChild(
              child: const Icon(Icons.close),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'Not Started',
               shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
              visible: true,
              onTap: () {},
            ),
          ],
        ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            //      ContainerDec(
            // child: Row(
            //   children: [
            //     Container(
            // height: 48,
            // width: 48,
            // decoration: BoxDecoration(
            //     color: BLACK_41, borderRadius: BorderRadius.circular(30)),
            // child: const Padding(
            //   padding: EdgeInsets.all(SPACE_10),
            //   child: Icon(
            //     Icons.task_alt_sharp,
            //     color: BLACK_11,
            //   ),
            // ),
            //     ),
            //     Expanded(
            // child: Padding(
            //   padding: const EdgeInsets.only(left: SPACE_16),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Task",
            //         style: STYLE_REG_12.copyWith(color: PRIMARY),
            //       ),
            //        Text("Task title",
            //           style: STYLE_ME_14)
            //     ],
            //   ),
            // ),
            //     )
            //   ],
            // ),
            // ),
            // const SizedBox(
            // height: 15,
            // ),
                ContainerDec(
            child: Row(
              children: [
                Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: BLACK_41, borderRadius: BorderRadius.circular(30)),
            child: const Padding(
              padding: EdgeInsets.all(SPACE_10),
              child: Icon(
                Icons.description_sharp,
                color: BLACK_11,
              ),
            ),
                ),
                Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: SPACE_16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: STYLE_REG_12.copyWith(color: PRIMARY),
                  ),
                   Text("Systematic characterization and documentation of tasks or subtasks and execution conditions",
                      style: STYLE_ME_14)
                ],
              ),
            ),
                )
              ],
            ),
            ),
            const SizedBox(
            height: 15,
            ),
             ContainerDec(
            child: Row(
              children: [
                Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: BLACK_41, borderRadius: BorderRadius.circular(30)),
            child: const Padding(
              padding: EdgeInsets.all(SPACE_10),
              child: Icon(
                Icons.report,
                color: BLACK_11,
              ),
            ),
                ),
                Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: SPACE_16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reports To",
                    style: STYLE_REG_12.copyWith(color: PRIMARY),
                  ),
                   Text("User 1",
                      style: STYLE_ME_14)
                ],
              ),
            ),
                )
              ],
            ),
            ),
            const SizedBox(
            height: 15,
            ),
             ContainerDec(
            child: Row(
              children: [
                Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: BLACK_41, borderRadius: BorderRadius.circular(30)),
            child: const Padding(
              padding: EdgeInsets.all(SPACE_10),
              child: Icon(
                Icons.link,
                color: BLACK_11,
              ),
            ),
                ),
                Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: SPACE_16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reference",
                    style: STYLE_REG_12.copyWith(color: PRIMARY),
                  ),
                    ...List.generate(2,(index){
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward, size: 20,color: Colors.grey,),
                        const SizedBox(width: 15,),
              Text(
                    "https://docs.flutter.dev/",
                    style: STYLE_REG_14.copyWith(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue),
                         ),
                      ],
                    ),
                //           const Divider(
                //   color: BLACK_11,
                // ),
                  ],
                ),
              );
            }),
                ],
              ),
            ),
                )
              ],
            ),
            ),
            const SizedBox(
            height: 15,
            ),
            ContainerDec(
            child: Row(
              children: [
                Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: BLACK_41, borderRadius: BorderRadius.circular(30)),
            child: const Padding(
              padding: EdgeInsets.all(SPACE_10),
              child: Icon(
                Icons.access_time_filled,
                color: BLACK_11,
              ),
            ),
                ),
                Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: SPACE_16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Last Status",
                    style: STYLE_REG_12.copyWith(color: PRIMARY),
                  ),
                   Text("In Progress",
                      style: STYLE_ME_14.copyWith(color: Colors.amber))
                ],
              ),
            ),
                )
              ],
            ),
            ),
            const SizedBox(
            height: 15,
            ),
            ContainerDec(
            child: Row(
              children: [
                Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: BLACK_41, borderRadius: BorderRadius.circular(30)),
            child: const Padding(
              padding: EdgeInsets.all(SPACE_10),
              child: Icon(
                Icons.comment_rounded,
                color: BLACK_11,
              ),
            ),
                ),
                Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: SPACE_16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Last Comments",
                    style: STYLE_REG_12.copyWith(color: PRIMARY),
                  ),
                   Text("Systematic characterization and documentation of tasks or",
                      style: STYLE_ME_14)
                ],
              ),
            ),
                )
              ],
            ),
            ),
            const SizedBox(
            height: 15,
            ),
              ],
            )),
      ),
    );
  }
}


//  MyButton(
//                       rightLabel: "History",
//                       rightLabelStyle: STYLE_SEMI_14.copyWith(color: Colors.white),
//                       rightIcon: Icons.remove_red_eye,
//                       rightButton: PRIMARY,
//                       leftIcon: Icons.chat,
//                       leftLabel: "Queries",
//                       single: true,
//                       rightPress: () {
                        
//                       },
//                       leftPress: () {
                        
//                       },
//                     ),