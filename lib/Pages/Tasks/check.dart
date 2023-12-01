import 'package:flutter/material.dart';
import 'package:freshertask/Pages/Tasks/statusTracker.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:measured_size/measured_size.dart';


class Check extends StatefulWidget {
  final ProcessCard item;
  final int index;
  const Check({ Key? key, required this.item, required this.index }) : super(key: key);

  @override
  _CheckState createState() => _CheckState(this.item,this.index);
}

class _CheckState extends State<Check> {
   ProcessCard item;
   int index;
_CheckState(this.item,this.index):super();
   List<ProcessCard> _getProcess(){
    List<ProcessCard> processCard = [];

    processCard.add(ProcessCard("Completed", "We begin by encapsulating the entire design in a container that actively provides the children, in this case, the individual processes with a padding margin. The container has a Listview class which places all the processes we have into a list asdfsd.", Icons.check,Colors.green));
    processCard.add(ProcessCard("In Progress", "The author waist for 3 - 5 days.",Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("In Progress", "The author writes the topic.", Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("In Progress", "The author creates a new Pull Request", Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("In Progress", "This ensure article is correct", Icons.access_time,Colors.amber));
    processCard.add(ProcessCard("Not Started", "The article is polished", Icons.close,Colors.red));
    return processCard;
}
List<ProcessCard> processCard = [];
  @override
  void initState() {
    super.initState();
    processCard = _getProcess();
    final i= item;
  }
  Size wsize = Size.zero;
  @override
  Widget build(BuildContext context) {
    final i=item;
    return Container(
          child: MeasuredSize(
             onChange: (Size size){
        setState(() {
            wsize = size;
        });
    },
            child: Row(
              children:<Widget> [
                  Column(
                    children: <Widget>[
                  Container(
                              width: 2,
                              height: 60,
                              color: index == 0 ? Colors.transparent : Colors.black,
                  ),
                  Container(
                              margin: EdgeInsets.only(left: 8, right: 5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                              color: i.color,
                              borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(i.icon, color: Colors.white,),
                  ),
                               Container(
                  width: 2,
                  height: wsize.height,
                  constraints: BoxConstraints.expand(),
                  color: index == processCard.length - 1 ? Colors.transparent : Colors.black,
                              ),
                  ],
                  ),
                  Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                  border: Border(top: BorderSide(width: 3, color: i.color,), left: BorderSide(width: 3, color: i.color,),),
                  boxShadow: [BoxShadow(
                      blurRadius: 5,
                      color: Colors.black26,
                  )]
                  ),
              // height: 140,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                              Text(i.title, style: STYLE_ME_14.copyWith(color: i.color),),
                          Text(i.description, style: TextStyle(fontSize: 17, letterSpacing: 2),)
                  ],
              ),
              ),
                  ))
              ],),
          ));
  }
}