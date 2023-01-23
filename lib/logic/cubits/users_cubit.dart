import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_layout/data/repositories/user_repository.dart';
import 'users_state.dart';
import 'package:test_layout/constants/enums.dart';
import 'package:test_layout/data/models/user.dart';

class UsersCubit extends Cubit<UsersState> {
  final UserRepository userRepository = UserRepository();
  UsersCubit() : super(UsersState());
  Gender? savedGender;
  String? savedNationality;
  final Map<String, String> nationalities = {
    'Australia 🇦🇺': 'AU',
    'Brazil 🇧🇷': 'BR',
    'Canada 🇨🇦': 'CA',
    'Switzerland 🇨🇭': 'CH',
    'Germany 🇩🇪': 'DE',
    'Denmark 🇩🇰': 'DK',
    'Spain 🇪🇸': 'ES',
    'Finland 🇫🇮': 'FI',
    'France 🇫🇷': 'FR',
    'Great Britain 🇬🇧': 'GR',
    'Ireland 🇮🇪': 'IE',
    'India 🇮🇳': 'IN',
    'Iran 🇮🇷': 'IR',
    'Mexico 🇲🇽': 'MX',
    'Netherlands 🇳🇱': 'NL',
    'Norway 🇳🇴': 'NO',
    'New Zealand 🇳🇿': 'NZ',
    'Serbia 🇷🇸': 'RS',
    'Turkey 🇹🇷': 'TR',
    'Ukraine 🇺🇦': 'UA',
    'USA 🇺🇸': 'US',
  };

  static const int bufferSize = 2;

  void loadUser() async {
    if (savedGender == null || savedNationality == null) {
      throw "Error loading - parameters not chosen!";
    }
    state.currentUsers.removeAt(0);
    emit(state.copyWith(savedUsers: state.savedUsers, isLoading: true));
    try {
      final result = await userRepository.getUser(
          savedGender!, nationalities[savedNationality]!);
      emit(state.copyWith(
          isLoading: false, currentUsers: [...state.currentUsers, result]));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e));
    }
  }

  void initLoadUser(Gender gender, String nationality) async {
    savedGender = gender;
    savedNationality = nationality;
    emit(UsersState(isLoading: true));
    List<User> a = [];
    for (int i = 0; i < bufferSize; i++) {
      try {
        a.add(
            await userRepository.getUser(gender, nationalities[nationality]!));
      } catch (e) {
        emit(UsersState(isLoading: false, error: e));
      }
    }
    emit(UsersState(isLoading: false, currentUsers: a));
  }

  void saveUser() {
    emit(state
        .copyWith(savedUsers: [...state.savedUsers, state.currentUsers[0]]));
    loadUser();
  }

  void removeSavedUser(int index) {
    state.savedUsers.removeAt(index);
    emit(state.copyWith(savedUsers: state.savedUsers));
  }
}
