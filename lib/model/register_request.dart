part of useridentity_api_client.api;

class RegisterRequest {
  
  String phoneNumber = null;
  
  String password = null;
  RegisterRequest();

  @override
  String toString() {
    return 'RegisterRequest[phoneNumber=$phoneNumber, password=$password, ]';
  }

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phoneNumber = json['phoneNumber'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (phoneNumber != null)
      json['phoneNumber'] = phoneNumber;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<RegisterRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RegisterRequest>() : json.map((value) => RegisterRequest.fromJson(value)).toList();
  }

  static Map<String, RegisterRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RegisterRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegisterRequest-objects as value to a dart map
  static Map<String, List<RegisterRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RegisterRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RegisterRequest.listFromJson(value);
       });
     }
     return map;
  }
}

