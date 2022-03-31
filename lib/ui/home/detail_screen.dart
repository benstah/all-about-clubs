import 'package:all_about_clubs/data/model/clubs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:all_about_clubs/localization/app_localization.dart';
import 'package:sprintf/sprintf.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      Clubs? club,
      {Key? key})
      : _club = club,
        super(key: key);

  final Clubs? _club;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            title: Text(
              _club!.name,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: false,
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 30.h,
                  width:  double.infinity,
                  color: const Color(0xFF333333),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40.0),
                          child: Image.network(
                            _club!.image,
                            fit: BoxFit.scaleDown,
                            filterQuality: FilterQuality.low,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _club!.country,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(text: AppLocalizations.of(context)?.getTranslatedValue('club_description_1') ??
                              'Der Club'),
                          TextSpan(text: ' ${_club!.name} ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: sprintf(AppLocalizations.of(context)?.getTranslatedValue('club_description_2') ??
                              'spielt Fußball', [_club!.country, _club!.value])),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        sprintf(AppLocalizations.of(context)?.getTranslatedValue('club_description_3') ??
                            'Gewinne Gewinne Gewinne', [_club!.name, _club!.european_titles]),
                      style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black
                      ),
                    ),
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
