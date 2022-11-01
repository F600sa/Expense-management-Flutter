import 'package:flutter/material.dart';
import 'income.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1600), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyIncomPage(
                  title: 'Incom page',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: (const MyPhoto()),
          ),
      
        ],
      ),
    ));
  }
}

class MyPhoto extends StatelessWidget {
  const MyPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    AssetImage assetImage = AssetImage('images/jaeeb.png');
    Image image = Image(image: assetImage);
    Theme(
      data: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black),
      child: Scaffold(
          // body: Center(...),
          ),
    );

    return Container(
      // decoration: new BoxDecoration(color: Colors.red),

      child: image,
    );
  }
}
