import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/API_TEST/Provider_Operation.dart';
import 'package:providertest/API_TEST/home-Page.dart';
import 'Home_test.dart';
import 'Prov_of_context/model1.dart';
import 'consumer_test/Provid.dart';
import 'select_test/Provider_select.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       ChangeNotifierProvider(create: (context)=>ProviderOperation(),),
       ChangeNotifierProvider(create: (context)=>Data(),),
       ChangeNotifierProvider(create: (context)=>Model(),),
       ChangeNotifierProvider(create: (context)=>Model1(),),
       
       
       ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
          ),
         
          initialRoute: Home.Route,
          routes: {
            Home.Route :(context)=> Home(),
            HoePage.Route: (context)=> HoePage(),

          },
        )
      );
    
  }
}
