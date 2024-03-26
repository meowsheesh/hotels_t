import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_t/api/models/hotels.dart';
import 'package:hotels_t/features/about/view/hotel_info_widget.dart';
import 'package:hotels_t/features/about/view/map_card.dart';
import 'package:hotels_t/ui/widgets/text_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../bloc/about_bloc.dart';

@RoutePage()
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key, required this.hotel});
  final Hotels hotel;

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  double? lat;
  double? lon;

  @override
  void initState() {
    BlocProvider.of<AboutBloc>(context)
        .add(AboutEvent.load(id: widget.hotel.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.hotel.name,
          style: const TextStyle(
            fontFamily: 'SFProDisplay',
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: BlocBuilder<AboutBloc, AboutState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (hotel) {

              List<String> suiteNumbers = widget.hotel.suitesAvailability
                  .split(':')
                  .where((element) => element.isNotEmpty)
                  .toList();
              lat = hotel.lat;
              lon = hotel.lon;
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListView(
                  children: [
                    HotelInfoWidget(
                      hotel: hotel,
                      suiteNumbers: suiteNumbers,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MapCard(hotel: hotel),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            failure: () => const Center(
              child: Text('Ошибка при загрузке'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_on),
        onPressed: () async {
          if (lat != null && lon != null) {
            GoogleMapUtils.openMapApp(lat!, lon!).onError((error, stackTrace) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Невозможно открыть карты Google'),
                ),
              );
            });
          }
        },
      ),
    );
  }
}

class GoogleMapUtils {
  GoogleMapUtils._();

  static Future<void> openMapApp(double latitude, double longitude) async {
    Uri googleUrl = Uri.parse(
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
    if (await canLaunchUrl(googleUrl)) {
      await launchUrl(googleUrl);
    } else {
      throw 'Unable open the map.';
    }
  }
}
