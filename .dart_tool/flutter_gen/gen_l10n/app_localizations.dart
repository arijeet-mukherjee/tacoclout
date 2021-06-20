
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id')
  ];

  /// No description provided for @add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get add_to_cart;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @all_bag.
  ///
  /// In en, this message translates to:
  /// **'All Bag'**
  String get all_bag;

  /// No description provided for @all_dress.
  ///
  /// In en, this message translates to:
  /// **'All Dress'**
  String get all_dress;

  /// No description provided for @all_shoes.
  ///
  /// In en, this message translates to:
  /// **'All Shoes'**
  String get all_shoes;

  /// No description provided for @already_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an Account?'**
  String get already_have_an_account;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @are_you_sure_you_want_to_checkout_now.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to checkout now?'**
  String get are_you_sure_you_want_to_checkout_now;

  /// No description provided for @are_you_sure_you_want_to_quit.
  ///
  /// In en, this message translates to:
  /// **'Are you sure want to Exit?'**
  String get are_you_sure_you_want_to_quit;

  /// No description provided for @are_you_sure_you_want_to_sign_out.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Sign out?'**
  String get are_you_sure_you_want_to_sign_out;

  /// No description provided for @authenticated_as.
  ///
  /// In en, this message translates to:
  /// **'Authenticated as'**
  String get authenticated_as;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @bag.
  ///
  /// In en, this message translates to:
  /// **'Bag'**
  String get bag;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @change_address.
  ///
  /// In en, this message translates to:
  /// **'Change Address'**
  String get change_address;

  /// No description provided for @change_delivery_address.
  ///
  /// In en, this message translates to:
  /// **'Change Delivery Address'**
  String get change_delivery_address;

  /// No description provided for @change_language.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get change_language;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @checkout_now.
  ///
  /// In en, this message translates to:
  /// **'Checkout Now'**
  String get checkout_now;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @congratuation_your_order_has_been_placed_please_make_a_payment_to_continue_the_transaction.
  ///
  /// In en, this message translates to:
  /// **'Congratulation! Your order has been placed. Please make a payment to continue the transaction'**
  String get congratuation_your_order_has_been_placed_please_make_a_payment_to_continue_the_transaction;

  /// No description provided for @create_a_new_account.
  ///
  /// In en, this message translates to:
  /// **'Create a new Account'**
  String get create_a_new_account;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get dark_mode;

  /// No description provided for @data_is_too_short.
  ///
  /// In en, this message translates to:
  /// **'Data is too short'**
  String get data_is_too_short;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @destination_address.
  ///
  /// In en, this message translates to:
  /// **'Destination Address'**
  String get destination_address;

  /// No description provided for @does_not_have_a_rating_yet.
  ///
  /// In en, this message translates to:
  /// **'Does not have a rating yet'**
  String get does_not_have_a_rating_yet;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @dont_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an Account?'**
  String get dont_have_an_account;

  /// No description provided for @dress.
  ///
  /// In en, this message translates to:
  /// **'Dress'**
  String get dress;

  /// No description provided for @edit_profile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get edit_profile;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get email_address;

  /// No description provided for @enter_confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Enter confirm password'**
  String get enter_confirm_password;

  /// No description provided for @enter_email_address.
  ///
  /// In en, this message translates to:
  /// **'Enter Email Address'**
  String get enter_email_address;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get enter_password;

  /// No description provided for @enter_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number'**
  String get enter_phone_number;

  /// No description provided for @enter_your_address.
  ///
  /// In en, this message translates to:
  /// **'Enter your address'**
  String get enter_your_address;

  /// No description provided for @enter_your_full_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enter_your_full_name;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @favorite.
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get favorite;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgot_password;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @hooray_your_order_has_been_placed.
  ///
  /// In en, this message translates to:
  /// **'Hooray! Your order has been placed'**
  String get hooray_your_order_has_been_placed;

  /// No description provided for @hooray_your_package_is_being_packed_please_wait_for_the_seller_to_deliver_your_package.
  ///
  /// In en, this message translates to:
  /// **'Hooray, your package is being packed. Please wait for the seller to deliver your package.'**
  String get hooray_your_package_is_being_packed_please_wait_for_the_seller_to_deliver_your_package;

  /// No description provided for @invalid_email_address_format.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address format'**
  String get invalid_email_address_format;

  /// No description provided for @invalid_full_name_format.
  ///
  /// In en, this message translates to:
  /// **'Invalid full name format'**
  String get invalid_full_name_format;

  /// No description provided for @invalid_number_format.
  ///
  /// In en, this message translates to:
  /// **'Only numbers are allowed'**
  String get invalid_number_format;

  /// No description provided for @invalid_password_format.
  ///
  /// In en, this message translates to:
  /// **'Password must be more than 6 characters long'**
  String get invalid_password_format;

  /// No description provided for @invalid_phone_number_format.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number format'**
  String get invalid_phone_number_format;

  /// No description provided for @invalid_text_format.
  ///
  /// In en, this message translates to:
  /// **'Data is too short'**
  String get invalid_text_format;

  /// No description provided for @item.
  ///
  /// In en, this message translates to:
  /// **'item'**
  String get item;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @less.
  ///
  /// In en, this message translates to:
  /// **'less'**
  String get less;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'more'**
  String get more;

  /// No description provided for @new_arrival.
  ///
  /// In en, this message translates to:
  /// **'New Arrival'**
  String get new_arrival;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @notification_delete_clicked.
  ///
  /// In en, this message translates to:
  /// **'Notification delete clicked!'**
  String get notification_delete_clicked;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @on_boarding_subtitle_1.
  ///
  /// In en, this message translates to:
  /// **'We have more than 100 thousand products. Choose a product from the Shup.py'**
  String get on_boarding_subtitle_1;

  /// No description provided for @on_boarding_subtitle_2.
  ///
  /// In en, this message translates to:
  /// **'We will deliver your orders with the fastest and safest shipping way'**
  String get on_boarding_subtitle_2;

  /// No description provided for @on_boarding_subtitle_3.
  ///
  /// In en, this message translates to:
  /// **'Get best quality product from Shup.py and enjoy with product discount'**
  String get on_boarding_subtitle_3;

  /// No description provided for @on_boarding_title_1.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Shup.py'**
  String get on_boarding_title_1;

  /// No description provided for @on_boarding_title_2.
  ///
  /// In en, this message translates to:
  /// **'Reliable and Fast Delivery'**
  String get on_boarding_title_2;

  /// No description provided for @on_boarding_title_3.
  ///
  /// In en, this message translates to:
  /// **'Enjoy Your Shopping'**
  String get on_boarding_title_3;

  /// No description provided for @on_delivery.
  ///
  /// In en, this message translates to:
  /// **'On Delivery'**
  String get on_delivery;

  /// No description provided for @order_detail.
  ///
  /// In en, this message translates to:
  /// **'Order Detail'**
  String get order_detail;

  /// No description provided for @order_history.
  ///
  /// In en, this message translates to:
  /// **'Order History'**
  String get order_history;

  /// No description provided for @order_status.
  ///
  /// In en, this message translates to:
  /// **'Order Status'**
  String get order_status;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @package_on_the_way.
  ///
  /// In en, this message translates to:
  /// **'Package on the way'**
  String get package_on_the_way;

  /// No description provided for @packages_are_being_packed.
  ///
  /// In en, this message translates to:
  /// **'Packages are being packed'**
  String get packages_are_being_packed;

  /// No description provided for @packaging.
  ///
  /// In en, this message translates to:
  /// **'Packaging'**
  String get packaging;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @pay_now.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get pay_now;

  /// No description provided for @payment_is_successful_please_wait_until_your_order_arrives_at_home_thank_you_for_shopping.
  ///
  /// In en, this message translates to:
  /// **'Payment is successful, please wait until your order arrives at home. Thank you for shopping'**
  String get payment_is_successful_please_wait_until_your_order_arrives_at_home_thank_you_for_shopping;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @please_enter_a_value.
  ///
  /// In en, this message translates to:
  /// **'Please enter a value'**
  String get please_enter_a_value;

  /// No description provided for @please_enter_the_email_address_you_used_at_the_time_of_registration_to_get_the_password_reset_instructions.
  ///
  /// In en, this message translates to:
  /// **'Please enter the email address you used at the time of registration to get the password reset instructions'**
  String get please_enter_the_email_address_you_used_at_the_time_of_registration_to_get_the_password_reset_instructions;

  /// No description provided for @please_enter_your_email_address.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email address'**
  String get please_enter_your_email_address;

  /// No description provided for @please_enter_your_full_address_correctly.
  ///
  /// In en, this message translates to:
  /// **'Please enter your full address correctly'**
  String get please_enter_your_full_address_correctly;

  /// No description provided for @please_enter_your_password.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get please_enter_your_password;

  /// No description provided for @please_enter_your_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number'**
  String get please_enter_your_phone_number;

  /// No description provided for @please_select_your_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Please select your payment method'**
  String get please_select_your_payment_method;

  /// No description provided for @press_again_to_exit.
  ///
  /// In en, this message translates to:
  /// **'Press again to Exit'**
  String get press_again_to_exit;

  /// No description provided for @product_is_removed.
  ///
  /// In en, this message translates to:
  /// **'Product is removed'**
  String get product_is_removed;

  /// No description provided for @product_ordered.
  ///
  /// In en, this message translates to:
  /// **'Product ordered'**
  String get product_ordered;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @rate_the_product.
  ///
  /// In en, this message translates to:
  /// **'Rate the Product'**
  String get rate_the_product;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @registered_as.
  ///
  /// In en, this message translates to:
  /// **'Registered as'**
  String get registered_as;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get reset_password;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @search_your_product.
  ///
  /// In en, this message translates to:
  /// **'Search your product'**
  String get search_your_product;

  /// No description provided for @see_all_review_clicked.
  ///
  /// In en, this message translates to:
  /// **'See All Review Clicked!'**
  String get see_all_review_clicked;

  /// No description provided for @see_my_orders.
  ///
  /// In en, this message translates to:
  /// **'See my Orders'**
  String get see_my_orders;

  /// No description provided for @select_your_payment.
  ///
  /// In en, this message translates to:
  /// **'Select your payment'**
  String get select_your_payment;

  /// No description provided for @shipping_address.
  ///
  /// In en, this message translates to:
  /// **'Shipping Address'**
  String get shipping_address;

  /// No description provided for @shipping_costs.
  ///
  /// In en, this message translates to:
  /// **'Shipping Costs'**
  String get shipping_costs;

  /// No description provided for @shoes.
  ///
  /// In en, this message translates to:
  /// **'Shoes'**
  String get shoes;

  /// No description provided for @shop_again.
  ///
  /// In en, this message translates to:
  /// **'Shop again'**
  String get shop_again;

  /// No description provided for @shopping_cart.
  ///
  /// In en, this message translates to:
  /// **'Shopping Cart'**
  String get shopping_cart;

  /// No description provided for @shopping_cart_is_empty.
  ///
  /// In en, this message translates to:
  /// **'Shopping cart is empty'**
  String get shopping_cart_is_empty;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get sign_in;

  /// No description provided for @sign_in_to_continue.
  ///
  /// In en, this message translates to:
  /// **'Sign in to Continue'**
  String get sign_in_to_continue;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get sign_up;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @successfully.
  ///
  /// In en, this message translates to:
  /// **'Successfully'**
  String get successfully;

  /// No description provided for @successfully_added_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Successfully added to Cart'**
  String get successfully_added_to_cart;

  /// No description provided for @successfully_added_to_favorites.
  ///
  /// In en, this message translates to:
  /// **'Successfully added to favorite'**
  String get successfully_added_to_favorites;

  /// No description provided for @thank_you_for_shopping_give_an_assessment_to_help_us_keep_growing_and_getting_better.
  ///
  /// In en, this message translates to:
  /// **'Thank you for shopping, give an assessment to help us keep growing and getting better.'**
  String get thank_you_for_shopping_give_an_assessment_to_help_us_keep_growing_and_getting_better;

  /// No description provided for @the_package_has_arrived.
  ///
  /// In en, this message translates to:
  /// **'The package has arrived'**
  String get the_package_has_arrived;

  /// No description provided for @the_package_has_arrived_at_your_house_immediately_confirm_your_order.
  ///
  /// In en, this message translates to:
  /// **'The package has arrived at your house, immediately confirm your order.'**
  String get the_package_has_arrived_at_your_house_immediately_confirm_your_order;

  /// No description provided for @the_package_is_on_its_way_please_wait_until_your_package_arrives_at_your_home.
  ///
  /// In en, this message translates to:
  /// **'The package is on its way, please wait until your package arrives at your home.'**
  String get the_package_is_on_its_way_please_wait_until_your_package_arrives_at_your_home;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @total_price.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get total_price;

  /// No description provided for @transaction_details.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transaction_details;

  /// No description provided for @transaction_is_successful.
  ///
  /// In en, this message translates to:
  /// **'Transaction is Successful'**
  String get transaction_is_successful;

  /// No description provided for @view_all.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get view_all;

  /// No description provided for @waiting_for_payment.
  ///
  /// In en, this message translates to:
  /// **'Waiting for Payment'**
  String get waiting_for_payment;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @your_favorite_list_is_empty_lets_find_interesting_products_and_add_them_to_favorites.
  ///
  /// In en, this message translates to:
  /// **'Your favorite list is empty, let\'s find interesting products and add them to favorites'**
  String get your_favorite_list_is_empty_lets_find_interesting_products_and_add_them_to_favorites;

  /// No description provided for @your_order_history_is_empty.
  ///
  /// In en, this message translates to:
  /// **'Your order history is empty'**
  String get your_order_history_is_empty;

  /// No description provided for @your_package_has_been_placedwe_are_waiting_for_payment_to_continue_the_next_process.
  ///
  /// In en, this message translates to:
  /// **'Your package has been placed, we are waiting for payment to continue the next process.'**
  String get your_package_has_been_placedwe_are_waiting_for_payment_to_continue_the_next_process;

  /// No description provided for @your_password_has_been_changed_please_check_your_email_inbox.
  ///
  /// In en, this message translates to:
  /// **'Your password has been changed, please check your email inbox.'**
  String get your_password_has_been_changed_please_check_your_email_inbox;

  /// No description provided for @your_payment_is_successfull.
  ///
  /// In en, this message translates to:
  /// **'Your payment is Successful'**
  String get your_payment_is_successfull;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(_lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations _lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'id': return AppLocalizationsId();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
