import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_model.freezed.dart';
part 'type_model.g.dart';

@freezed
abstract class TypeModel with _$TypeModel {
  const factory TypeModel({
    required int id,
    required String name,
    required List<int> weaknesses,
    required List<int> resistances,
    required List<int> immunities,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
