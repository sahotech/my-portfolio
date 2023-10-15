// ignore_for_file: public_member_api_docs, sort_constructors_first
class SendEmailModel {
  String name;
  String email;
  String subject;
  String message;
  SendEmailModel({
    required this.name,
    required this.email,
    required this.subject,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'subject': subject,
      'message': message,
    };
  }

  // factory SendEmail.fromMap(Map<String, dynamic> map) {
  //   return SendEmail(
  //     name: map['name'] as String,
  //     email: map['email'] as String,
  //     subject: map['subject'] as String,
  //     message: map['message'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory SendEmail.fromJson(String source) => SendEmail.fromMap(json.decode(source) as Map<String, dynamic>);
}
