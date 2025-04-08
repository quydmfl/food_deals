import 'dart:convert';

import 'package:equatable/equatable.dart';

class BaseResponse extends Equatable {
  final int? code;
  final String? message;
  final dynamic data;
  final dynamic error;

  const BaseResponse._internal(this.code, this.message, this.data, this.error);

  factory BaseResponse.fromMap(Map<String, dynamic> map) {
    return BaseResponse._internal(
      map['code'],
      map['message'],
      map['data'],
      map['error'],
    );
  }

  factory BaseResponse.fromJson(String source) {
    return BaseResponse.fromMap(json.decode(source));
  }
  
  @override
  List<Object?> get props => [code, message, data, error];
}
