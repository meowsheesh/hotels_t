import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotels_t/api/models/hotels.dart';
import 'package:hotels_t/router/router.dart';

import '../../../ui/widgets/my_chip.dart';

class HotelCardWidget extends StatefulWidget {
  const HotelCardWidget({super.key, required this.hotel});
  final Hotels hotel;

  @override
  State<HotelCardWidget> createState() => _HotelCardWidgetState();
}

class _HotelCardWidgetState extends State<HotelCardWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> suiteNumbers = widget.hotel.suitesAvailability
        .split(':')
        .where((element) => element.isNotEmpty)
        .toList();
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          AutoRouter.of(context).push(AboutRoute(hotel: widget.hotel));
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.hotel.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MyChip(
                    text: widget.hotel.stars.toString(),
                    icon: const Icon(
                      Icons.star,
                      color: Color(0xffFFA800),
                      size: 18,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  widget.hotel.address,
                  style: const TextStyle(
                    color: Color(0xff0D72FF),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Расстояние от центра: ${widget.hotel.distance}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Свободные номера: ',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'SFProDisplay',
                      fontSize: 16,
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
            ],
          ),
        ),
      ),
    );
  }
}
