import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part 'locations.g.dart';


// @JsonSerializable()
// class LatLng {
//   LatLng({
//     required this.lat,
//     required this.lng,
//   });
//
//   factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
//   Map<String, dynamic> toJson() => _$LatLngToJson(this);
//
//   final double lat;
//   final double lng;
// }
//
// @JsonSerializable()
// class Region {
//   Region({
//     required this.coords,
//     required this.id,
//     required this.name,
//     required this.zoom,
//   });
//
//   factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
//   Map<String, dynamic> toJson() => _$RegionToJson(this);
//
//   final LatLng coords;
//   final String id;
//   final String name;
//   final double zoom;
// }

@JsonSerializable()
class hdb {
  hdb({
    required this.address,
    required this.oneroom_sold,
    required this.tworoom_sold,
    required this.oneroom_rental,
    required this.tworoom_rental,
    required this.Latitude,
    required this.Longitude,
  });

  factory hdb.fromJson(Map<String, dynamic> json) =>
      _$hdbFromJson(json);
  Map<String, dynamic> toJson() => _$hdbFromJson(this);

  final String address;
  final double oneroom_sold;
  final double tworoom_sold;
  final double oneroom_rental;
  final double tworoom_rental;
  final double Latitude;
  final double Longitude;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.placeholder,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<hdb> placeholder;
}

Future<Locations> getGoogleOffices() async {
  const googleLocationsURL = 'https://gist.githubusercontent.com/regineshalom/cf9b92bcb1bc56fecd5ba6d097cedc1b/raw/b94a77f59a31bc08c426a63f9bc3d9b01dd6058e/cleanedHDB.json';

  // Retrieve the locations of Google offices
  try {
    final response = await http.get(Uri.parse(googleLocationsURL));
    if (response.statusCode == 200) {
      return Locations.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    }
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }

  return Locations.fromJson(
    json.decode(
      await rootBundle.loadString('assets/cleanedHDB.json'),
    ) as Map<String, dynamic>,
  );
}

// Future<Locations> getGoogleOffices() async {
//   const googleLocationsURL = 'https://about.google/static/data/locations.json';
//
//   // Retrieve the locations of Google offices
//   try {
//     final response = await http.get(Uri.parse(googleLocationsURL));
//     if (response.statusCode == 200) {
//       return Locations.fromJson(
//           json.decode(response.body) as Map<String, dynamic>);
//     }
//   } catch (e) {
//     if (kDebugMode) {
//       print(e);
//     }
//   }
//
//   // Fallback for when the above HTTP request fails.
//   return Locations.fromJson(
//     json.decode(
//       await rootBundle.loadString('assets/locations.json'),
//     ) as Map<String, dynamic>,
//   );
// }
