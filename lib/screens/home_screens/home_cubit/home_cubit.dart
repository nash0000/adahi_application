import 'package:adahi_application/screens/butcher_screen/butcher_screen.dart';
import 'package:adahi_application/screens/home_screens/home_cubit/home_states.dart';

import 'package:adahi_application/screens/profile_screen/profile_screen.dart';
import 'package:adahi_application/screens/search_screen/search_screen.dart';
import 'package:adahi_application/screens/settings_screen/settings_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeStateInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  var widget = [
    ButcherScreen(),
    SearchScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  var titles = [
    'Butcher',
    'Search',
    'Profile',
    'Settings',
  ];

  int currentIndex = 0;

  changeIndex(index) {
    currentIndex = index;
    emit(HomeStateIndex());
  }
}
