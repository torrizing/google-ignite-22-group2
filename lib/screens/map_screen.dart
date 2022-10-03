import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../src/locations.dart' as locations;
import 'dart:convert';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}
class _MapScreenState extends State<MapScreen> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.placeholder) {
        final marker = Marker(
          markerId: MarkerId(office.address),
          position: LatLng(office.Latitude, office.Longitude),
          infoWindow: InfoWindow(
            title: office.address,
            snippet: office.oneroom_sold.toString() + ", " + office.tworoom_sold.toString() + ", " + office.oneroom_rental.toString() + ", " + office.tworoom_rental.toString(),
          ),
        );
        _markers[office.address] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'Map',
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.white),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(0, 0),
            zoom: 2,
          ),
          markers: _markers.values.toSet(),
        ));
  }
}
