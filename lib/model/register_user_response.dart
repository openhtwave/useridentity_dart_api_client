part of useridentity_api_client.api;

class RegisterUserResponse {
  
  CreateUser data = null;
  RegisterUserResponse();

  @override
  String toString() {
    return 'RegisterUserResponse[data=$data, ]';
  }

  RegisterUserResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      CreateUser.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<RegisterUserResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RegisterUserResponse>() : json.map((value) => RegisterUserResponse.fromJson(value)).toList();
  }

  static Map<String, RegisterUserResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterUserResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RegisterUserResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegisterUserResponse-objects as value to a dart map
  static Map<String, List<RegisterUserResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RegisterUserResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RegisterUserResponse.listFromJson(value);
       });
     }
     return map;
  }
}

