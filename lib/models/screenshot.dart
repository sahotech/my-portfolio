import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ScreenShotModel {
  String url;
  ScreenShotModel({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  static ScreenShotModel froSnap(DocumentSnapshot snapshot) {
    var map = snapshot.data()! as Map<String, dynamic>;
    return ScreenShotModel(
      url: map['url'],
    );
  }
}
