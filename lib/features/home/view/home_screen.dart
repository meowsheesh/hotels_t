import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_t/features/home/bloc/home_bloc.dart';
import 'package:hotels_t/features/home/view/hotel_card_widget.dart';

import '../../../api/models/hotels.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Hotels>? hotelsList;
  int _selectedSortingOption = 0;

  void _sortHotels() {
    if (_selectedSortingOption == 0) {
      List<Hotels>? sortedHotelsList = List<Hotels>.from(hotelsList ?? [])
        ..sort((a, b) => a.distance.compareTo(b.distance));
      hotelsList = sortedHotelsList;
    } else {
      hotelsList?.sort((a, b) {
        List<String> aNumbers = a.suitesAvailability.split(':');
        List<String> bNumbers = b.suitesAvailability.split(':');
        return bNumbers.length.compareTo(aNumbers.length);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Hotels',
          style: TextStyle(
            fontFamily: 'SFProDisplay',
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (int value) {
              setState(() {
                _selectedSortingOption = value;
                _sortHotels();
              });
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 0,
                child: Text('По расстоянию'),
              ),
              PopupMenuItem(
                value: 1,
                child: Text('По кол-ву номеров'),
              ),
            ],
            child: const Icon(
              Icons.filter_list_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 16.0)
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            failure: () => const Center(
              child: Text('Ошибка при загрузке'),
            ),
            loaded: (hotels) {
              hotelsList ??= hotels;
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return HotelCardWidget(
                    hotel: hotelsList![index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: hotelsList!.length,
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
