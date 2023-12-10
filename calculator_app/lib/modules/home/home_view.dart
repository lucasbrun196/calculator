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
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 20, 19, 50)),
        child: SafeArea(
          child: BlocBuilder<HomeController, HomeState>(
            bloc: widget.controller,
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    height: screenHeight * 0.33,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 20, 19, 50),
                    ),
                    child: BlocBuilder<HomeController, HomeState>(
                      bloc: widget.controller,
                      builder: (BuildContext context, HomeState state) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40, right: 10),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  state.numbersOperation,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            widget.controller.clear();
                          },
                          child: const Icon(
                            size: 30,
                            Icons.remove_circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            widget.controller.removeLast();
                          },
                          child: const Icon(
                            size: 30,
                            Icons.backspace,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Divider(
                      color: Color.fromARGB(142, 255, 255, 255),
                      thickness: 1,
                      indent: 16,
                      endIndent: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('7');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '7',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('8');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '8',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('9');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '9',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showOperators('/');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(239, 46, 162, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '/',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('4');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('5');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('6');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '6',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showOperators('-');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(239, 46, 162, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('1');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('2');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('3');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showOperators('*');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(239, 46, 162, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'X',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('.');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      ',',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showElements('0');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(42, 42, 67, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                widget.controller.showOperators('+');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(239, 46, 162, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.controller.equal();
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 75,
                                  width: 300,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(239, 46, 162, 1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '=',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
