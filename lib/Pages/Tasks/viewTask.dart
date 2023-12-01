import 'package:flutter/material.dart';
import 'package:freshertask/Pages/Tasks/statusTracker.dart';
import 'package:freshertask/Pages/Tasks/taskDetails.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/size.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:freshertask/Widgets/scafoldScreen.dart';


class ViewTask extends StatefulWidget {
  const ViewTask({ Key? key }) : super(key: key);

  @override
  _ViewTaskState createState() => _ViewTaskState();
}

class _ViewTaskState extends State<ViewTask> with SingleTickerProviderStateMixin{
  String selectedStatus = "Details";
  List<String> tabsList = ["Details", "Comment", "History"];
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }
   
  @override
  Widget build(BuildContext context) {
    return ScafoldScreen(
      title: "Task Title",
      centerTitle: true,
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: SPACE_10),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                   borderRadius: BorderRadius.circular(80.0),
                ),
                child: TabBar(
                  // controller: _tabController,
                  tabs: tabsList.map((e) => Tab(text: e)).toList(),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    color: PRIMARY,
                  ),
                ),
              ),
            ),
                          Expanded(
                            child: TabBarView(
                              // controller: _tabController,
                              children: [
                                TaskDetails(),
                                Container(),
                                StatusTracker()
                              ],
                            ),)
          ],
          
        ),
        ),
    );
  }
}