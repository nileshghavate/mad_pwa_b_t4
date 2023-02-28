import 'package:flutter/material.dart';
import 'package:mad_pwa_b_t4/SubjectFaculty.dart';


void main() {
  runApp( MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  // List subject=['WT','EH','AIDS','DMBI',"WebX"];
  // List Faculty=['Prof. Tayyabali','Prof. Janhavi','Prof. Prasad','Prof. Aruna',"Prof. Vaishali"];

  List<SubjectFaculty> subjects=[
    SubjectFaculty("Wireless Technology", "Prof. Tayyabali"),
    SubjectFaculty("EH", "Prof. Janhavi"),
    SubjectFaculty("AIDS", "Prof. Prasad"),
    SubjectFaculty("DMBI", "Prof. Aruna"),
    SubjectFaculty("WebX", "Prof. Vaishali"),
    SubjectFaculty("MAD", "Prof. Nilesh"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subject List"),
        centerTitle: true,
      ),
      body: Column(
        children:
        //subjects.map((sub) => Text('${sub.subject_name} --> ${sub.faculty_name}')).toList(),
        subjects.map((sub) => subjectTemplate(sub)).toList(),


      ),
    );
  }
}

Widget subjectTemplate(sub){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(

      margin: EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
      child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Text("${sub.subject_name}", style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10.0,),
              Text("${sub.faculty_name}",style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue[600]
              ),),
            ],
          )


    ),
  );
}
