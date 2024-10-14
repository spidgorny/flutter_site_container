// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigImpl _$$ConfigImplFromJson(Map<String, dynamic> json) => _$ConfigImpl(
      title: json['title'] as String,
      lastName: json['lastName'] as String,
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$$ConfigImplToJson(_$ConfigImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'lastName': instance.lastName,
      'age': instance.age,
    };
