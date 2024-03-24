import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/API_TEST/Provider_Operation.dart';

class HoePage extends StatefulWidget {
  const HoePage({super.key});
  static const String Route =("/homepage");

  @override
  State<HoePage> createState() => _HoePageState();
}


class _HoePageState extends State<HoePage> {
  @override
  Widget build(BuildContext context) {
    // initState(){
    //   setState(() {
    //     final provider = Provider.of<ProviderOperation>(context);
    //      provider.getDataFromApi();
        
    //   });
    // }


    
   final provider = Provider.of<ProviderOperation>(context);
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Provider Api Call"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: provider.getDataFromApi(),
        builder: (context, snapshot)  {
        var data =snapshot.data;
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: (
            CircularProgressIndicator()
          ),);
        }
       
       return  ListView.builder(
          itemCount:data?.length,
          itemBuilder:(context,index){
            return ListTile(
             
              leading: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.deepPurpleAccent,
                child: Text("${data?[index].id}",style:const TextStyle(color: Colors.white),)),

                 title: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     color: Colors.deepPurpleAccent
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${data?[index].userId}",style:const TextStyle(color: Colors.white),),
                    )),
                 ),


              subtitle:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                   height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                       color: Colors.deepPurpleAccent
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${data?[index].title}",style:const TextStyle(color: Colors.white),),
                  )),
              ) ,
            );
             
          } 
          
          
          );
   } )

  
    );
  }


}
