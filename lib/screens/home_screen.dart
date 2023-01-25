import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color(0xff5ee8c5),
        Color(0xff30bad6),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        MainContent(),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30bad6),
      width: double.infinity,
      height: double.infinity,
      child: TextButton(
        onPressed: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            color: const Color(0xff0098fa),
            child: const Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xff30bad6),
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll.png'),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold);
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('11°', style: textStyle),
          const Text('Miercoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}
