import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_t/api/models/hotels.dart';
import 'package:hotels_t/ui/widgets/my_chip.dart';
import 'package:hotels_t/ui/widgets/text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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
              List<String> suiteNumbers = widget.hotel.suitesAvailability.split(':').where((element) => element.isNotEmpty).toList();
              lat = hotel.lat;
              lon = hotel.lon;
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 210,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: "https://terexov.ru/test/${hotel.image}",
                            placeholder: (context, url) =>
                                const Center(child: Placeholder()),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: MyText(
                                  hotel.address,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            MyChip(
                              text: hotel.stars.toString(),
                              icon: const Icon(
                                Icons.star,
                                color: Color(0xffFFA800),
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: MyText(
                              'Расстояние от центра: ${hotel.distance}',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: MyText(
                            'Доступные номера',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 55,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return MyChip(
                                text: suiteNumbers[index],
                                icon: null,
                                color: Colors.blue,
                                textColor: Colors.white,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                width: 8,
                              );
                            },
                            itemCount: suiteNumbers.length,
                          ),
                        ),
                      ],
                    ),
                  ),
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
