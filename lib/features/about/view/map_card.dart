import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotels_t/api/models/hotels_info.dart';

import '../../../ui/widgets/text_widget.dart';

class MapCard extends StatefulWidget {
  const MapCard({super.key, required this.hotel});
  final HotelInfo hotel;

  @override
  State<MapCard> createState() => _MapCardState();
}

class _MapCardState extends State<MapCard> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  Set<Marker> markers = {};
  late CameraPosition _kPos;

  @override
  void initState() {
    _kPos = CameraPosition(
      target: LatLng(
        (double.tryParse(widget.hotel.lat.toString()) ?? 40.705873),
        (double.tryParse(widget.hotel.lon.toString()) ?? -74.011406),
      ),
      zoom: 12.1,
    );
    final marker = Marker(
      markerId: MarkerId(widget.hotel.id.toString()),
      position: LatLng(
        (double.tryParse(widget.hotel.lat.toString()) ?? 40.705873),
        (double.tryParse(widget.hotel.lon.toString()) ?? -74.011406),
      ),
    );
    markers.add(marker);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: const MyText(
              'Карта',
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Align(
                alignment: Alignment.center,
                child: GoogleMap(
                  zoomControlsEnabled: false,
                  markers: markers,
                  mapType: MapType.normal,
                  initialCameraPosition: _kPos,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
