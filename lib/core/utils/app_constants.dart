class EndPoints {
  static String baseUrl = "";
  static String signIn = "user/signup"; //!
  static String signUp = "user/signup";
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}

class ApiKeys {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String id = "id";
  static String message = "message";
  static String name = "name";
  static String phone = "phone";
  static String confirmPassword = "confirmPassword";
  static String location = "location";
  static String profilePic = "profilePic";
}
