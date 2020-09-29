part of useridentity_api_client.api;

class User {
  
  String id = null;
  
  String username = null;
  
  String phoneNumber = null;
  
  bool isValidated = null;
  
  DateTime createdAt = null;
  
  DateTime updatedAt = null;
  User();

  @override
  String toString() {
    return 'User[id=$id, username=$username, phoneNumber=$phoneNumber, isValidated=$isValidated, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    username = json['username'];
    phoneNumber = json['phoneNumber'];
    isValidated = json['isValidated'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (username != null)
      json['username'] = username;
    if (phoneNumber != null)
      json['phoneNumber'] = phoneNumber;
    if (isValidated != null)
      json['isValidated'] = isValidated;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}

