import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: MagicBallPage()
      ),
    );
    class MagicBallPage extends StatelessWidget {
      const MagicBallPage({ Key? key }) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return 
        Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: const MagicBall(), 
        );
      }
    }
    class MagicBall extends StatefulWidget {
      const MagicBall({ Key? key }) : super(key: key);
    
      @override
      _MagicBallState createState() => _MagicBallState();
    }
    
    class _MagicBallState extends State<MagicBall> {
    int ballNumber=1 ;
    void randomBall(){
          setState(() {
          ballNumber=Random().nextInt(4) + 1 ;
        },
      );
      
    }

      @override
      Widget build(BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Expanded(
                 child:TextButton(
                   onPressed: randomBall,
                   child: Image.asset(
                     'images/ball$ballNumber.png'
                     ),
                 ),
               ),
             ]
        );
      }
    }

