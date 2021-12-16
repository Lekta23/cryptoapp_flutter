import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/globals.dart';
import 'package:notreprojet/providers/prefs.provider.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class Favoris extends ConsumerWidget {
  const Favoris({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(favoritesProvider)
        .map(data: data, error: error, loading: loading);
  }

  Widget data(AsyncData<List<String>> data) {
    
    List<String> value = data.value;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: value.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey,
          child: ListTile(
            leading: IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Globals.buttonColor,
              ),
              tooltip: 'Add to favourite',
              onPressed: () async {
                final preferences = await StreamingSharedPreferences.instance;
                Preference<List<String>> preflist =
                    preferences.getStringList('listFav', defaultValue: []);
                final List<String> list = preflist.getValue();
                list.remove(value[index]);
                preferences.setStringList('listFav', list);
              },
            ),
            // const Icon(
            //   Icons.favorite,
            //   color: Colors.yellow,
            // ),
            title: Text(value[index]),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        );
      },
    );
  }

  Widget error(AsyncError<List<String>> error) {
    return const Text('error');
  }

  Widget loading(AsyncLoading<List<String>> loading) {
    return const CircularProgressIndicator();
  }
}
