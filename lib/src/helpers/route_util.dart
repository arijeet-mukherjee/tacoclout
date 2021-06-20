import 'package:get/get.dart';
import 'package:shuppy/src/pages/address/address_page.dart';
import 'package:shuppy/src/pages/disclaimer/screens/disclaimer_screen.dart';
import 'package:shuppy/src/pages/language/language_page.dart';
import 'package:shuppy/src/pages/webview/screens/webview_cart.dart';
import 'package:shuppy/src/pages/webview/screens/webview_screen.dart';

import '../pages/bottom_navigation/bottom_navigation_page.dart';
import '../pages/category/category_page.dart';
import '../pages/checkout/checkout_page.dart';
import '../pages/favorite/favorite_page.dart';
import '../pages/forgot_password/forgot_password_page.dart';
import '../pages/notification/notification_page.dart';
import '../pages/on_boarding/on_boarding_page.dart';
import '../pages/order/order_page.dart';
import '../pages/payment/payment_page.dart';
import '../pages/product/product_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/sign_up/sign_up_page.dart';
import '../pages/splash/splash_page.dart';
import 'constants.dart';

List<GetPage> allRoutes = [
  GetPage(name: Routes.splash, page: () => SplashScreen()),
  GetPage(name: Routes.address, page: () => AddressScreen()),
  GetPage(name: Routes.browse_product, page: () => BrowseProductScreen()),
  GetPage(name: Routes.cart, page: () => BottomNavigationScreen(initialIndex: 1)),
  GetPage(name: Routes.category, page: () => CategoryScreen()),
  GetPage(name: Routes.checkout, page: () => CheckoutScreen()),
  GetPage(name: Routes.checkout_success, page: () => CheckoutSuccessScreen()),
  GetPage(name: Routes.edit_profile, page: () => EditProfileScreen()),
  GetPage(name: Routes.favorite, page: () => FavoriteScreen()),
  GetPage(name: Routes.forgot_password, page: () => ForgotPasswordScreen()),
  GetPage(name: Routes.home, page: () => BottomNavigationScreen(initialIndex: 0)),
  GetPage(name: Routes.language, page: () => LanguageScreen()),
  GetPage(name: Routes.notification, page: () => NotificationScreen()),
  GetPage(name: Routes.on_boarding, page: () => OnBoardingScreen()),
  GetPage(name: Routes.order_history, page: () => OrderHistoryScreen()),
  GetPage(name: Routes.order_detail, page: () => OrderDetailScreen()),
  GetPage(name: Routes.payment, page: () => PaymentScreen()),
  GetPage(name: Routes.payment_success, page: () => PaymentSuccessScreen()),
  GetPage(name: Routes.product, page: () => ProductScreen()),
  GetPage(name: Routes.profile, page: () => BottomNavigationScreen(initialIndex: 3)),
  GetPage(name: Routes.sign_in, page: () => SignInScreen()),
  GetPage(name: Routes.sign_up, page: () => SignUpScreen()),
  GetPage(name: Routes.webview, page: () => WebviewScreen()),
  GetPage(name: Routes.cartWeb, page: () => WebviewCart()),
  GetPage(name: Routes.productBnav, page:()=> BrowseProductScreenBnav()),
  GetPage(name: Routes.disclaimer,page:()=>DisclaimerScreen())
];
