import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
  int x = 0;
    Random random = Random();

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(

        child: Scaffold(
        appBar: AppBar(
          title: const Center(child:  Text("Lottery App")),
        ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Center(
                child: Text("the random number is  $x" , style:const TextStyle(
                  fontSize: 15,
                ),),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                height: 250,
                width: 250,
                decoration:  BoxDecoration(
                  color: x == 5 ? Colors.grey
                      .withOpacity(.2) : Colors.red
                      .withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 5 ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.done_all , color: Colors.green , size: 35,),
                      const SizedBox(),
                      Text(x == 5 ? 'Your  winner number is 5 ' : 'try Again'),
                    ],
                  ) :
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.dangerous , color: Colors.red , size: 35,),
                      const SizedBox(),
                      Text(x == 5 ? 'Your  winner number is 5 ' : 'try Again'),
                    ],
                  ),
                ),
              ),
            ],
          ),


          floatingActionButton: FloatingActionButton(
            child:const Icon(Icons.refresh),
            onPressed: (){
              x = random.nextInt(6);
              setState(() {
              });
            },
          ),


        ),
      ),
    );
  }
}
