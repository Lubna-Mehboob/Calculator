import 'package:flutter/material.dart';
import 'package:simple_calculator/custom_button.dart';
//import 'package:simple_calculator/custom_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String outPut = '0'; //Current value to be dispalyed
  String lastNumber = ''; //The first number in operator
  String operator = ''; //Stores the selected operator
  String add = '+';

  String sub = '-';
  String div = '/';
  String mul = 'x';

  void calculateResult() {
    double firstNumber = double.parse(lastNumber);
    double secondNumber = double.parse(outPut.replaceAll(operator, ''));
    double result = 0;

    if (operator == '+') {
      result = firstNumber + secondNumber;
    } else if (operator == '-') {
      result = firstNumber - secondNumber;
    } else if (operator == 'x') {
      result = firstNumber * secondNumber;
    } else if (operator == '/') {
      if (secondNumber != 0) {
        result = firstNumber / secondNumber;
      } else {
        outPut = 'Error:Cannot divide by zero';
        return;
      }
    }
    outPut = result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Simple calculator'),
        centerTitle: true,
      ),
      //The Column widget will allow us to have mutiple widgets inside one widget
      body: Expanded(
        child: Column(
          children: [
            //Output
            SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 146, 212, 148),
                  Color.fromARGB(255, 216, 234, 243),
                  Color.fromARGB(255, 245, 235, 149),
                  Color.fromARGB(255, 197, 203, 240),
                  Color.fromARGB(255, 236, 203, 201),
                ])),
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(30),
                child: Text(
                  outPut,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            const Spacer(),

            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonName: 'C',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      outPut = '0'; //clear display
                      lastNumber = ''; //reset stored values
                      operator = ''; //reset operator

                      //Function of clear Button
                    });
                  },
                ),
                CustomButton(
                    buttonName: '0',
                    buttonColor: Colors.green,
                    txtStyle: const TextStyle(color: Colors.black),
                    callBackfun: () {
                      setState(() {
                        if (outPut == '0') {
                          outPut = '0';
                        } else {
                          outPut += '0';
                        }
                        //Function of button 1
                      });
                    }),
                CustomButton(
                  buttonName: '=',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      calculateResult(); //perform the operation
                      //Function of =to button
                    });
                  },
                ),
                CustomButton(
                  buttonName: '/',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      lastNumber = outPut;

                      operator = '/';
                      outPut = div;

                      //Function of button 3
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Button 1
                CustomButton(
                    buttonName: '1',
                    buttonColor: Colors.green,
                    txtStyle: const TextStyle(color: Colors.black),
                    callBackfun: () {
                      setState(() {
                        if (outPut == '0') {
                          outPut = '1';
                        } else {
                          outPut += '1';
                        }
                        //Function of button 1
                      });
                    }),
                //Button 2
                CustomButton(
                  buttonName: '2',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      if (outPut == '0') {
                        outPut = '2';
                      } else {
                        outPut += '2';
                      }
                      //Function of button 1
                    });
                  },
                ),
                //Button 3
                CustomButton(
                  buttonName: '3',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      if (outPut == '0') {
                        outPut = '3';
                      } else {
                        outPut += '3';
                      }
                      //Function of button 3
                    });
                  },
                ),
                CustomButton(
                  buttonName: '+',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      lastNumber = outPut;

                      operator = '+';
                      outPut = add;

                      //Function of button 3
                    });
                  },
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Button 4
                CustomButton(
                  buttonName: '4',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      //Function of button 1
                      if (outPut == '0') {
                        outPut = '4';
                      } else {
                        outPut += '4';
                      }
                    });
                  },
                ),
                //Button 5
                CustomButton(
                  buttonName: '5',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      if (outPut == '0') {
                        outPut = '5';
                      } else {
                        outPut += '5';
                      }
                      //Function of button 1
                    });
                  },
                ),
                //Button 6
                CustomButton(
                  buttonName: '6',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      if (outPut == '0') {
                        outPut = '6';
                      } else {
                        outPut += '6';
                      }
                      //Function of button 1
                    });
                  },
                ),
                CustomButton(
                  buttonName: '-',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      lastNumber = outPut;
                      outPut = sub;
                      operator = '-';
                      //Function of button 3
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Button 4
                CustomButton(
                  buttonName: '7',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      if (outPut == '0') {
                        outPut = '7';
                      } else {
                        outPut += '7';
                      }
                      //Function of button 1
                    });
                  },
                ),
                //Button 8
                CustomButton(
                  buttonName: '8',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      //Function of button 1
                      if (outPut == '0') {
                        outPut = '8';
                      } else {
                        outPut += '8';
                      }
                    });
                  },
                ),
                //Button 9
                CustomButton(
                  buttonName: '9',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      if (outPut == '0') {
                        outPut = '9';
                      } else {
                        outPut += '9';
                      }
                      //Function of button 1
                    });
                  },
                ),
                CustomButton(
                  buttonName: 'x',
                  buttonColor: Colors.green,
                  txtStyle: const TextStyle(color: Colors.black),
                  callBackfun: () {
                    setState(() {
                      lastNumber = outPut;
                      outPut = mul;
                      operator = 'x';

                      //Function of button 3
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
