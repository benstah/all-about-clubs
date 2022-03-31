import 'package:all_about_clubs/data/bloc/club_repository.dart';
import 'package:all_about_clubs/data/bloc/clubs_bloc/clubs_cubit.dart';
import 'package:all_about_clubs/data/model/clubs.dart';
import 'package:all_about_clubs/ui/home/arguments/club_arguments.dart';
import 'package:all_about_clubs/ui/home/widgets/club_card.dart';
import 'package:all_about_clubs/ui/home/widgets/loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../localization/app_localization.dart';
import '../color/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ClubRepository _clubRepository = ClubRepository();
  bool _nameSorted = true;
  List<Clubs?> _shownList = [];
  late ClubsCubit _clubsCubit;

  @override
  void initState() {
    super.initState();

    _clubsCubit = BlocProvider.of<ClubsCubit>(context);
    _clubsCubit.getClubs();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: CustomColors.primaryColor,
        centerTitle: false,
        title: Text(
        AppLocalizations.of(context)?.getTranslatedValue('title') ??
          'about all clubs',
          style: const TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.filter_list_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              sortTapped();
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: BlocConsumer(
        listener: (context, ClubsState state) {
          if (state is ClubsError) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)
                          ?.getTranslatedValue('club_loading_failed') ??
                          ''),
                      const Icon(Icons.error)
                    ],
                  ),
                  backgroundColor: Colors.red,
                ),
              );
          }
        },
        bloc: _clubsCubit,
        builder: (context, ClubsState state) {
          if (state is ClubsLoading) {
            return const LoadingIndicator();
          }
          if (state is ClubsLoaded) {
            _shownList = state.clubs;
            return buildBody(context,
                _shownList);
          }
          return Center(
            child: Text(AppLocalizations.of(context)
                ?.getTranslatedValue('connectivity_issue') ??
                ''),
          );
        },
      ),
    );
  }

  Widget buildBody(BuildContext context, List<Clubs?> clubs) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: clubs.isNotEmpty ?
      CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((_, int index) {
              return Builder(
                builder: (context) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'detail',
                        arguments: ClubArguments(
                          clubs[index],
                        ));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Center(
                          child: ClubCard(clubs[index]!),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      )
                    ],
                  )
                ),
              );
            }, childCount: clubs.length,
            ),
          ),
        ],
      )
          :
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          AppLocalizations.of(context)
          ?.getTranslatedValue('connectivity_issue') ??
          ''
        ),
      )
    );
  }


  @override
  void dispose() {
    _clubsCubit.close();
    super.dispose();
  }

  //sort results in different order
  void sortTapped() {
    if (_nameSorted){
      setState(() {
        _nameSorted = false;
        _clubsCubit.sortByValue(_shownList);
      });
    } else {
      setState(() {
        _nameSorted = true;
        _clubsCubit.sortByName(_shownList);
      });
    }

  }

}
