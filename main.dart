import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_turtle/flutter_turtle.dart';

import 'calcule_perverse.dart';


void main() {
  int n, i, j, ok = 0, nmx, nmy, u = 1, ok2 = 0, ok3 = 0;
  int ofx,ofy;
  int ciclica;
  int all,other;
  String axa1, axa2,cother;
  // ordered.orx = 10;
  List<grp> g = List.generate(20, (index) => grp(line: "", point: false));    // grp g[20];
  List<crd> cr = List.generate(20, (index) => crd(x: 0, y: 0));    // crd cr[20];

  int cx = 0, cy = 0;
  int px = 0, py = 0;

  // print('g[0].orx: ${g[0].orx}, g[0].ory: ${g[0].ory}');
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 51, 61, 68),
        useMaterial3: true,
      ),
      
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {

  @override
    _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>  {
  static const immersiveModeDelaySeconds = 4;

  int value = 0;
  bool switchValue = false;
  
  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: immersiveModeDelaySeconds), () {      // kk-ul asta iti inchida bara de jos cu butoane sa fie mai sex
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    });
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thermodynamix'),
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 176, 184, 95),
        backgroundColor: const Color.fromARGB(255, 40, 39, 39),
      ), //AppBar
      
      body: Column (
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: 
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('X', style: TextStyle( fontSize: 20,),),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.black
                      ),
                    )
                ),
                Padding(
                  padding:EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                  child: Switch(
                  value: switchValue,
              onChanged: (onChanged) {
                setState(() {
                  switchValue= onChanged;
                });
              },
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red,
              thumbColor: MaterialStateProperty.all(switchValue
              ? const Color.fromARGB(245, 241, 238, 238)
              : const Color.fromARGB(245, 51, 4, 143)
              ),
                  ),

                ),
              
              ],
            ),
            
          ),

           Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Stack(
              children: [
        
            Container(
              
              width: 410,
              height: 200,
              color: Color.fromARGB(255, 75, 75, 75),

            ),
        //         TurtleView(
        //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        //           commands: [
        //   PenDown(),
        //   SetColor((_) => Color.fromARGB(255, 255, 94, 0)),
        //   SetStrokeWidth((_) => 3),
        //       Forward((_) => 100),
        //       Right((_) => 90),
        //       Forward((_) => 400),
        //       Right((_) => 90),
        //       Forward((_) => 200),
        //       Right((_) => 90),
        //       Forward((_) => 400),
        //        Right((_) => 90),
        //       Forward((_) => 200),
              
              
        //   PenUp()
        // ],
        // ),

          Padding(padding: EdgeInsets.fromLTRB(5, 95, 0, 0),
          child:  
          TurtleView(
            commands: [
          PenDown(),
          SetColor((_) => Color.fromARGB(255, 170, 194, 13)),
          SetStrokeWidth((_) => 9),
              Forward((_) => 100),
              Right((_) => 90),
              Forward((_) => 400),
              Right((_) => 90),
              Forward((_) => 200),
              Right((_) => 90),
              Forward((_) => 400),
               Right((_) => 90),
              Forward((_) => 200),
              
              
          PenUp()
        ],
          )
          
        
          
          ),
        Padding(padding: EdgeInsetsDirectional.fromSTEB(50, 150, 0,0 ),
          child: AnimatedTurtleView(
            
            commands:[
        PenDown(),
        SetColor((_) => Color.fromARGB(255, 255, 51, 51)),
        SetStrokeWidth((_) => 2),
      
      
            Forward((_) => 50),
            Right((_) => 20),
            Forward((_) => 50),
            Forward((_) => 50),
                Right((_) => 90),
            Forward((_) => 50),
                Forward((_) => 50),
          Right((_) => 18),
        PenUp(),
      ],),
        ),




              ],
            ),

           ),
                
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                          child: Container(     
                            width: 300,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xFA1A1A1A),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4, 
                                  color: Color(0xFA848948),
                                  offset: Offset(0, 2),
                                  spreadRadius: 3,
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0,0,0,0),
                                child: IconButton(
                                  icon: Image.asset('images/arrow_down.png'),
                                  iconSize: MediaQuery.sizeOf(context).width * 0.15,
                                  onPressed: () { },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: IconButton(
                                  icon: Image.asset('images/arrow_down.png'),
                                  iconSize: MediaQuery.sizeOf(context).width * 0.15,
                                  onPressed: () { },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: IconButton(
                                  icon: Image.asset('images/arrow_down.png'),
                                  iconSize: MediaQuery.sizeOf(context).width * 0.15,
                                  onPressed: () { },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: IconButton(
                                  icon: Image.asset('images/arrow_down.png'),
                                  iconSize: MediaQuery.sizeOf(context).width * 0.15,
                                  onPressed: () { },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
           
  

                     Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(25, 0,0 ,0,),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xFA848948),
                            shape: BoxShape.circle,
                          ),
                          
                          child: const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                              child: Text("Run", style: TextStyle(fontWeight: FontWeight.bold),)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
                Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Container(
                        width: 300,
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Color(0xFA1A1A1A),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0xFA848948),
                              offset: Offset(0, 2,),
                              spreadRadius: 5,
                            )
                          ],
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          shape: BoxShape.rectangle,
                        ),
                        alignment: const AlignmentDirectional(-1, -1),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 10),
                                child: IconButton(
                                    icon: Image.asset('images/arrow_down.png'),
                                    iconSize: MediaQuery.sizeOf(context).width * 0.15,
                                    onPressed: () { },
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(120, 0, 40, 10),
                                 child: IconButton(
                                    icon: Image.asset('images/arrow_down.png'),
                                    iconSize: MediaQuery.sizeOf(context).width * 0.15,
                                    onPressed: () { },
                                  ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text( 'DIRECTIE', style: TextStyle(color: Colors.red.withOpacity(1.0)),),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Container(
                          width: 370,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Color(0xFA1A1A1A),
                            boxShadow: [
                              BoxShadow( blurRadius: 4, color: Color(0xFA848948), offset: Offset( 0, 2 ), spreadRadius: 5,)
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          alignment: const AlignmentDirectional(-1, -1),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('PV'),
                                      style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(38, 214, 213, 213),
                                      foregroundColor: Color.fromARGB(255, 246, 245, 245)
                                    ),
                
                                    ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('VT'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(38, 214, 213, 213),
                                      foregroundColor: Color.fromARGB(255, 246, 245, 245)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('PT'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(38, 214, 213, 213),
                                      foregroundColor: Color.fromARGB(255, 246, 245, 245)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Text('Axe', style: TextStyle(color: Colors.red.withOpacity(1.0)),),
                        ),
                      )
                    ],
                  ), 
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 38, 45, 52),
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 38, 0, 255),
                        width: 2,
                      ),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () => setState(() { value -= 1; }),
                        child: Text('-', style: TextStyle( fontSize: 20,),),
                      ),

                      Text(value.toString(), style: TextStyle(color: Colors.white,fontSize: 20),),

                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () => setState(() { value += 1; }),
                        child: const Text('+', style: TextStyle( fontSize: 20,),)
                      ),
                    ],
                  )
                  )
                )
              ],
            ),
          );
  }
}
