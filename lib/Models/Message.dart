class Message{
  final String message;
  final String id;

  

  factory Message.fromJson(JsonData){
    return Message(JsonData['message'],
    JsonData['id']!= null ? JsonData['id'].toString() : "معرف غير متوفر");
  }

  Message(this.message, this.id);}