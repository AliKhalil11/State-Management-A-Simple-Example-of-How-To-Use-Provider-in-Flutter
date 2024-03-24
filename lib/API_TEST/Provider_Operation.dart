import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'Posts_data.dart';

class ProviderOperation extends ChangeNotifier{
  static const url = "https://jsonplaceholder.typicode.com/posts";
  String error ="";
List<Posts> _posts=[];
 List<Posts> get posts => _posts;

Future<List<Posts>?>  getDataFromApi()async{
    
      var response =await http.get(Uri.parse(url));
      if(response.statusCode == 200){
       var responsebody =jsonDecode(response.body);
       for(var post in responsebody){
        _posts.add(Posts.fromJson(post));
       }
       print(_posts);
       return _posts;
      

      }
      else{
        error = response.statusCode.toString();
      }
      notifyListeners();
  
  }
}