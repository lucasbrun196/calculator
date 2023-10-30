import 'package:calculator_app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  HomeController controller;
  HomeView({super.key, required this.controller});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text('Calculator'),
        ),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 150,
              width: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Color.fromARGB(255, 40, 35, 35),
                  ],
                ),
              ),
              child: BlocBuilder<HomeController, HomeState>(
                bloc: widget.controller,
                builder: (BuildContext context, HomeState state) {
                  if (state.displayStatus == DisplayStatus.display) {
                    return Column(
                      children: [
                        Text(state.displayNumber!),
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(),
                    height: 100,
                    width: 95,
                    child: const Center(
                      child: Text(
                        'C',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    widget.controller.display(',');
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.white),
                      ),
                    ),
                    height: 100,
                    width: 95,
                    child: const Center(
                      child: Text(
                        ',',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.white),
                      ),
                    ),
                    height: 100,
                    width: 95,
                    child: const Center(
                      child: Text(
                        '%',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.white),
                      ),
                    ),
                    height: 100,
                    width: 95,
                    child: const Center(
                      child: Text(
                        '÷',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  widget.controller.display('7');
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.controller.display('8');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '8',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.controller.display('9');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '9',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      'X',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  widget.controller.display('4');
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.controller.display('5');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.controller.display('6');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  widget.controller.display('1');
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.controller.display('2');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.controller.display('3');
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  widget.controller.display('0');
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  width: 95,
                  child: const Center(
                    child: Text(
                      '=',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
