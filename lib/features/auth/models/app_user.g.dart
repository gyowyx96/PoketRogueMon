// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
  uid: json['uid'] as String,
  nickname: json['nickname'] as String,
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  totalRuns: (json['totalRuns'] as num?)?.toInt() ?? 0,
  victories: (json['victories'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
  'uid': instance.uid,
  'nickname': instance.nickname,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
  'totalRuns': instance.totalRuns,
  'victories': instance.victories,
};
