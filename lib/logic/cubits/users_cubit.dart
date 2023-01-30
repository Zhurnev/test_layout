import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/user_repository.dart';
import 'users_state.dart';
import '../../constants/enums.dart';
import '../../data/models/user.dart';

class UsersCubit extends Cubit<UsersState> {
  final UserRepository userRepository = UserRepository();
  UsersCubit() : super(const UsersState());
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
    var tempState = List.from(state.currentUsers);
    tempState.removeAt(0);
    emit(state.copyWith(savedUsers: state.savedUsers, isLoading: true));
    try {
      final result = await userRepository.getUser(
          savedGender!, nationalities[savedNationality]!);
      emit(state
          .copyWith(isLoading: false, currentUsers: [...tempState, result]));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e));
    }
  }

  void initLoadUser(Gender gender, String nationality) async {
    emit(const UsersState(isLoading: true));
    savedGender = gender;
    savedNationality = nationality;
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
    List<User> tempState = List.from(state.savedUsers);
    tempState.removeAt(index);
    emit(state.copyWith(savedUsers: tempState));
  }
}
