import 'package:flutter/material.dart';

import 'package:weather1/Search.dart';
import 'package:weather1/constant.dart';
import 'package:weather1/modals/weathermodals.dart';

class weatherscreen extends StatefulWidget {
  const weatherscreen({super.key});

  @override
  State<weatherscreen> createState() => _weatherscreenState();
}

class _weatherscreenState extends State<weatherscreen> {
  WeatherModal? wth = weathemodel1;

  @override
  Widget build(BuildContext context) {





    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
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
            " Weather",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 150,
        ),
        Text(
          City_name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          wth!.date,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.sunny,
              size: 70,
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              '${wth!.tem}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                Text(
                  "Max Tem : ${wth?.MAXtem}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  "Min Tem : ${wth?.MINtem}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          wth!.state,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
