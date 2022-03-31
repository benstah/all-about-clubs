import 'dart:convert';

import 'package:all_about_clubs/data/model/clubs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

///fetches club information
class ClubRepository {
  String baseUrl = dotenv.get('API_URL');

  Future<List<Clubs?>> getClubs() async {
    try {
      final List<Clubs?> toReturningClubs = [];

      final response = await http.get(Uri.parse(baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode == 200) {

        List<dynamic> raceDetailsJson = jsonDecode(utf8.decode(response.bodyBytes));

        // decode data of json
        for (var details in raceDetailsJson) {
          String jsonObject = jsonEncode(details);
          toReturningClubs.add(Clubs.fromJson(jsonObject));
        }
        if (kDebugMode) {
          print(toReturningClubs);
        }

      } else {
        throw Exception("Failed to load details");
      }

      return toReturningClubs;

    } catch (e) {
      if (kDebugMode){
        print (e);
      }
      return [];
    }
  }
}

///If data couldn't be fetched
class NetworkException implements Exception {
}