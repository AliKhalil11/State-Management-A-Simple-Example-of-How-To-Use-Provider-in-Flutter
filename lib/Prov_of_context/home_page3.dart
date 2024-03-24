import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model1.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3
({super.key});

  @override
  Widget build(BuildContext context) {
    var model1 = Provider.of<Model1>(context);
    return Center(child: 
       Column(children: [
    Container(
        height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
    
      child: Text(model1.name)),
    
    
       const SizedBox(height: 10,),
    
    
    MaterialButton(onPressed: (){
    model1.change();
    
    },color: Colors.deepPurpleAccent,
    textColor: Colors.white,child:const Text("klick here"),),
    
    
     const SizedBox(height: 10,),
    
    
      Container(
          height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
    
        child: Text("${model1.count}")),
    
      const SizedBox(height: 10,),
    
    
       MaterialButton(onPressed: (){
      model1.change1();
    
    },color: Colors.deepPurpleAccent,
    textColor: Colors.white,child:const Text("click here"),),
    
       ],
       ),
       );
  }
}