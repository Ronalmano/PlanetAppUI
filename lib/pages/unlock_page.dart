import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:slideapp/pages/home_page.dart';
import 'package:slideapp/util/color.dart';

class UnlockPage extends StatefulWidget {
  const UnlockPage({super.key});

  @override
  State<UnlockPage> createState() => _UnlockPageState();
}

class _UnlockPageState extends State<UnlockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15.0, bottom: 50, left: 20, right: 15),
        child: Column(
          children: [
            Text(
              "Planet App",
              style: TextStyle(
                  color: const Color(0xffffffff),
                  fontFamily: 'Avenir',
                  fontSize: 44,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Know more about the planets in our Solor System",
                style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 20,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/Images/earth.png"),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SlideAction(
                onSubmit: () {
                  // Do something
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                borderRadius: 12,
                elevation: 0.0,
                innerColor: Colors.deepPurple,
                outerColor: Colors.deepPurple[200],
                sliderButtonIcon: Icon(
                  Icons.lock_open,
                  color: Colors.white,
                ),
                text: "Slide to Unlock",
                sliderRotate: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
