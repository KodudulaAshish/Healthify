import 'package:flutter/material.dart';
import 'VideoCall.dart';

class DoctorsPane extends StatelessWidget {
  const DoctorsPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 7,
            crossAxisSpacing: 7,
            children: [
              Doctor(name: 'Varun', specialization: 'General Surgeon', request: true),
              Doctor(name: 'Micheal', specialization: 'Pediatrician', request: true),
              Doctor(name: 'Kavya', specialization: 'Gynaecologist', request: true),
              Doctor(name: 'Abhinav', specialization: 'Dentist', request: true),
              Doctor(name: 'Rizwan', specialization: 'ENT Specialist', request: true),
              Doctor(name: 'Akash', specialization: 'Physiologist', request: true),
            ],
          ),
        ),
      )
    );
  }
}


class Doctor extends StatefulWidget {
  String name;
  String specialization;
  bool request;
  Doctor({super.key, required this.name, required this.specialization, required this.request});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 5,
              offset: Offset(0, 0),
            )
          ]
        ),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.specialization),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Call(callID: '1',userID: '2', userName: '3',)));
                },
                  child: Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
              ),
            ],
          ),
        )
      )
    );
  }
}
