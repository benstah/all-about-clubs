import 'dart:ui';

import 'package:flutter_dotenv/flutter_dotenv.dart';


///Custom app theme colors
class CustomColors{
  ///Primary green color
  static var color = int.tryParse(dotenv.get('PRIMARY_COLOR'));
  static Color primaryColor = Color(color ?? 0xFF01C13B);
}