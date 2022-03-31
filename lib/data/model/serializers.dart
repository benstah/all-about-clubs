import 'package:all_about_clubs/data/model/clubs.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Clubs,
])

Serializers serializers = _$serializers;

Serializers standardSerializers =
(_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();