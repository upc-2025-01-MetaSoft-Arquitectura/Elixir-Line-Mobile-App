import 'package:freezed_annotation/freezed_annotation.dart';

part 'evidence.freezed.dart';
part 'evidence.g.dart';

@freezed
class Evidence with _$Evidence {
  const factory Evidence({
    required int id,
    @JsonKey(name: 'taskId') required int taskId,
    @JsonKey(name: 'progressPercentage') required int progressPercentage,
    required String description,
    @JsonKey(name: 'imageUrl') required String imageUrl,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
  }) = _Evidence;

  factory Evidence.fromJson(Map<String, dynamic> json) =>
      _$EvidenceFromJson(json);
}
