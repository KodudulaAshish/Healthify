import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AllContacts extends StatelessWidget {
  const AllContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.blue[50],
          ),
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: const [
              Contact(
                name: 'Ambulance',
                number: '',
              ),
              Contact(
                name: 'Kamrup Hospital',
                number: '6281562044',
              ),
              Contact(
                name: 'GNRC',
                number: '',
              ),
              Contact(
                name: 'Amingaon PS',
                number: '',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key, required this.name, required this.number});
  final String name;
  final String number;

  void _dial(String number) async {
    var url = Uri.parse('tel:'+ number);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(color: Colors.white, offset: Offset(0, 0), blurRadius: 1),
          ]),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            _dial(number);
          },
          child: Icon(
            Icons.phone,
            color: Colors.white,
          ),
          mini: true,
        ),
      ),
    );
  }
}
