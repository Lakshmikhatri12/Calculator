import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:myapp/components/myButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var userinput = "";
var answer = "";

class _HomeScreenState extends State<HomeScreen> {
  void equalPress() {
    String finaluserinput = userinput.replaceAll("x", "*");
    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      userinput.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    answer.toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        onpress: () {
                          userinput = "";
                          answer = "";
                          setState(() {});
                        },
                        title: "AC",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "+/-";
                          setState(() {});
                        },
                        title: "+/-",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "%";
                          setState(() {});
                        },
                        title: "%",
                      ),
                      MyButton(
                        color: Colors.orange,
                        title: "/",
                        onpress: () {
                          userinput += "/";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        onpress: () {
                          userinput += "7";
                          setState(() {});
                        },
                        title: "7",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "8";
                          setState(() {});
                        },
                        title: "8",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "9";
                          setState(() {});
                        },
                        title: "9",
                      ),
                      MyButton(
                        color: Colors.orange,
                        title: "x",
                        onpress: () {
                          userinput += "x";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        onpress: () {
                          userinput += "4";
                          setState(() {});
                        },
                        title: "4",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "5";
                          setState(() {});
                        },
                        title: "5",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "6";
                          setState(() {});
                        },
                        title: "6",
                      ),
                      MyButton(
                        color: Colors.orange,
                        title: "-",
                        onpress: () {
                          userinput += "-";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        onpress: () {
                          userinput += "1";
                          setState(() {});
                        },
                        title: "1",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "2";
                          setState(() {});
                        },
                        title: "2",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += "3";
                          setState(() {});
                        },
                        title: "3",
                      ),
                      MyButton(
                        color: Colors.orange,
                        title: "+",
                        onpress: () {
                          userinput += "+";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        onpress: () {
                          userinput += "0";
                          setState(() {});
                        },
                        title: "0",
                      ),
                      MyButton(
                        onpress: () {
                          userinput += ".";
                          setState(() {});
                        },
                        title: ".",
                      ),
                      MyButton(
                        onpress: () {
                          userinput =
                              userinput.substring(0, userinput.length - 1);
                          setState(() {});
                        },
                        title: "DEL",
                      ),
                      MyButton(
                        color: Colors.orange,
                        title: "=",
                        onpress: () {
                          equalPress();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
