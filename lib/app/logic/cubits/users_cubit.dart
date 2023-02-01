import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_layout/app/constants/enums.dart';
import 'package:test_layout/app/data/models/user.dart';
import 'package:test_layout/app/data/repositories/user_repository.dart';
import 'package:test_layout/app/logic/cubits/users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(const UsersState());
  final UserRepository userRepository = UserRepository();
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

  Future<void> loadUser() async {
    if (savedGender == null || savedNationality == null) {
      throw Exception('Error loading - parameters not chosen!');
    }
    final tempState = List<User>.from(state.currentUsers)..removeAt(0);
    emit(state.copyWith(savedUsers: state.savedUsers, isLoading: true));
    try {
      final result = await userRepository.getUser(
        savedGender!,
        nationalities[savedNationality]!,
      );
      emit(
        state.copyWith(isLoading: false, currentUsers: [...tempState, result]),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e));
    }
  }

  Future<void> initLoadUser(Gender gender, String nationality) async {
    emit(const UsersState(isLoading: true));
    savedGender = gender;
    savedNationality = nationality;
    final a = <User>[];
    for (var i = 0; i < bufferSize; i++) {
      try {
        a.add(
          await userRepository.getUser(gender, nationalities[nationality]!),
        );
      } catch (e) {
        emit(UsersState(isLoading: false, error: e));
      }
    }
    emit(UsersState(isLoading: false, currentUsers: a));
  }

  void saveUser() {
    emit(
      state.copyWith(savedUsers: [...state.savedUsers, state.currentUsers[0]]),
    );
    loadUser();
  }

  void removeSavedUser(int index) {
    final tempState = List<User>.from(state.savedUsers)..removeAt(index);
    emit(state.copyWith(savedUsers: tempState));
  }
}
