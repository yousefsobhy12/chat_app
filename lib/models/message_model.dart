import 'package:chat_app/constants.dart';

class Message {
  final String message;
  final String userId;
  Message(this.userId, {required this.message});
  factory Message.fromJson(jsonData) {
    return Message(message: jsonData[kMessage], jsonData['id']);
  }
}
