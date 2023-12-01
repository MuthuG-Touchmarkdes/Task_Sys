import 'package:flutter/material.dart';
import 'package:freshertask/Pages/Tasks/addTask.dart';
import 'package:freshertask/Pages/Tasks/taskDetails.dart';
import 'package:freshertask/Services/commonService.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/size.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:freshertask/Widgets/gestureWidget.dart';
import 'package:freshertask/Widgets/scafoldScreen.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ScafoldScreen(
      title: "My Tasks",
      showBackButton: false,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: PRIMARY,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45)
        ),
        onPressed: () {
          GO.next(AddTask());
        },
      ),
      body: SizedBox(
        child: ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: GestureWidget(
                onTap: () {
                  GO.next(const TaskDetails());
                },
                child: Card(
                  shadowColor: PRIMARY21,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(SPACE_40),
                          bottomRight: Radius.circular(SPACE_40))),
                  child: Container(
                    // height: 150,
                    foregroundDecoration: RotatedCornerDecoration.withColor(
                      badgePosition: BadgePosition.topEnd,
                      color: Colors.green,
                      badgeSize: Size(45, 45),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(SPACE_40),
                          bottomRight: Radius.circular(SPACE_40)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: PRIMARY21,
                      //     offset: const Offset(
                      //                   5.0,
                      //                   5.0,
                      //                 ),
                      //                 blurRadius: 5.0,
                      //                 spreadRadius: 2.0,
                      //   )
                      // ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: LayoutBuilder(
                        builder: (context, icSize) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Title Tasks",style: STYLE_ME_16,),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[400],
                              ),
                              Text(
                                "Systematic characterization and documentation of tasks or subtasks and execution conditions",
                              style: STYLE_REG_12,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: icSize.maxWidth*0.30,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Created",style: STYLE_REG_13,),
                                        Text("02 Aug, 2023",style: STYLE_REG_14)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: icSize.maxWidth*0.30,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Status",style: STYLE_REG_13,),
                                        Text("In Progress",style: STYLE_REG_14)
                                      ],
                                    ),
                                  ),
                                  
                                   SizedBox(
                                    width: icSize.maxWidth*0.30,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Reports to",style: STYLE_REG_13,),
                                        Text("User 1",style: STYLE_REG_14)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        }
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
