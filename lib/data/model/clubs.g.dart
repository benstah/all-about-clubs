// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clubs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Clubs> _$clubsSerializer = new _$ClubsSerializer();
Serializer<Stadium> _$stadiumSerializer = new _$StadiumSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$ClubsSerializer implements StructuredSerializer<Clubs> {
  @override
  final Iterable<Type> types = const [Clubs, _$Clubs];
  @override
  final String wireName = 'Clubs';

  @override
  Iterable<Object?> serialize(Serializers serializers, Clubs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value, specifiedType: const FullType(int)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'european_titles',
      serializers.serialize(object.european_titles,
          specifiedType: const FullType(int)),
      'stadium',
      serializers.serialize(object.stadium,
          specifiedType: const FullType(Stadium)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
    ];

    return result;
  }

  @override
  Clubs deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClubsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'european_titles':
          result.european_titles = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stadium':
          result.stadium.replace(serializers.deserialize(value,
              specifiedType: const FullType(Stadium))! as Stadium);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location))! as Location);
          break;
      }
    }

    return result.build();
  }
}

class _$StadiumSerializer implements StructuredSerializer<Stadium> {
  @override
  final Iterable<Type> types = const [Stadium, _$Stadium];
  @override
  final String wireName = 'Stadium';

  @override
  Iterable<Object?> serialize(Serializers serializers, Stadium object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Stadium deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StadiumBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lng;
    if (value != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$Clubs extends Clubs {
  @override
  final String id;
  @override
  final String name;
  @override
  final String country;
  @override
  final int value;
  @override
  final String image;
  @override
  final int european_titles;
  @override
  final Stadium stadium;
  @override
  final Location location;

  factory _$Clubs([void Function(ClubsBuilder)? updates]) =>
      (new ClubsBuilder()..update(updates)).build();

  _$Clubs._(
      {required this.id,
      required this.name,
      required this.country,
      required this.value,
      required this.image,
      required this.european_titles,
      required this.stadium,
      required this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Clubs', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Clubs', 'name');
    BuiltValueNullFieldError.checkNotNull(country, 'Clubs', 'country');
    BuiltValueNullFieldError.checkNotNull(value, 'Clubs', 'value');
    BuiltValueNullFieldError.checkNotNull(image, 'Clubs', 'image');
    BuiltValueNullFieldError.checkNotNull(
        european_titles, 'Clubs', 'european_titles');
    BuiltValueNullFieldError.checkNotNull(stadium, 'Clubs', 'stadium');
    BuiltValueNullFieldError.checkNotNull(location, 'Clubs', 'location');
  }

  @override
  Clubs rebuild(void Function(ClubsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClubsBuilder toBuilder() => new ClubsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Clubs &&
        id == other.id &&
        name == other.name &&
        country == other.country &&
        value == other.value &&
        image == other.image &&
        european_titles == other.european_titles &&
        stadium == other.stadium &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            country.hashCode),
                        value.hashCode),
                    image.hashCode),
                european_titles.hashCode),
            stadium.hashCode),
        location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Clubs')
          ..add('id', id)
          ..add('name', name)
          ..add('country', country)
          ..add('value', value)
          ..add('image', image)
          ..add('european_titles', european_titles)
          ..add('stadium', stadium)
          ..add('location', location))
        .toString();
  }
}

class ClubsBuilder implements Builder<Clubs, ClubsBuilder> {
  _$Clubs? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _european_titles;
  int? get european_titles => _$this._european_titles;
  set european_titles(int? european_titles) =>
      _$this._european_titles = european_titles;

  StadiumBuilder? _stadium;
  StadiumBuilder get stadium => _$this._stadium ??= new StadiumBuilder();
  set stadium(StadiumBuilder? stadium) => _$this._stadium = stadium;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  ClubsBuilder();

  ClubsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _country = $v.country;
      _value = $v.value;
      _image = $v.image;
      _european_titles = $v.european_titles;
      _stadium = $v.stadium.toBuilder();
      _location = $v.location.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Clubs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Clubs;
  }

  @override
  void update(void Function(ClubsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Clubs build() {
    _$Clubs _$result;
    try {
      _$result = _$v ??
          new _$Clubs._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Clubs', 'id'),
              name:
                  BuiltValueNullFieldError.checkNotNull(name, 'Clubs', 'name'),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, 'Clubs', 'country'),
              value: BuiltValueNullFieldError.checkNotNull(
                  value, 'Clubs', 'value'),
              image: BuiltValueNullFieldError.checkNotNull(
                  image, 'Clubs', 'image'),
              european_titles: BuiltValueNullFieldError.checkNotNull(
                  european_titles, 'Clubs', 'european_titles'),
              stadium: stadium.build(),
              location: location.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stadium';
        stadium.build();
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Clubs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Stadium extends Stadium {
  @override
  final int? size;
  @override
  final String? name;

  factory _$Stadium([void Function(StadiumBuilder)? updates]) =>
      (new StadiumBuilder()..update(updates)).build();

  _$Stadium._({this.size, this.name}) : super._();

  @override
  Stadium rebuild(void Function(StadiumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StadiumBuilder toBuilder() => new StadiumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stadium && size == other.size && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, size.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Stadium')
          ..add('size', size)
          ..add('name', name))
        .toString();
  }
}

class StadiumBuilder implements Builder<Stadium, StadiumBuilder> {
  _$Stadium? _$v;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  StadiumBuilder();

  StadiumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stadium other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Stadium;
  }

  @override
  void update(void Function(StadiumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Stadium build() {
    final _$result = _$v ?? new _$Stadium._(size: size, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final double? lat;
  @override
  final double? lng;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._({this.lat, this.lng}) : super._();

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location && lat == other.lat && lng == other.lng;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lat.hashCode), lng.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('lat', lat)
          ..add('lng', lng))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lng = $v.lng;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ?? new _$Location._(lat: lat, lng: lng);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
