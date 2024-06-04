import 'package:assigmnent/card_model.dart';
import 'package:flutter/material.dart';

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 15,
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(10),
                child: Icon(
                  Icons.chevron_left,
                  size: 40,
                ),
              ),
              Text(
                'Search Food',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 70,
                width: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/avatar.png',
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(31, 168, 166, 166)),
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintText: 'Spice Food',
                      hintStyle:
                          TextStyle(color: Colors.black87, fontSize: 20)),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'images/equalizer3.png',
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Found\n80 results',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [Cardmodel(), Cardmodel()],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [Cardmodel(), Cardmodel()],
          )
        ]),
      ),
    ));
  }
}
