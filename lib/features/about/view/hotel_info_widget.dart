import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotels_t/api/models/hotels_info.dart';

import '../../../ui/widgets/my_chip.dart';
import '../../../ui/widgets/text_widget.dart';

class HotelInfoWidget extends StatelessWidget {
  final HotelInfo hotel;
  final List<String> suiteNumbers;
  const HotelInfoWidget({super.key, required this.hotel, required this.suiteNumbers});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
    );
  }
}
