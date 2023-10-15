import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthify/screens/Contacts.dart';
import 'package:healthify/screens/Prescription.dart';
import 'doctors_pane.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
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
                      'Preventions',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                      ),
                    ),
                    GestureDetector(
                      onTap: () async{
                        await FirebaseAuth.instance.signOut();
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
              const Preventions(),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Text(
                  'eDoctor',
                  style: TextStyle(
                      fontSize: 20, color: Colors.blue[800]),
                ),
              ),
              EDoctor(),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Text(
                  'Emergencies',
                  style: TextStyle(
                      fontSize: 20, color: Colors.blue[800]),
                ),
              ),
              Emergencies(),
            ],
          ),
        ),
      ),
    );
}

class Preventions extends StatelessWidget {
  const Preventions({Key? key}) : super(key: key);

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
              child: const ListTile(
                trailing: Icon(
                  Icons.dining_outlined,
                  color: Colors.orange,
                ),
                title: Text(
                  'My diet',
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

class EDoctor extends StatelessWidget {
  const EDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        child:  Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, offset: Offset(0, 0), blurRadius: 1),
                  ]),
              child: ListTile(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoctorsPane())
                  );
                },
                trailing: Icon(
                  Icons.medical_services,
                  color: Colors.red,
                ),
                title: Text(
                  'Book An appointment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
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
                    MaterialPageRoute(builder: (context) => AllPrescriptions())
                  );
                },
                trailing: Icon(
                  Icons.list,
                  color: Colors.black,
                ),
                title: Text(
                  'My Prescriptions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, offset: Offset(0, 0), blurRadius: 1),
                  ]),
              child: const ListTile(
                trailing: Icon(
                  Icons.delivery_dining_sharp,
                  color: Colors.blue,
                ),
                title: Text(
                  'Order Medicines',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, offset: Offset(0, 0), blurRadius: 1),
                  ]),
              child: const ListTile(
                trailing: Icon(
                  Icons.add_alert,
                  color: Colors.yellow,
                ),
                title: Text(
                  'Remainders',
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

class Emergencies extends StatelessWidget {
  const Emergencies({super.key});

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
              child: const ListTile(
                trailing: Icon(
                  Icons.priority_high_outlined,
                  color: Colors.red,
                ),
                title: Text(
                  'First Aid',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
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
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllContacts())
                  );
                },
                trailing: Icon(
                  Icons.phone_in_talk_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  'Emergency Contacts',
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


