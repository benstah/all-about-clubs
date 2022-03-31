
import 'package:all_about_clubs/data/model/clubs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../localization/app_localization.dart';

class ClubCard extends StatelessWidget {
  const ClubCard(
      Clubs club,
      {Key? key})
      : _club = club,
        super(key: key);

  final Clubs _club;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
      color: Color(0xFFFBFAFA),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: double.infinity,
          height: 120.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    _club.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.scaleDown,
                    filterQuality: FilterQuality.low,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _club.name,
                        //style: Theme.of(context).textTheme.headline5,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        _club.country,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${_club.value.toString()} ${AppLocalizations.of(context)
                              ?.getTranslatedValue('million') ??
                              'Millionen'}',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
