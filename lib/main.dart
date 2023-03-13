import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Calculator')),
        body: Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({
    super.key,
  });

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String text = '';
// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = text;

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      text = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.45,
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.width * 0.55,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '7';
                                  });
                                },
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '8';
                                  });
                                },
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '9';
                                  });
                                },
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '/';
                                  });
                                },
                                child: Text(
                                  '/',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '4';
                                  });
                                },
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '5';
                                  });
                                },
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '6';
                                  });
                                },
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '*';
                                  });
                                },
                                child: Text(
                                  'X',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '1';
                                  });
                                },
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '2';
                                  });
                                },
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '3';
                                  });
                                },
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '-';
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '.';
                                  });
                                },
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '0';
                                  });
                                },
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '00';
                                  });
                                },
                                child: Text(
                                  '00',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text += '+';
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    if (text != null && text.length > 0) {
                                      text = text.substring(0, text.length - 1);
                                    }
                                  });
                                },
                                child: Text(
                                  '>>',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    text = '';
                                  });
                                },
                                child: Text(
                                  'CLEAR',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: OutlinedButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  setState(() {
                                    equalPressed();
                                  });
                                },
                                child: Text(
                                  '=',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
