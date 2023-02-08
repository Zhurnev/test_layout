import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_layout/app/data/models/user.dart';
import 'package:test_layout/app/data/repositories/user_repository.dart';
import 'package:test_layout/app/logic/cubits/users_state.dart';
import 'package:test_layout/app/utility/enums.dart';
import 'package:test_layout/injectable/get_it.dart';

@lazySingleton
class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(const UsersState());
  final Map<String, String> _nationalities = {
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

  static const int _bufferSize = 2;

  Future<void> loadUser() async {
    if (state.savedGender == null || state.savedNationality == null) {
      throw Exception('Error loading - parameters not chosen!');
    }
    final tempState = List<User>.from(state.currentUsers)..removeAt(0);
    emit(state.copyWith(savedUsers: state.savedUsers, isLoading: true));
    try {
      final result = await getIt<UserRepository>().getUser(
        state.savedGender!,
        _nationalities[state.savedNationality]!,
      );
      emit(
        state.copyWith(isLoading: false, currentUsers: [...tempState, result]),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e));
    }
  }

  Future<void> initLoadUser(Gender gender, String nationality) async {
    emit(
      state.copyWith(
        savedGender: gender,
        savedNationality: nationality,
      ),
    );
    final a = <User>[];
    for (var i = 0; i < _bufferSize; i++) {
      try {
        a.add(
          await getIt<UserRepository>()
              .getUser(gender, _nationalities[nationality]!),
        );
      } catch (e) {
        emit(UsersState(isLoading: false, error: e));
      }
    }
    emit(state.copyWith(isLoading: false, currentUsers: a));
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
