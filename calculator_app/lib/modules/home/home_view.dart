import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 36, 68, 143),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
              child: Container(
                height: 120,
                decoration:
                    const BoxDecoration(color: Color.fromARGB(136, 0, 0, 0)),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              height: 520,
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('7'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('8'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('9'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('X'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('4'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('5'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('6'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('-'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('1'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('2'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('3'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('+'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('C'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('0'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('%'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                fixedSize: const Size(80, 80),
                                backgroundColor:
                                    const Color.fromARGB(255, 21, 139, 113)),
                            onPressed: () {},
                            child: const Text('='),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
