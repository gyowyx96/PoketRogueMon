import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_model.freezed.dart';
part 'move_model.g.dart';

@freezed
abstract class MoveModel with _$MoveModel {
  const factory MoveModel({
    required int id,
    required String name,
    required int type,
    required int? power,
    required int? accuracy,
    required int pp,
    required String damageClass,
    required String? effect,
  }) = _MoveModel;

  factory MoveModel.fromJson(Map<String, dynamic> json) =>
      _$MoveModelFromJson(json);
}
