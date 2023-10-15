import 'package:flutter/material.dart';

class AllPrescriptions extends StatelessWidget {
  const AllPrescriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[50],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Prescription(url: 'https://imgv2-2-f.scribdassets.com/img/document/434141267/original/b0c6dba1dd/1696251819?v=1'),
              Prescription(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjFHmWDvkizeHttfYwu8qTT0pfIIlhzxGDvGXyeQO3hEIfKFE-dyeonxGMT_6Jl3aDV70&usqp=CAU'),
              Prescription(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-uo20loZTzsQ4ZKNMGC5T-EU-QNSDvFi5uOWdUlMvztTszN0uoMRJAGRaeXPqwX701Zs&usqp=CAU'),
              Prescription(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEVu4eeAMTEpbEEeJIL4-EoweVf1PUMe5n0ABrmTa5cHuazzjboP7qqk3tVUwENrv3pM0&usqp=CAU'),
              Prescription(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQARv7voyR-BXO368_ipyFr4M0qCsnDQdsVAzWJTxO25AU49zahgrky3Tws1_J9rM4apdc&usqp=CAU')
            ]
            ),
          ),
        )
      )
    );
  }
}

class Prescription extends StatelessWidget {
  final String url;
  const Prescription ({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child:
        Image.network(
          url,
        )
    );
  }
}

