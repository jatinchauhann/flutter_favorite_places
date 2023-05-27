import 'package:flutter/material.dart';
import 'package:flutter_favorite_places/providers/user_places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_favorite_places/screens/add_place.dart';
import 'package:flutter_favorite_places/widgets/places_list.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Places'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const AddPlaceScreen()));
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: PlacesList(places: userPlaces));
  }
}
