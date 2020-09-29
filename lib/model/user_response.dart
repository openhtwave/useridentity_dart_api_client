part of useridentity_api_client.api;

class UserResponse {
  
  User data = null;
  UserResponse();

  @override
  String toString() {
    return 'UserResponse[data=$data, ]';
  }

  UserResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      User.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<UserResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<UserResponse>() : json.map((value) => UserResponse.fromJson(value)).toList();
  }

  static Map<String, UserResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserResponse-objects as value to a dart map
  static Map<String, List<UserResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserResponse.listFromJson(value);
       });
     }
     return map;
  }
}

