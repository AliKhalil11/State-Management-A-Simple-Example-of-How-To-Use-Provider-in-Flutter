// // To parse this JSON data, do
// //
// //     final posts = postsFromJson(jsonString);
//
//
// import 'dart:convert';
//
// List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));
//
// String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
class Posts {

   int? userId;
   int? id;
   String? title;
   String? body;

  Posts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Posts.fromJson(Map<String, dynamic> map) => Posts(
    userId: map["userId"] as int,
    id: map["id"] as int,
    title: map["title"] as String,
    body: map["body"] as String,
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
