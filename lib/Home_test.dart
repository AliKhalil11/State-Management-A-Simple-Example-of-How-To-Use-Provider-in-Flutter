import 'package:flutter/material.dart';
import 'Prov_of_context/home_page3.dart';
import 'consumer_test/Home_Page1.dart';
import 'select_test/home_page2.dart';

class Home extends StatelessWidget {
  const Home({super.key});
static const String Route="/home";
  @override
  Widget build(BuildContext context) {
    
   
    return  SingleChildScrollView(


      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(

          children: [
            
        const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            child: HomePage1(),
          ),


      const    Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            child: HomePage2(),
          ),


        const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            child: HomePage3(),
          ),


           MaterialButton(onPressed:(){
           Navigator.of(context).popAndPushNamed("/homepage");
          },
          color: Colors.deepPurpleAccent,
          textColor: Colors.white,child: const Text("go to Api")),


        ],
        ),
      ),
    );
  }
}