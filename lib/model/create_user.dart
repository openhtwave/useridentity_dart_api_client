part of useridentity_api_client.api;

class CreateUser {
  
  String id = null;
  
  String username = null;
  
  String phoneNumber = null;
  
  bool isValidated = null;
  
  DateTime createdAt = null;
  
  DateTime updatedAt = null;
  
  String accessToken = null;
  CreateUser();

  @override
  String toString() {
    return 'CreateUser[id=$id, username=$username, phoneNumber=$phoneNumber, isValidated=$isValidated, createdAt=$createdAt, updatedAt=$updatedAt, accessToken=$accessToken, ]';
  }

  CreateUser.fromJson(Map<String, dynamic> json) {
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
    accessToken = json['accessToken'];
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
    if (accessToken != null)
      json['accessToken'] = accessToken;
    return json;
  }

  static List<CreateUser> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateUser>() : json.map((value) => CreateUser.fromJson(value)).toList();
  }

  static Map<String, CreateUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateUser.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateUser-objects as value to a dart map
  static Map<String, List<CreateUser>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateUser>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateUser.listFromJson(value);
       });
     }
     return map;
  }
}

