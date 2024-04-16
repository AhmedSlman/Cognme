class EndPoints {
  static String baseUrl = "https://3a1c-197-35-254-83.ngrok-free.app/";
  static String signIn = "login"; //!
  static String signUp = "register";
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
