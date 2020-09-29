part of useridentity_api_client.api;

class LoginUserResponse {
  
  LoginUser data = null;
  LoginUserResponse();

  @override
  String toString() {
    return 'LoginUserResponse[data=$data, ]';
  }

  LoginUserResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      LoginUser.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<LoginUserResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginUserResponse>() : json.map((value) => LoginUserResponse.fromJson(value)).toList();
  }

  static Map<String, LoginUserResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginUserResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginUserResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginUserResponse-objects as value to a dart map
  static Map<String, List<LoginUserResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginUserResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginUserResponse.listFromJson(value);
       });
     }
     return map;
  }
}

