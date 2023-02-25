import 'package:flutter/material.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  String input = '';
  String operator = '';
  int memory = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey[700],
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text(
                input,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.w400),
              ),
              height: 150,
              width: 340,
              decoration: BoxDecoration(color: Colors.grey[700]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              int input2 = int.parse(input);
                              setState(() {
                                memory += input2;
                                input = '';
                              });
                            },
                            child: Text(
                              'M',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 38),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input = '';
                              });
                            },
                            child: Text('C',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 40)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input = memory.toString();
                              });
                            },
                            child: Text('MR',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              operator = '/';
                              setState(() {
                                input += '/';
                              });
                            },
                            child: Text('÷',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              //padding: MaterialStateProperty.all(EdgeInsets.all(2.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.redAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '7';
                              });
                            },
                            child: Text(
                              '7',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 50),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '8';
                              });
                            },
                            child: Text('8',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '9';
                              });
                            },
                            child: Text('9',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              operator = '*';
                              setState(() {
                                input += '*';
                              });
                            },
                            child: Text('X',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 40)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.redAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '4';
                              });
                            },
                            child: Text(
                              '4',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 50),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              //padding: MaterialStateProperty.all(EdgeInsets.all(2.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '5';
                              });
                            },
                            child: Text('5',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '6';
                              });
                            },
                            child: Text('6',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              operator = '-';
                              setState(() {
                                input += '-';
                              });
                            },
                            child: Text('-',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 60)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.redAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '1';
                              });
                            },
                            child: Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 50),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '2';
                              });
                            },
                            child: Text('2',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '3';
                              });
                            },
                            child: Text('3',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              operator = '+';
                              setState(() {
                                input += '+';
                              });
                            },
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 45)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.redAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input = '0';
                                //enteredText = enteredText.substring(0, enteredText.length - 1);
                              });
                            },
                            child: Text(
                              'AC',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.greenAccent),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '0';
                              });
                            },
                            child: Text('0',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              //padding: MaterialStateProperty.all(EdgeInsets.all(2.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                input += '.';
                              });
                            },
                            child: Text(',',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[300]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              List myList = input.split(operator);
                              double number1 = double.parse(myList[0]);
                              double number2 = double.parse(myList[1]);

                              switch (operator) {
                                case '+':
                                  result = number1 + number2;
                                  break;
                                case '-':
                                  result = number1 - number2;
                                  break;
                                case '*':
                                  result = number1 * number2;
                                  break;
                                case '/':
                                  result = number1 / number2;
                                  break;
                              }
                              setState(() {
                                input = result.toString();
                              });
                            },
                            child: Text('=',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.orangeAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
