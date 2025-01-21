class Message{
  final String message;

  Message({required this.message});

  factory Message.fromJson(JsonData){
    return Message(message:JsonData['message']);
  }
}