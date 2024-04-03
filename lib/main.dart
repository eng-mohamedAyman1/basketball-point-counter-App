import 'package:flutter/material.dart';

import 'models.dart';


void main() {
  runApp(const MaterialApp(
    home:  MyApp(),
    debugShowCheckedModeBanner:false ,
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamA=0;
  int teamB=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Center(
            child: Text(
                "points counter ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body:  Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(
                              color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20

                          ),
                        ),
                        Expanded(
                          child: Text(
                            "$teamA",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                            ),
                          ),
                        ),
                        textButton(
                          function: (){
                            setState(() {
                              teamA=teamA+1;
                            });
                          },
                          text: "Add 1 point",
                        ),
                        const SizedBox(
                          height: 15,
                        ), textButton(
                          function: (){
                            setState(() {
                              teamA=teamA+2;
                            });
                          },
                          text: "Add 2 point",
                        ),
                        const SizedBox(
                          height: 15,
                        ), textButton(
                          function: (){
                            setState(() {
                              teamA=teamA+3;
                            });

                          },
                          text: "Add 3 point",
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        ],

                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "$teamB",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 200
                            ),
                          ),
                        ),
                        textButton(
                          function: (){
                            setState(() {
                              teamB=teamB+1;
                            });
                          },
                          text: "Add 1 point",
                        ),
                        const SizedBox(
                          height: 15,
                        ), textButton(
                          function: (){
                            setState(() {
                              teamB=teamB+2;
                            });
                          },
                          text: "Add 2 point",
                        ),
                        const SizedBox(
                          height: 15,
                        ), textButton(
                          function: (){
                            setState(() {
                              teamB=teamB+3;
                            });

                          },
                          text: "Add 3 point",
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                      ],

                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            textButton(
              function: (){
                setState(() {
                  teamA=0;
                  teamB=0;
                });

              },
              text: "Reset",
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}


