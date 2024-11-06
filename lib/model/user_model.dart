import 'dart:convert';
class UserModel {

 String name;
  String username;
  String email;
  UserModel({
    required this.name,
    required this.username,
    required this.email,
  });


  UserModel copyWith({
    String? name,
    String? username,
    String? email,
  }) {
    return UserModel(
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'username': username,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(name: $name, username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.name == name &&
      other.username == username &&
      other.email == email;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      username.hashCode ^
      email.hashCode ;
  }
}
