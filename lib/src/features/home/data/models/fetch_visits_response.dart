import 'package:json_annotation/json_annotation.dart';

part 'fetch_visits_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchVisitsResponse {
  final int statusCode;
  final List<String>? errors;
  final String message;
  @JsonKey(name: 'data')
  final List<FetchVisitsResponseItem> visits;

  FetchVisitsResponse({
    required this.statusCode,
    required this.errors,
    required this.message,
    required this.visits,
  });

  factory FetchVisitsResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchVisitsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchVisitsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchVisitsResponseItem {
  final int? id, floorId;
  final String? visitDate,
      secondaryDate,
      primaryDate,
      employeeNameInVisit,
      reason,
      notes,
      visitStateFromPolice,
      visitStateFromDept,
      visitType,
      reasonforRejection;
  final bool? isPraimaryDateAccepted, isCreatedByDept;
  final List<Visitor>? visitors;

  FetchVisitsResponseItem({
    this.id,
    this.floorId,
    this.visitDate,
    this.secondaryDate,
    this.primaryDate,
    this.employeeNameInVisit,
    this.reason,
    this.notes,
    this.visitStateFromPolice,
    this.visitStateFromDept,
    this.visitType,
    this.reasonforRejection,
    this.isPraimaryDateAccepted,
    this.isCreatedByDept,
    this.visitors,
  });

  factory FetchVisitsResponseItem.fromJson(Map<String, dynamic> json) =>
      _$FetchVisitsResponseItemFromJson(json);
  Map<String, dynamic> toJson() => _$FetchVisitsResponseItemToJson(this);
}

@JsonSerializable()
class Visitor {
  final int? id, cardId;
  final String? name, phone, nid, entryTime, leaveTime;
  @JsonKey(name: 'niD_PicPath')
  final String? nidPicPath;
  final bool? isBloacked;

  Visitor({
    this.id,
    this.cardId,
    this.name,
    this.phone,
    this.nid,
    this.entryTime,
    this.leaveTime,
    this.nidPicPath,
    this.isBloacked,
  });

  factory Visitor.fromJson(Map<String, dynamic> json) =>
      _$VisitorFromJson(json);
  Map<String, dynamic> toJson() => _$VisitorToJson(this);
}
