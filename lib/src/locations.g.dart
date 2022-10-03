// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

hdb _$hdbFromJson(Map<String, dynamic> json) => hdb(
      address: json['address'] as String,
      oneroom_sold: (json['oneroom_sold'] as num).toDouble(),
      tworoom_sold: (json['tworoom_sold'] as num).toDouble(),
      oneroom_rental: (json['oneroom_rental'] as num).toDouble(),
      tworoom_rental: (json['tworoom_rental'] as num).toDouble(),
      Latitude: (json['Latitude'] as num).toDouble(),
      Longitude: (json['Longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$hdbToJson(hdb instance) => <String, dynamic>{
      'address': instance.address,
      'oneroom_sold': instance.oneroom_sold,
      'tworoom_sold': instance.tworoom_sold,
      'oneroom_rental': instance.oneroom_rental,
      'tworoom_rental': instance.tworoom_rental,
      'Latitude': instance.Latitude,
      'Longitude': instance.Longitude,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) => Locations(
      placeholder: (json['placeholder'] as List<dynamic>)
          .map((e) => hdb.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
      'placeholder': instance.placeholder,
    };
