import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provid.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<Data>(builder: (context, value, child) => 
         Column(
        children:<Widget> [
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
    
       
            child: Text(value.n,)),
    
    
         const SizedBox(height: 10,),
    
    
          Container(
             height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
            child: Text("${value.c}")),
    
    
          MaterialButton(onPressed:(){
            value.change();
          },
          color: Colors.deepPurpleAccent,
          textColor: Colors.white,child: const Text("click here"),),
           MaterialButton(onPressed:(){
            value.change1();
          },
          color: Colors.deepPurpleAccent,
          textColor: Colors.white,child: const Text("click here"),)
        ],
            ),
      ),);
  }
}