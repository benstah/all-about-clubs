import 'package:all_about_clubs/data/model/clubs.dart';

/// Arguments passed along with navigation,
/// to be able to pass along extra race data
class ClubArguments {
  /// Public constructor
  ClubArguments(this.club);

  final Clubs? club;
}
