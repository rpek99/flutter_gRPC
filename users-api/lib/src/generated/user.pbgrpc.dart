//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;

export 'user.pb.dart';

@$pb.GrpcServiceName('UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUsers = $grpc.ClientMethod<$0.UsersRequest, $0.UsersResponse>(
      '/UserService/getUsers',
      ($0.UsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UsersResponse.fromBuffer(value));
  static final _$getUserById = $grpc.ClientMethod<$0.UserByIdRequest, $0.User>(
      '/UserService/getUserById',
      ($0.UserByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UsersResponse> getUsers($0.UsersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> getUserById($0.UserByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserById, request, options: options);
  }
}

@$pb.GrpcServiceName('UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UsersRequest, $0.UsersResponse>(
        'getUsers',
        getUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UsersRequest.fromBuffer(value),
        ($0.UsersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserByIdRequest, $0.User>(
        'getUserById',
        getUserById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserByIdRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
  }

  $async.Future<$0.UsersResponse> getUsers_Pre($grpc.ServiceCall call, $async.Future<$0.UsersRequest> request) async {
    return getUsers(call, await request);
  }

  $async.Future<$0.User> getUserById_Pre($grpc.ServiceCall call, $async.Future<$0.UserByIdRequest> request) async {
    return getUserById(call, await request);
  }

  $async.Future<$0.UsersResponse> getUsers($grpc.ServiceCall call, $0.UsersRequest request);
  $async.Future<$0.User> getUserById($grpc.ServiceCall call, $0.UserByIdRequest request);
}
