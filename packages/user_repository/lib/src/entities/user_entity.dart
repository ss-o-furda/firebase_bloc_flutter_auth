import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userID;
  final String email;
  final String name;

  const MyUserEntity({
    required this.userID,
    required this.email,
    required this.name,
  });

  Map<String, Object?> toDocument() {
    return {
      'userID': userID,
      'email': email,
      'name': name,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> document) {
    return MyUserEntity(
      userID: document['userID'],
      email: document['email'],
      name: document['name'],
    );
  }

  @override
  List<Object?> get props => [userID, email, name];
}
