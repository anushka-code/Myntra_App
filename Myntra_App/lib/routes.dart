import 'package:Myntra_App/screens/offline/offline.dart';
import 'package:Myntra_App/screens/offline_check_out/offlineCart.dart';
import 'package:flutter/widgets.dart';
import 'package:Myntra_App/screens/cart/cart_screen.dart';
import 'package:Myntra_App/screens/details/details_screen.dart';
import 'package:Myntra_App/screens/home/home_screen.dart';
import 'package:Myntra_App/screens/login_success/login_success_screen.dart';
import 'package:Myntra_App/screens/profile/profile_screen.dart';
import 'package:Myntra_App/screens/sign_in/sign_in_screen.dart';
import 'package:Myntra_App/screens/splash/splash_screen.dart';
import 'package:Myntra_App/screens/try_on/try_on_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  Offline.routeName: (context) => Offline(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  TryOnScreen.routeName: (context) => TryOnScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  OfflineCheckOut.routeName: (context) => OfflineCheckOut(),
};
