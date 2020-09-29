part of useridentity_api_client.api;

class LoginUser {
  
  String id = null;
  
  String accessToken = null;
  LoginUser();

  @override
  String toString() {
    return 'LoginUser[id=$id, accessToken=$accessToken, ]';
  }

  LoginUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (accessToken != null)
      json['accessToken'] = accessToken;
    return json;
  }

  static List<LoginUser> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginUser>() : json.map((value) => LoginUser.fromJson(value)).toList();
  }

  static Map<String, LoginUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginUser.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginUser-objects as value to a dart map
  static Map<String, List<LoginUser>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginUser>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginUser.listFromJson(value);
       });
     }
     return map;
  }
}

