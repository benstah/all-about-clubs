import 'dart:convert';

import 'package:all_about_clubs/data/model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'clubs.g.dart';

abstract class Clubs implements Built<Clubs, ClubsBuilder> {

  String get id;
  String get name;
  String get country;
  int get value;
  String get image;
  int get european_titles;
  Stadium get stadium;
  Location get location;


  Clubs._();

  factory Clubs([updates(ClubsBuilder b)]) = _$Clubs;

  String toJson() {
    return json.encode(serializers.serializeWith(Clubs.serializer, this));
  }

  static Clubs? fromJson(String jsonString){
    return standardSerializers.deserializeWith(Clubs.serializer, json.decode(jsonString));
  }

  static Serializer<Clubs> get serializer => _$clubsSerializer;
}

// get stadium data
abstract class Stadium implements Built<Stadium, StadiumBuilder> {

  int? get size;
  String? get name;

  Stadium._();

  factory Stadium([updates(StadiumBuilder b)]) = _$Stadium;

  static Serializer<Stadium> get serializer => _$stadiumSerializer;

}

// get location data
abstract class Location implements Built<Location, LocationBuilder> {

  double? get lat;
  double? get lng;

  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  static Serializer<Location> get serializer => _$locationSerializer;

}

