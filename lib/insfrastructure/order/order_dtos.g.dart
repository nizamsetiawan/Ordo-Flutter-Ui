// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: (json['id'] as num).toInt(),
      imagePath: json['image_path'] as String,
      invoiceNo: json['invoice_no'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      nominal: json['nominal'] as num,
      nominalFine: json['nominal_fine'] as num,
      lateDays: (json['late_days'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_path': instance.imagePath,
      'invoice_no': instance.invoiceNo,
      'name': instance.name,
      'address': instance.address,
      'date': instance.date?.toIso8601String(),
      'nominal': instance.nominal,
      'nominal_fine': instance.nominalFine,
      'late_days': instance.lateDays,
    };
