import 'dart:math';

import 'package:ExpenseApp/expense_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Color activeColor = Color(0xffFF2E63);
final Color inactiveColor = Color(0xff6C73AE);

class ExpenseHome extends StatefulWidget {
  const ExpenseHome({Key? key}) : super(key: key);

  @override
  _ExpenseHomeState createState() => _ExpenseHomeState();
}

class _ExpenseHomeState extends State<ExpenseHome> {
  bool income = true;
  void alterChoice() {
    setState(() {
      income = !income;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "< Back",
                  style: TextStyle(
                    color: activeColor,
                    fontSize: 20,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff0164C),
                  child: IconButton(
                      color: activeColor,
                      onPressed: () {},
                      icon: Icon(Icons.clear_all)),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Current Balance",
                  style: TextStyle(color: inactiveColor, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$24,347",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Color(0xff0E164C),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                )),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: income ? kActiveButton : null,
                        child: FlatButton(
                          onPressed: () {
                            alterChoice();
                          },
                          child: Text(
                            "Income",
                            style: income
                                ? KActiveButtonStyle
                                : KInActiveButtonStyle,
                          ),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: income ? null : kActiveButton,
                        child: FlatButton(
                          onPressed: () {
                            alterChoice();
                          },
                          child: Text(
                            "Expense",
                            style: income
                                ? KInActiveButtonStyle
                                : KActiveButtonStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Day",
                        style: kFormatTitle,
                      ),
                      Text(
                        "Week",
                        style: kFormatTitle,
                      ),
                      Text(
                        "Month",
                        style: kFormatTitle,
                      ),
                      Text(
                        "Year",
                        style: kFormatTitle,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Bar(fill: 0.5, day: "Mon", color: Colors.green),
                      Bar(fill: 0.75, day: "Tue", color: Colors.red),
                      Bar(fill: 0.25, day: "Wed", color: Colors.green),
                      Bar(fill: 0.1, day: "Thu", color: Colors.red),
                      Bar(fill: 0.9, day: "Fri", color: Colors.green),
                      Bar(fill: 0.69, day: "Sat", color: Colors.red),
                      Bar(fill: 0.32, day: "Sun", color: Colors.green),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffFFAEC5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    children: [
                      Container(
                        height: 5,
                        width: 100,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ExpenseDetails()));
                          },
                          child: Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.13,
                                width:
                                    MediaQuery.of(context).size.height * 0.13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("assets/images/user.jpeg"),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Humza Khan",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                        padding: EdgeInsets.all(10),
                                        child: CustomPaint(
                                          size: Size.infinite,
                                          painter: CirclePainter(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Your Card limt",
                                            style: TextStyle(
                                              color: Color(0xff9F7D43),
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "\$5,907 of \$9,385",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ))
              ],
            ),
          ))
        ],
      )),
    );
  }
}
//Styling

final kActiveButton = BoxDecoration(
  color: activeColor,
  borderRadius: BorderRadius.circular(10),
);

final KActiveButtonStyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
);

final KInActiveButtonStyle = TextStyle(
  color: inactiveColor,
  fontSize: 18,
);

final kFormatTitle = TextStyle(color: inactiveColor, fontSize: 16);

class Bar extends StatelessWidget {
  double fill;
  String day;
  Color color;
  Bar({Key? key, required this.fill, required this.day, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 5,
            height: MediaQuery.of(context).size.height * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: inactiveColor,
            ),
            child: FractionallySizedBox(
              heightFactor: fill,
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: color,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            day,
            style: kFormatTitle,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    Rect drawingRect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);

    final Paint paint2 = Paint();

    paint2.color = const Color(0xff9F3D43).withOpacity(0.3);

    paint2.style = PaintingStyle.stroke;
    paint2.strokeWidth = 7;

    final Paint highlight = Paint();

    highlight.color = activeColor;

    highlight.style = PaintingStyle.stroke;
    highlight.strokeCap = StrokeCap.square;
    highlight.strokeWidth = 7;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint2);

    canvas.drawArc(drawingRect, -pi / 2 + 0.35, pi - 0.35, false, highlight);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
