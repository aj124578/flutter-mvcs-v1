import 'package:intl/intl.dart';

class User {
  final int id;
  final String username;
  final String email;
  final DateTime created;
  final DateTime updated;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.created,
    required this.updated,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "email": email,
    "created": created,
    "updated": updated
  };

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        email = json["email"],
        created = DateFormat("yyyy-mm-dd").parse(json["created"]),
        updated = DateFormat("yyyy-mm-dd").parse(json["updated"]);
}
