// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_visits_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchVisitsResponse _$FetchVisitsResponseFromJson(
  Map<String, dynamic> json,
) => FetchVisitsResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  message: json['message'] as String,
  visits: (json['data'] as List<dynamic>)
      .map((e) => FetchVisitsResponseItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FetchVisitsResponseToJson(
  FetchVisitsResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'errors': instance.errors,
  'message': instance.message,
  'data': instance.visits.map((e) => e.toJson()).toList(),
};

FetchVisitsResponseItem _$FetchVisitsResponseItemFromJson(
  Map<String, dynamic> json,
) => FetchVisitsResponseItem(
  id: (json['id'] as num).toInt(),
  floorId: (json['floorId'] as num).toInt(),
  visitDate: json['visitDate'] as String,
  secondaryDate: json['secondaryDate'] as String,
  primaryDate: json['primaryDate'] as String,
  employeeNameInVisit: json['employeeNameInVisit'] as String,
  reason: json['reason'] as String,
  notes: json['notes'] as String,
  visitStateFromPolice: json['visitStateFromPolice'] as String,
  visitStateFromDept: json['visitStateFromDept'] as String,
  visitType: json['visitType'] as String,
  reasonforRejection: json['reasonforRejection'] as String,
  isPraimaryDateAccepted: json['isPraimaryDateAccepted'] as bool,
  isCreatedByDept: json['isCreatedByDept'] as bool,
  visitors: (json['visitors'] as List<dynamic>)
      .map((e) => Visitor.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FetchVisitsResponseItemToJson(
  FetchVisitsResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'floorId': instance.floorId,
  'visitDate': instance.visitDate,
  'secondaryDate': instance.secondaryDate,
  'primaryDate': instance.primaryDate,
  'employeeNameInVisit': instance.employeeNameInVisit,
  'reason': instance.reason,
  'notes': instance.notes,
  'visitStateFromPolice': instance.visitStateFromPolice,
  'visitStateFromDept': instance.visitStateFromDept,
  'visitType': instance.visitType,
  'reasonforRejection': instance.reasonforRejection,
  'isPraimaryDateAccepted': instance.isPraimaryDateAccepted,
  'isCreatedByDept': instance.isCreatedByDept,
  'visitors': instance.visitors.map((e) => e.toJson()).toList(),
};

Visitor _$VisitorFromJson(Map<String, dynamic> json) => Visitor(
  id: (json['id'] as num).toInt(),
  cardId: (json['cardId'] as num).toInt(),
  name: json['name'] as String,
  phone: json['phone'] as String,
  nid: json['nid'] as String,
  entryTime: json['entryTime'] as String,
  leaveTime: json['leaveTime'] as String,
  nidPicPath: json['niD_PicPath'] as String,
  isBloacked: json['isBloacked'] as bool,
);

Map<String, dynamic> _$VisitorToJson(Visitor instance) => <String, dynamic>{
  'id': instance.id,
  'cardId': instance.cardId,
  'name': instance.name,
  'phone': instance.phone,
  'nid': instance.nid,
  'entryTime': instance.entryTime,
  'leaveTime': instance.leaveTime,
  'niD_PicPath': instance.nidPicPath,
  'isBloacked': instance.isBloacked,
};
