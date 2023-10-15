import 'package:flutter/material.dart';
import './Patient.dart';

class DoctorsMenu extends StatelessWidget {
  const DoctorsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue[50]),
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Patients',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.blue[800],
                      ),
                    ),
                  ],
                ),
              ),
              const AllPatient(),
            ],
          ),
        ),
      ),
    );
  }
}

class AllPatient extends StatelessWidget {
  const AllPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        child:  Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, offset: Offset(0, 0), blurRadius: 1),
                  ]),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Patient(name: 'Ashish', userID:
                    '1234'))
                  );
                },
                title: Text(
                  'Ashish',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
