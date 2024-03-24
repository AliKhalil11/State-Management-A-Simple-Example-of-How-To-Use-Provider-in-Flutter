import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider_select.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Selector<Model,String>( selector: (context,value)=>value.n,
      
      builder:(context,model,child){
        
        return Container(
           height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
            child: Text(model));
        
      } ,),
    
        const  SizedBox(height: 10,),
    
       Selector<Model,num>( selector: (context,value)=>value.c,
      
      builder:(context,model,child){
         
        return Container(
          height: 50,
            width:200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepPurpleAccent
            ),
          child: Text("${model}"));
      } ,),
    
      const  SizedBox(height: 10,),
    
    
      Consumer<Model>(builder: (context, value, child) => 
         MaterialButton(onPressed:(){
            value.change();
          },
          color: Colors.deepPurpleAccent,
          textColor: Colors.white,child: const Text("click here"))),
    
          const  SizedBox(height: 10,),
      
     Consumer<Model>(builder: (context, value, child) => 
         MaterialButton(onPressed:(){
            value.change1();
          },
          color: Colors.deepPurpleAccent,
          textColor: Colors.white,child: const Text("click here"))),
    
    ],);
  }
}