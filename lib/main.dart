import 'package:all_about_clubs/data/bloc/club_repository.dart';
import 'package:all_about_clubs/data/bloc/clubs_bloc/clubs_cubit.dart';
import 'package:all_about_clubs/ui/color/colors.dart';
import 'package:all_about_clubs/ui/home/home_destination.dart';
import 'package:all_about_clubs/ui/home/home_screen.dart';
import 'package:all_about_clubs/ui/home/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';

import 'localization/app_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  await dotenv.load(fileName: '.env');

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final ClubRepository _clubRepository = ClubRepository();
  late ClubsCubit _clubsCubit;

  @override
  void initState() {
    super.initState();
    _clubsCubit = ClubsCubit(clubRepository: _clubRepository);
    _clubsCubit.getClubs();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => ClubsCubit(clubRepository: _clubRepository),
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: const [
            Locale('de', 'DE'),
            Locale('en', 'EN'),
            // Locale('pl', 'PL'), TODO: uncommented as soon as pl is included
          ],
          localizationsDelegates: const [
            //CountryLocalizations.delegate,
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: ThemeData(
              primaryColor: CustomColors.primaryColor,
              colorScheme: ThemeData().colorScheme.copyWith(
                primary: CustomColors.primaryColor,
              )),
          home: HomeDestination(_clubRepository),
        ),
      ),
    );
  }
}

