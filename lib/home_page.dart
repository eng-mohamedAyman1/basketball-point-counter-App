import 'package:bloc2/logic/cubit/cubits.dart';
import 'package:bloc2/logic/cubit/states.dart';
import 'package:bloc2/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,Counter>(
      builder: (context, state) => SafeArea(
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
          body: Column(
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
                                fontSize: 20),
                          ),
                          Expanded(
                            child: Text(
                              "${BlocProvider.of<CounterCubit>(context).a}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                              ),
                            ),
                          ),
                          textButton(
                            function: () {
                              
                              BlocProvider.of<CounterCubit>(context).increment(team: "a", increment: 1);
                              
                            },
                            text: "Add 1 point",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textButton(
                            function: () {
                              
                                BlocProvider.of<CounterCubit>(context).increment(team: "a", increment: 2);
                              
                            },
                            text: "Add 2 point",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textButton(
                            function: () {
                              
                                BlocProvider.of<CounterCubit>(context).increment(team: "a", increment: 3);
                              
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
                              "${BlocProvider.of<CounterCubit>(context).b}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 200),
                            ),
                          ),
                          textButton(
                            function: () {
                              
                                BlocProvider.of<CounterCubit>(context).increment(team: "b", increment: 1);
                              
                            },
                            text: "Add 1 point",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textButton(
                            function: () {
                              
                                BlocProvider.of<CounterCubit>(context).increment(team: "b", increment: 2);
                              
                            },
                            text: "Add 2 point",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textButton(
                            function: () {
                              
                                BlocProvider.of<CounterCubit>(context).increment(team: "b", increment: 3);
                              
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
                function: () {
                  BlocProvider.of<CounterCubit>(context).start();
                },
                text: "Reset",
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    listener: (context, state) {
      
    },);
  }
}
