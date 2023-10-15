import 'package:flutter/material.dart';
import './VideoCall.dart';
import '../APIs/database.dart';

class Patient extends StatefulWidget {
  const Patient({super.key, required this.name, required this.userID});
  final String name;
  final userID;

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(color: Colors.blue[50]),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[800],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Call(callID: '1',userID: '2', userName: '3',)));
                    },
                    child: Icon(
                      Icons.video_call,
                      color: Colors.white,
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: SizedBox(
                width: 250,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 0))
                      ]),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Prescriptons',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[800],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: TextField(
                                onChanged: (text) {},
                                decoration: const InputDecoration(
                                  hintText: 'Add a new Prescription',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.blue,
                                  )),
                                ),
                              ),
                              actions: [
                                OutlinedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Add',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                OutlinedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancel'))
                              ],
                            ));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 5,
                        offset: Offset(0, 0))
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-vector%2Fgradient-prescription-template_23-2149751883.jpg&tbnid=lZrC03xZTj1kLM&vet=12ahUKEwjgqOPOs_eBAxU9zaACHe3OCFwQMygJegUIARCCAQ..i&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fdoctor-prescription&docid=tWjH3v5varznZM&w=626&h=626&q=Doctor%20prescription&ved=2ahUKEwjgqOPOs_eBAxU9zaACHe3OCFwQMygJegUIARCCAQ'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.moneycontrol.com%2Fnews%2Ftrends%2Fkerala-doctors-surprisingly-neat-handwriting-on-prescription-is-viral-9248171.html&psig=AOvVaw1s8W6RIkdvA_ktda6i6xm5&ust=1697436971054000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOCPvM6z94EDFQAAAAAdAAAAABAE'),
                  ),
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
