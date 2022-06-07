import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahap/cubit/states.dart';

import 'package:sahap/screens/activities.dart';
import 'package:sahap/screens/menu.dart';
import 'package:sahap/screens/profile.dart';
import 'package:sahap/screens/scanQR.dart';
import 'package:sahap/screens/wallet.dart';

class SahapCubit extends Cubit<SahapStates> {
  SahapCubit() : super(SahapInitialState());

  static SahapCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.space_dashboard_rounded,
      ),
      label: 'Menu',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.wallet,
      ),
      label: 'Wallet',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.qr_code_scanner_rounded,
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.show_chart_rounded,
      ),
      label: 'Activities',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person_outline,
      ),
      label: 'Profile',
    ),
  ];

  List<Widget> screens = [
    MenuScreen(),
    WalletScreen(),
    ScanQRScreen(),
    ActivitiesScreen(),
    ProfileScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(SahapBottomNavState());
  }

  List<dynamic> menu = [];

  void getMenu() {
    emit(SahapGetMenuState());
  }
}
