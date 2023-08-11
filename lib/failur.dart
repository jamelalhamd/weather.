import 'package:flutter/material.dart';
import 'package:weather1/Search.dart';
import 'package:weather1/nodata.dart';

class failur extends StatelessWidget {
  const failur({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          elevation: 50,
          backgroundColor: Colors.orange.shade500,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Search(),
                    ));
              },
              icon: const Icon(Icons.search, size: 30),
            )
          ],
          title: const Text(
            " Weather f",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),

      body: nodata(),
    );
  }
}
