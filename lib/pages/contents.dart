import 'package:flutter/material.dart';
import 'package:slideapp/util/color.dart';
import 'package:slideapp/util/data.dart';

class ContentPage extends StatefulWidget {
  PlanetInfo detailString;
  ContentPage({required this.detailString, super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 300,
                        ),
                        Text(
                          widget.detailString.name,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 56,
                            fontWeight: FontWeight.w900,
                            color: primaryTextColor,
                          ),
                        ),
                        Text(
                          'Solar Sytem',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 31,
                            fontWeight: FontWeight.w300,
                            color: primaryTextColor,
                          ),
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          widget.detailString.description,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: primaryTextColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.only(left: 32.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.detailString.images.length,
                      itemBuilder: ((context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              widget.detailString.images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -80,
              child: Image.asset(widget.detailString.iconImage),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Text(
                widget.detailString.position.toString(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 247,
                  fontWeight: FontWeight.w900,
                  color: primaryTextColor.withOpacity(0.1),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ],
        ),
      ),
    );
  }
}
