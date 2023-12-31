class Resource {
  Resource? _instance;

  factory() => _instance ??= Resource();

  String get backgroundImageUrl =>
      "https://images.unsplash.com/photo-1570025533377-7c6fffd66a7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2534&q=80";

  String get loginLabel => "LOG IN";
  String get loginHelperMessage => "ユーザ名、パスワードを入力してください。";

  String get signupLabel => "SIGN UP";
  String get signupHelperMessage => "ユーザ名、パスワードを入力してください。";
}
