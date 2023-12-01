import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/size.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:freshertask/Widgets/scafoldScreen.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';


class ProcessCard{
    String title;
    String description;
    IconData icon;
    Color color;

    ProcessCard(this.title, this.description, this.icon,this.color);
}

class StatusTracker extends StatefulWidget {
  const StatusTracker({ Key? key }) : super(key: key);

  @override
  _StatusTrackerState createState() => _StatusTrackerState();
}

class _StatusTrackerState extends State<StatusTracker> {
  List<Color> colors = [Colors.red, Colors.green,Colors.pinkAccent, Colors.blue];
  List<ProcessCard> processCard = [];

  @override
  void initState() {
    super.initState();
    processCard = _getProcess();
  }
  @override
  Widget build(BuildContext context) {
    return ScafoldScreen(
      showTitle: false,
      showBackButton: false,
      body: ListView.builder(
        itemCount: processCard.length,
        itemBuilder: (context, index) {
           final i= processCard[index];
          DateTime data= DateTime.now();
          String dateFormate= DateFormat("d MMM, HH:mm").format(data);
          bool isLast=index == processCard.length - 1;
          bool isFirst=index==0;
          return TimelineTile(
              alignment: TimelineAlign.start,
              isFirst: isFirst,
              isLast: isLast,
              beforeLineStyle: LineStyle(color: i.color),
              afterLineStyle:isLast?null: LineStyle(color: processCard[index+1].color),
              indicatorStyle: IndicatorStyle(
                iconStyle: IconStyle(iconData: i.icon,color: Colors.white,fontSize: 20),
                // padding: EdgeInsets.all(10),
                height: 40,
                width: 40,
                // indicator: Icon(i.icon, color: Colors.white,),
                color: i.color
              ),
  endChild: Padding(
    padding: const EdgeInsets.symmetric(vertical: SPACE_16,horizontal: SPACE_16),
    child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                border: Border(top: BorderSide(width: 3, color: i.color,), left: BorderSide(width: 3, color: i.color,),),
                boxShadow: [BoxShadow(
                    blurRadius: 5,
                    color: Colors.black26,
                )]
                ),
                // constraints: BoxConstraints(maxHeight: 140, minHeight:80 ),
            // height: 140,
            child: Padding(
                padding: const EdgeInsets.all(SPACE_10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(i.title, style: STYLE_ME_14.copyWith(color: i.color),),
                                  Text(dateFormate, style: STYLE_ME_14.copyWith(color: PRIMARY)),
                                ],
                              ),
                            ),
                        Text(
                          i.description, 
                          style:STYLE_REG_14,
                          // maxLines: 4,
                          // overflow: TextOverflow.ellipsis,
                          )
                ],
            ),
            ),
        ),
  ),
  
          );
        },
      )
    //   ListView.builder(
    //      itemCount: processCard.length,
    //     itemBuilder: (context, index){
    //       final i= processCard[index];
    //       DateTime data= DateTime.now();
    //       String dateFormate= DateFormat("d MMM, HH:mm").format(data);
    //      return Container(
    //       child: Row(
    // children:<Widget> [
    //     Stack(
    //       children: <Widget>[
    //     Container(
    //         width: 2,
    //         // height: 60,
    //         color: index == 0 ? Colors.transparent : Colors.black,
    //     ),
    //     Container(
    //         margin: EdgeInsets.only(left: 8, right: 5),
    //         padding: EdgeInsets.all(10),
    //         decoration: BoxDecoration(
    //         color: i.color,
    //         borderRadius: BorderRadius.circular(50)
    //         ),
    //         child: Icon(i.icon, color: Colors.white,),
    //     ),
    //     Positioned(
    //       child: Container(
    //           width: 2,
    //           // height: 60,
    //           color: index == processCard.length - 1 ? Colors.transparent : Colors.black,
    //       ),
    //     ),
    //     ],
    //     ),
    //     Expanded(
    //         child: Container(
    //             margin: EdgeInsets.all(10),
    //             decoration: BoxDecoration(
    //                 color: Colors.white,
    //             border: Border(top: BorderSide(width: 3, color: i.color,), left: BorderSide(width: 3, color: i.color,),),
    //             boxShadow: [BoxShadow(
    //                 blurRadius: 5,
    //                 color: Colors.black26,
    //             )]
    //             ),
    //             constraints: BoxConstraints(maxHeight: 140, minHeight:80 ),
    //         // height: 140,
    //         child: Padding(
    //             padding: const EdgeInsets.all(SPACE_10),
    //             child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget> [
    //                         Padding(
    //                           padding: const EdgeInsets.only(bottom: 6),
    //                           child: Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Text(i.title, style: STYLE_ME_14.copyWith(color: i.color),),
    //                               Text(dateFormate, style: STYLE_ME_14),
    //                             ],
    //                           ),
    //                         ),
    //                     Expanded(
    //                       child: Text(
    //                         i.description, 
    //                         style:STYLE_REG_14,
    //                         maxLines: 4,
    //                         overflow: TextOverflow.ellipsis,
    //                         ),
    //                     )
    //             ],
    //         ),
    //         ),
    //     ))
    // ],));
        
    //     }),
    );
  }
  List<ProcessCard> _getProcess(){
    List<ProcessCard> processCard = [];

    processCard.add(ProcessCard("Completed", "We begin by encapsulating the entire design in a container that actively provides the children, in this case, the individual processes with a padding margin. The container has a Listview class which places all the processes we have into a list asdfsd. ", Icons.check,Colors.green));
    processCard.add(ProcessCard("In Progress", "The author waist for 3 - 5 days.",Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("In Progress", "The author writes the topic.", Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("In Progress", "The author creates a new Pull Request", Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("In Progress", "This ensure article is correct", Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("Not Started", "The article is polished", Icons.close,Colors.red));
    return processCard;
}
}

// return Container(
//           child: Row(
//     children:<Widget> [
//         Column(children: <Widget>[
//         Container(
//             width: 2,
//             height: 60,
//             color: index == 0 ? Colors.transparent : Colors.black,
//         ),
//         Container(
//             margin: EdgeInsets.only(left: 8, right: 5),
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//             color: i.color,
//             borderRadius: BorderRadius.circular(50)
//             ),
//             child: Icon(i.icon, color: Colors.white,),
//         ),
//         Container(
//             width: 2,
//             height: 60,
//             color: index == processCard.length - 1 ? Colors.transparent : Colors.black,
//         ),
//         ],
//         ),
//         Expanded(
//             child: Container(
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                 border: Border(top: BorderSide(width: 3, color: i.color,), left: BorderSide(width: 3, color: i.color,),),
//                 boxShadow: [BoxShadow(
//                     blurRadius: 5,
//                     color: Colors.black26,
//                 )]
//                 ),
//                 constraints: BoxConstraints(maxHeight: 140, minHeight:80 ),
//             // height: 140,
//             child: Padding(
//                 padding: const EdgeInsets.all(SPACE_10),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget> [
//                             Padding(
//                               padding: const EdgeInsets.only(bottom: 6),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(i.title, style: STYLE_ME_14.copyWith(color: i.color),),
//                                   Text(dateFormate, style: STYLE_ME_14),
//                                 ],
//                               ),
//                             ),
//                         Expanded(
//                           child: Text(
//                             i.description, 
//                             style:STYLE_REG_14,
//                             maxLines: 4,
//                             overflow: TextOverflow.ellipsis,
//                             ),
//                         )
//                 ],
//             ),
//             ),
//         ))
//     ],));