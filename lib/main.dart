import 'package:flutter/material.dart';
import 'components.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   String expression = '';
   String answer = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 75),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Expression = ',style: TextStyle(fontSize: 25),),
                    Text(expression,style:const TextStyle(fontSize: 45,fontWeight: FontWeight.bold),)
                  ],
                 )
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Answer = ',style: TextStyle(fontSize: 25),),
                    Text(answer,style:const TextStyle(fontSize: 45,fontWeight: FontWeight.bold),)
                  ],
                 )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        darkButton(tit: 'AC',onpress: () {
                          expression='';
                          answer='0';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '+/-',onpress: () {
                          
                        },),
                        darkButton(tit: '%',onpress: () {
                          expression+='%';
                          setState(() {
                            
                          });
                        },),
                        lightButton(tilt: '/',onpress: () {
                          expression+='/';
                          setState(() {
                            
                          });
                        },)
                      ],
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        darkButton(tit: '7',onpress: () {
                          expression+='7';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '8',onpress: () {
                          expression+='8';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '9',onpress: () {
                          expression+='9';
                          setState(() {
                            
                          });
                        },),
                        lightButton(tilt: 'x',onpress: () {
                          expression+='x';
                          setState(() {
                            
                          });
                        },)
                      ],
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        darkButton(tit: '4',onpress: () {
                          expression+='4';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '5',onpress: () {
                          expression+='5';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '6',onpress: () {
                          expression+='6';
                          setState(() {
                            
                          });
                        },),
                        lightButton(tilt: '-',onpress: () {
                          expression+='-';
                          setState(() {
                            
                          });
                        },)
                      ],
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        darkButton(tit: '1',onpress: () {
                          expression+='1';setState(() {
                            
                          });
                        },),
                        darkButton(tit: '2',onpress: () {
                          expression+='2';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '3',onpress: () {
                          expression+='3';
                          setState(() {
                            
                          });
                        },),
                        lightButton(tilt: '+',onpress: () {
                          expression+='+';
                          setState(() {
                            
                          });
                        },)
                      ],
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        darkButton(tit: 'DEL',onpress: () {
                          expression+='DEL';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '0',onpress: () {
                          expression+='0';
                          setState(() {
                            
                          });
                        },),
                        darkButton(tit: '.',onpress: () {
                          expression+='.';
                          setState(() {
                            
                          });
                        },),
                        lightButton(tilt: '=',onpress: () {
                          resultant();
                          setState(() {
                            
                          });
                        },)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void resultant(){
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval =exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
