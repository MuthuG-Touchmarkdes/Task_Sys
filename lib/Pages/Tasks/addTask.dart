import 'package:flutter/material.dart';
import 'package:freshertask/Theme/colors.dart';
import 'package:freshertask/Theme/styles.dart';
import 'package:freshertask/Widgets/Fields.dart/cTextField.dart';
import 'package:freshertask/Widgets/commonWidgets.dart';
import 'package:freshertask/Widgets/myButton.dart';
import 'package:freshertask/Widgets/scafoldScreen.dart';
import 'package:multiselect/multiselect.dart';

class AddTask extends StatefulWidget {
  const AddTask({ Key? key }) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  TextEditingController taskName = TextEditingController();
  TextEditingController taskDescription = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController postalCode = TextEditingController();
  TextEditingController city = TextEditingController();
  List<String> urls=[""];
  List<String> selectedUser=[];
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return ScafoldScreen(
      title: "Add task",
      centerTitle: true,
      body: SingleChildScrollView(
        child:  SizedBox(
        height: size.height*0.9,
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getFTitle("Task Name"),
                   TextFormField(
                            controller: taskName,
                            style: STYLE_REG_14,
                            decoration:
                                customDecoration("Task Name")),
                        const SizedBox(
                          height: 10,
                        ),
                        getFTitle("Task Description"),
                   TextFormField(
                            controller: taskName,
                            style: STYLE_REG_14,
                            maxLines: 4,
                            // maxLength: 250,
                            decoration:
                                customDecoration("Task Description")),
                        const SizedBox(
                          height: 10,
                        ),
                         getFTitle("Reference Url"),
                        ...List.generate(urls.length, (index){
                          return CTextField(
                            label: "Url",
                            value: urls[index],
                            onChanged: (val) {
                              urls[index]=val;
                              setState((){});
                            },
                            );
                        }),
        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(onPressed: (){}, child: Text(" + Add Url",style: STYLE_SEMI_14.copyWith(color: Colors.blue),)),
                          ],
                        ),
                        //  const SizedBox(
                        //   height: 6,
                        // ),
                        getFTitle("Assign to"),
                        DropDownMultiSelect<String>(
              decoration: customDecoration("Users",dropDown: true),
                onChanged: (List<String> x) {
                  setState(() {
                    selectedUser =x;
                  });
                },
                options: [],
                selectedValues: selectedUser,
                // whenEmpty: "No Users Found.",
              ),
              
                ],
                
              ),
              MyButton(
                            rightLabel: "Cancel",
                            // rightLabelStyle: STYLE_SEMI_14.copyWith(color: Colors.white),
                            // rightIcon: Icons.remove_red_eye,
                            // rightButton: PRIMARY,
                            // leftIcon: Icons.chat,
                            leftLabel: "Save",
                            // single: true,
                            rightPress: () {
                              
                            },
                            leftPress: () {
                              
                            },
                          ),
            ],
          ),
        ),
      ),
    );
  }
}