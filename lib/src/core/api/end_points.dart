class EndPoints {
  EndPoints._();

  static const String baseUrl = 'http://172.16.7.61:5555/api/';
  static const String users = '${baseUrl}Users/';
  static const String login = '${users}login';
  static const String visit = '${baseUrl}Visit/';
  static const String getAllVisits = '${visit}getAllVisits';
}
