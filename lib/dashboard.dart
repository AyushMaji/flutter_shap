// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shape/widgets/circle.dart';
import 'package:flutter_shape/widgets/rectangle.dart';
import 'package:flutter_shape/widgets/triangle.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  // Each time I click the below button bar, the relevant shape should be added into this list.
  List<Widget> value = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Shape"),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 50,
        width: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // rectangle BTN  ======== >>>
              InkWell(
                onTap: () {
                  setState(() {
                    value.add(Container(
                      height: 90,
                      width: 90,
                      child: CustomPaint(
                          painter: RectanglePainter(color: Colors.black)),
                    )); // add widgets (Shape) into list
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: CustomPaint(
                      painter: RectanglePainter(color: Colors.white)),
                ),
              ),
              // Circle BTN  ======== >>>
              InkWell(
                onTap: () {
                  setState(() {
                    value.add(Container(
                      height: 90,
                      width: 90,
                      child: CustomPaint(
                          painter: CirclePainter(color: Colors.black)),
                    ));
                  }); // add widgets (Shape) into list
                },
                child: Container(
                  height: 90,
                  width: 90,
                  child:
                      CustomPaint(painter: CirclePainter(color: Colors.white)),
                ),
              ),
              // Triangle BTN  ======== >>>
              InkWell(
                onTap: () {
                  setState(() {
                    value.add(Container(
                      height: 90,
                      width: 90,
                      child: CustomPaint(
                          painter: DrawTriangleShape(color: Colors.black)),
                    ));
                  }); // add widgets (Shape) into list
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: CustomPaint(
                      painter: DrawTriangleShape(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // the pre drawn shapes in upper portion
            Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        value.clear();
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: CustomPaint(
                          painter: RectanglePainter(color: Colors.black)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        value.clear();
                      });
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      child: CustomPaint(
                          painter: CirclePainter(color: Colors.black)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        value.clear();
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: CustomPaint(
                          painter: DrawTriangleShape(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            // when I click the below button bar, the relevant shape should be show to upper portion.
            Container(
              height: 600,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: value.length,
                  itemBuilder: (BuildContext context, int index) {
                    return value[index];
                  }),
            )
          ],
        ),
      ),
    );
  }
}
