import 'package:all_about_clubs/data/bloc/club_repository.dart';
import 'package:all_about_clubs/data/model/clubs.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


part 'clubs_state.dart';


class ClubsCubit extends Cubit<ClubsState> {
  ClubRepository _clubRepository;

  ///constructor
  ClubsCubit({required ClubRepository clubRepository}) :
        _clubRepository = clubRepository,
        super(ClubsInitial());


  /// get data and emit state
  Future<void> getClubs() async {
    try{
      emit(ClubsLoading());
      var clubsList = await _clubRepository.getClubs();
      if (clubsList.isNotEmpty){
        clubsList = sortByName(clubsList);
      }
      emit(ClubsLoaded(clubsList));
    } on NetworkException {
      emit(ClubsError(
          "Couldn't fetch the Events. Do you have internet connectivity?"));
    }
  }


  List<Clubs?> sortByName (List<Clubs?> clubsList) {
    clubsList.sort((a,b) => a!.name.compareTo(b!.name));
    return clubsList;
  }

  List<Clubs?> sortByValue (List<Clubs?> clubsList) {
    clubsList.sort((a,b) => b!.value.compareTo(a!.value));
    return clubsList;
  }


}