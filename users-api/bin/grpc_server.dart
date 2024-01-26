import 'dart:io';

import 'package:users_api/users_api.dart';

class UserService extends UserServiceBase {
  /// In memory [User] list
  final List<User> users = [
    User(id: '1', name: 'Rpek', email: 'rpek@email.com'),
    User(id: '2', name: 'Rpek2', email: 'rpek@email.com'),
    User(id: '3', name: 'Rpek3', email: 'rpek@email.com'),
    User(id: '4', name: 'Rpek4', email: 'rpek@email.com'),
    User(id: '5', name: 'Rpek5', email: 'rpek@email.com'),
  ];

  @override
  Future<User> getUserById(ServiceCall call, UserByIdRequest request) async {
    final userId = request.id;

    return users.firstWhere(
      (user) => user.id == userId,
      orElse: () => User(),
    );
  }

  @override
  Future<UsersResponse> getUsers(ServiceCall call, UsersRequest request) async {
    return UsersResponse(users: users);
  }
}

void main(List<String> arguments) async {
  final server = Server.create(services: [UserService()]);
  final port = int.parse(Platform.environment['PORT'] ?? '8081');
  await server.serve(port: port);

  print('Server running at localhost:${server.port}');
}
