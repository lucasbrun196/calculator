import 'package:calculator_app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeView extends StatefulWidget {
  final HomeController controller;
  const HomeView({super.key, required this.controller});

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
          child: Text('Calculadora'),
        ),
      ),
      body: BlocBuilder<HomeController, HomeState>(
        bloc: widget.controller,
        builder: (context, state) {
          return Column(
            children: [
              Container(
                height: 150,
                width: 400,
                decoration: const BoxDecoration(color: Colors.black38),
                child: BlocBuilder<HomeController, HomeState>(
                  bloc: widget.controller,
                  builder: (BuildContext context, HomeState state) {
                    return Column(
                      children: [
                        Text(state.numbersOperation, style: const TextStyle(fontSize: 30)),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.controller.clear();
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(123, 35, 31, 31),
                            ),
                          ),
                        ),
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
                        widget.controller.showElements('.');
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(123, 35, 31, 31),
                            ),
                            left: BorderSide(
                              color: Color.fromARGB(123, 35, 31, 31),
                            ),
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
                      onTap: () {
                        widget.controller.removeLast();
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(123, 35, 31, 31),
                            ),
                            left: BorderSide(
                              color: Color.fromARGB(123, 35, 31, 31),
                            ),
                          ),
                        ),
                        height: 100,
                        width: 95,
                        child: const Center(
                          child: Text(
                            '<-',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.controller.showOperators('/');
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(123, 35, 31, 31),
                            ),
                            left: BorderSide(
                              color: Color.fromARGB(123, 35, 31, 31),
                            ),
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
                      widget.controller.showElements('7');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                        ),
                      ),
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
                      widget.controller.showElements('8');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                      widget.controller.showElements('9');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                    onTap: () {
                      widget.controller.showOperators('*');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                      widget.controller.showElements('4');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                        ),
                      ),
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
                      widget.controller.showElements('5');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                      widget.controller.showElements('6');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                    onTap: () {
                      widget.controller.showOperators('-');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                      widget.controller.showElements('1');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                        ),
                      ),
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
                      widget.controller.showElements('2');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                      widget.controller.showElements('3');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                    onTap: () {
                      widget.controller.showOperators('+');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
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
                    widget.controller.showElements('0');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Color.fromARGB(123, 35, 31, 31),
                          ),
                        ),
                      ),
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
                  BlocBuilder<HomeController, HomeState>(
                    bloc: widget.controller,
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          widget.controller.equal();
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Color.fromARGB(123, 35, 31, 31),
                              ),
                              left: BorderSide(
                                color: Color.fromARGB(123, 35, 31, 31),
                              ),
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
                      );
                    },
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
