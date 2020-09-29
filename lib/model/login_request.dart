part of useridentity_api_client.api;

class LoginRequest {
  
  String phoneNumber = null;
  
  String username = null;
  
  String password = null;
  LoginRequest();

  @override
  String toString() {
    return 'LoginRequest[phoneNumber=$phoneNumber, username=$username, password=$password, ]';
  }

  LoginRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phoneNumber = json['phoneNumber'];
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (phoneNumber != null)
      json['phoneNumber'] = phoneNumber;
    if (username != null)
      json['username'] = username;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<LoginRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginRequest>() : json.map((value) => LoginRequest.fromJson(value)).toList();
  }

  static Map<String, LoginRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginRequest-objects as value to a dart map
  static Map<String, List<LoginRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginRequest.listFromJson(value);
       });
     }
     return map;
  }
}

