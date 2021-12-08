import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

final favoritesProvider = FutureProvider<String>((ref) async {
 StreamingSharedPreferences prefs =
                        await StreamingSharedPreferences.instance;

                    // Get a reference to the counter value and provide a default value
                    // of 0 in case it is null.   
                    Preference<String> favPref =
                        prefs.getString('favorites', defaultValue: '');
                    return favPref.getValue();
});