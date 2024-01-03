import 'package:flutter/material.dart';
class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double sum1 = 0.0,sum2 = 0.0;
  double result = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator ",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: firstController,
              decoration: const InputDecoration(
                hintText: 'Enter a Number',
                hintStyle:   TextStyle(color: Colors.black),
               ),
               
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: secondController,
              decoration: const InputDecoration(
                hintText: 'Enter a Second Number',
                hintStyle:  TextStyle(color: Colors.black),
               ),
               
            ),
          ),
         const SizedBox(height: 20,),
          Text('$result',style: const TextStyle(fontSize: 35),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
            ElevatedButton(
              onPressed: (){
                 setState(() {
                
              });
               sum1 = double.parse(firstController.text);
             sum2 = double.parse(secondController.text);
              result = sum1 / sum2;
            }, 
            child:const Text('Division')
            ),
            ElevatedButton(
              onPressed: ()
            {
               setState(() {
                
              });
              sum1 = double.parse(firstController.text);
             sum2 = double.parse(secondController.text);
              result = sum1 *  sum2;
            }, 
            child:const Text('Multiplication')
            ),
            ElevatedButton(
              onPressed: ()
            {
              setState(() {
                
              });
            sum1 = double.parse(firstController.text);
             sum2 = double.parse(secondController.text);
              result = sum1+ sum2;
              
              
            }, 
            child:const Text('Addition')
            ),
            ElevatedButton(
              onPressed: (){
                 setState(() {
                
              });
             sum1 = double.parse(firstController.text);
             sum2 = double.parse(secondController.text);
              result = sum1 - sum2;
            }, 
            child:const Text('Subtraction ')
            )
              ],
            ),
          )

        ],
      ),
    );
  }
}