import 'package:all_about_clubs/data/bloc/club_repository.dart';
import 'package:all_about_clubs/data/bloc/clubs_bloc/clubs_cubit.dart';
import 'package:all_about_clubs/ui/home/detail_screen.dart';
import 'package:all_about_clubs/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'arguments/club_arguments.dart';

/// Explore Tab Screen
class HomeDestination extends StatefulWidget {
  /// Creates the Explore destination widget
  // const ExploreDestination(EventRepository eventRepository,
  const HomeDestination(
      ClubRepository clubRepository,
      {Key? key})
      : _clubRepository = clubRepository,
        super(key: key);

  final ClubRepository _clubRepository;

  @override
  _HomeDestinationState createState() => _HomeDestinationState();
}

class _HomeDestinationState extends State<HomeDestination> {
  late GlobalKey<NavigatorState> _navigatorKey;

  @override
  void initState() {
    super.initState();
    _navigatorKey = GlobalKey<NavigatorState>();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backPressed(_navigatorKey),
      child: Navigator(
        key: _navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) {
              switch (settings.name) {
                case '/':
                  return BlocProvider(
                    create: (context) =>
                        ClubsCubit(clubRepository: widget._clubRepository),
                    child: HomeScreen(),
                  );
                case 'detail':
                  final args = settings.arguments as ClubArguments;
                  return DetailScreen(args.club);
              }
              return Center(
                child: Text(settings.name ?? 'whoopsie'),
              );
            },
          );
        },
      ),
    );
  }

  Future<bool> _backPressed(GlobalKey<NavigatorState> _key) async {
    if (_key.currentState!.canPop()) {
      await _key.currentState!.maybePop();
      return Future<bool>.value(false);
    }
    return Future<bool>.value(true);
  }
}


