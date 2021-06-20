import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shuppy/src/models/taco_product.dart';
import 'package:shuppy/src/pages/product/product_page.dart';

import '../models/category_model.dart';
import '../models/favorite_model.dart';
import '../models/notification_model.dart';
import '../models/on_boarding_model.dart';
import '../models/order_model.dart';
import '../models/payment_method_model.dart';
import '../models/product_model.dart';
import '../pages/cart/cart_page.dart';
import '../pages/home/home_page.dart';
import '../pages/notification/notification_page.dart';
import '../pages/profile/profile_page.dart';
import 'constants.dart';

class LocalList {
  static List<FavoriteModel> favoriteList = [];

  static List<TacoProductModel> cartList = [];

  static List<OrderModel> orderList = [];

  static List<PaymentMethodModel> paymentMethodList = [
    PaymentMethodModel(
      id: 1,
      name: 'PayPal',
      icon: Images.paypal,
    ),
    PaymentMethodModel(
      id: 2,
      name: 'Cash on Delivery',
      icon: Images.cod,
    ),
    PaymentMethodModel(
      id: 3,
      name: 'Credit Cart',
      icon: Images.credit_card,
    ),
  ];

  static List<OnBoardingModel> onBoardingList(BuildContext context) => [
        OnBoardingModel(
          title: 'Welcome to Tacoclout!',
          subtitle:
              'We’re excited you are here and can’t wait to show you all of products available for your Truck. We are a leader in aftermarket parts and accessories. Take a look around and let’s get modding!',
          image: Illustrations.on_boarding_1,
        ),
        OnBoardingModel(
          title: 'FAST & FREE Shipping',
          subtitle:
              'We’re known for our fast and free shipping to the lower 48 states! We take pride in every order we fulfill, so your package is guaranteed to arrive safely or we will replace it at no cost to you.',
          image: Illustrations.on_boarding_2,
        ),
        OnBoardingModel(
          title: 'Fitment Guaranteed',
          subtitle:
              'We back every product we sell because we either run it personally, or have put it through rigorous trials and tests to ensure it holds up on the trails or roads. The right part, the right fit — Guaranteed.',
          image: Illustrations.on_boarding_3,
        ),
      ];

  static List<BottomNavigationBarItem> bottomNavigationList(
          BuildContext context) =>
      [
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.home),
          label: AppLocalizations.of(context)!.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.shoppingBag),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.bell),
          label: AppLocalizations.of(context)!.notification,
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.user),
          label: AppLocalizations.of(context)!.profile,
        ),
      ];

  static List<Widget> bottomNavigationPageList() => [
        HomeScreen(),
        BrowseProductScreenBnav(),
        NotificationScreen(),
        ProfileScreen(),
      ];

  static List<String> carouselSwiperList() => [
        "https://assets.bigcartel.com/theme_images/59738175/bg2.jpg",
        "https://assets.bigcartel.com/product_images/300742809/x1-2.jpg",
        "https://assets.bigcartel.com/product_images/292862718/c-grey.jpg",
        "https://assets.bigcartel.com/product_images/292862766/amber-final.jpg",
      ];

  static List<CategoryModel> topCategoryList() => [
        CategoryModel(
          id: 1,
          label: 'Dress',
          icon: Images.dress,
        ),
        CategoryModel(
          id: 2,
          label: 'Shoes',
          icon: Images.high_heel,
        ),
        CategoryModel(
          id: 3,
          label: 'Bag',
          icon: Images.woman_bag,
        ),
        CategoryModel(
          id: 4,
          label: 'Other',
          icon: Images.menu_icon,
        ),
      ];

  static List<CategoryModel> allCategoryList() => [
        CategoryModel(
          id: 1,
          label: 'Dress',
          icon: Images.dress,
        ),
        CategoryModel(
          id: 2,
          label: 'Shoes',
          icon: Images.high_heel,
        ),
        CategoryModel(
          id: 3,
          label: 'Bag',
          icon: Images.woman_bag,
        ),
        CategoryModel(
          id: 4,
          label: 'Automorive',
          icon: Images.automotive,
        ),
        CategoryModel(
          id: 5,
          label: 'Computer',
          icon: Images.computer,
        ),
        CategoryModel(
          id: 6,
          label: 'Electronic',
          icon: Images.electronic,
        ),
        CategoryModel(
          id: 7,
          label: 'T-Shirt',
          icon: Images.shirt,
        ),
        CategoryModel(
          id: 8,
          label: 'Shoes',
          icon: Images.shoes,
        ),
        CategoryModel(
          id: 9,
          label: 'Smartphone',
          icon: Images.smartphone,
        ),
        CategoryModel(
          id: 10,
          label: 'Watches',
          icon: Images.watches,
        ),
      ];

  static List<NotificationModel> dealList() => [
        NotificationModel(
          id: 1,
          status: 'deal1',
        ),
      ];

  static List<NotificationModel> notificationList() => [
        NotificationModel(
          id: 1,
          status: 'waiting',
        ),
        NotificationModel(
          id: 2,
          status: 'packaging',
        ),
        NotificationModel(
          id: 3,
          status: 'on_delivery',
        ),
        NotificationModel(
          id: 4,
          status: 'done',
        ),
        NotificationModel(
          id: 5,
          status: 'rating',
        ),
      ];
  static List<NotificationModel> orderHistoryList() => [
        NotificationModel(
          id: 1,
          status: 'ship',
        ),
        NotificationModel(
          id: 2,
          status: 'arrive',
        ),
        NotificationModel(
          id: 3,
          status: 'track',
        ),
      ];
  static String ship =
      'Orders that are placed through Taco Clout typically ship within 1-3 business days';
  static String arrive =
      'It can take up-to 1-6 days for your items to arrive depending on your location.';
  static String track =
      'While we dont currently support tracking through our mobile app, you can email us if you did not receive shipping confirmation email.';

  static List<ProductModel> allProductList() => [
        ProductModel(
          id: 1,
          name: 'Bape A Bathing Ape Shark Face Tee Shirt on Mercari',
          price: 25,
          rating: 0,
          description: 'Bape A Bathing Ape Shark Face Tee Shirt',
          images: [
            "https://i.pinimg.com/564x/39/c7/0d/39c70d7b0b4d41088e44a8acfbd93ac6.jpg",
            "https://i.pinimg.com/564x/39/c7/0d/39c70d7b0b4d41088e44a8acfbd93ac6.jpg",
            "https://i.pinimg.com/564x/39/c7/0d/39c70d7b0b4d41088e44a8acfbd93ac6.jpg",
          ],
        ),
        ProductModel(
          id: 2,
          name:
              'Herren Unisex Kurzarm T-Shirt Mein Name ist Horst lustige Sprüche',
          price: 16,
          rating: 0,
          description:
              'New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as the original box or bag) and/or with the original tags attached',
          images: [
            "https://i.ebayimg.com/images/g/wBUAAOSwwvZZSjQ9/s-l500.jpg",
            "https://i.ebayimg.com/images/g/tZwAAOSwSzRZSjRA/s-l500.jpg",
            "https://i.ebayimg.com/images/g/KO8AAOSwrfVZSjQ6/s-l500.jpg",
          ],
        ),
        ProductModel(
          id: 3,
          name:
              'A. Salvarini Herren Sweatjacke Kapuzenpullover Jacke Kapuze Hoodie Sweater AS191',
          price: 30,
          rating: 0,
          description:
              'New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as the original box or bag) and/or with the original tags attached.',
          images: [
            "https://i.ebayimg.com/images/g/aAEAAOSwkiZgOPZW/s-l500.jpg",
            "https://i.ebayimg.com/images/g/K5MAAOSwFZtgOPZZ/s-l500.jpg",
            "https://i.ebayimg.com/images/g/-3wAAOSwkztgOPZZ/s-l500.jpg",
          ],
        ),

        ProductModel(
          id: 4,
          name:
              'A. Salvarini Designer Herren Jeans Hose Regular Slim Fit Jeanshose Stretch NEU',
          price: 30,
          rating: 0,
          description:
              'New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as the original box or bag) and/or with the original tags attached.',
          images: [
            "https://i.ebayimg.com/images/g/VT4AAOSwJnxgONCj/s-l500.jpg",
            "https://i.ebayimg.com/images/g/nEUAAOSwc3dgONCl/s-l500.jpg",
            "https://i.ebayimg.com/images/g/LxUAAOSwp4ZgONCq/s-l1600.jpg",
          ],
        ),
        ProductModel(
          id: 5,
          name:
              'A. Salvarini Herren Shorts kurze Sommer Hose mit Gürtel Short Bermuda NEU AS096',
          price: 25,
          rating: 0,
          description:
              'New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as the original box or bag) and/or with the original tags attached.',
          images: [
            "https://i.ebayimg.com/images/g/DxoAAOSwMbZfpAfr/s-l500.jpg",
            "https://i.ebayimg.com/images/g/y0sAAOSwTbBfpAfu/s-l500.jpg",
            "https://i.ebayimg.com/images/g/tvwAAOSwJHlfpAfu/s-l1600.jpg",
          ],
        ),
        ProductModel(
          id: 6,
          name:
              'Brandit Savage Herren Sommer Cargo Shorts Bermuda kurze Hose inkl Gürtel NEU B35',
          price: 49,
          rating: 0,
          description:
              'New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as the original box or bag) and/or with the original tags attached.',
          images: [
            "https://i.ebayimg.com/images/g/KVUAAOSwhLNgRkBi/s-l500.jpg",
            "https://i.ebayimg.com/images/g/pncAAOSwEHJgRkBk/s-l500.jpg",
            "https://i.ebayimg.com/images/g/8b0AAOSwOMVgRkBk/s-l500.jpg",
          ],
        ),
        ProductModel(
          id: 7,
          name:
              'SMAEL Men Watch Digital Electronic LED Shockproof Fashion Sport Wrist Watches',
          price: 15,
          rating: 0,
          description:
              'New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as the original box or bag) and/or with the original tags attached.',
          images: [
            "https://i.ebayimg.com/images/g/I5EAAOSw3h1ZW3J2/s-l500.jpg",
            "https://i.ebayimg.com/images/g/I5EAAOSw3h1ZW3J2/s-l500.jpg",
            "https://i.ebayimg.com/images/g/I5EAAOSw3h1ZW3J2/s-l500.jpg",
          ],
        ),
        ProductModel(
          id: 8,
          name:
              'SMAEL Sport Watch Men Brand Digital Wristwatch LED Electronic Male Watches',
          price: 18,
          rating: 0,
          description:
              'New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as the original box or bag) and/or with the original tags attached',
          images: [
            "https://i.ebayimg.com/images/g/yxsAAOSwMAxdpoBo/s-l500.jpg",
            "https://i.ebayimg.com/images/g/yxsAAOSwMAxdpoBo/s-l500.jpg",
            "https://i.ebayimg.com/images/g/yxsAAOSwMAxdpoBo/s-l500.jpg",
          ],
        ),
        ProductModel(
          id: 9,
          name:
              'Lenovo Legion 5 15.6" 144Hz Ryzen 7-4800H 16GB RAM 256GB SSD GTX 1660 Ti 6GB',
          price: 18,
          rating: 0,
          description:
              'New: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is applicable). Packaging should be the same as what is found in a retail store, unless the item is handmade or was packaged by the manufacturer in non-retail packaging, such as an unprinted box or plastic bag. See the seller\'s listing for full details',
          images: [
            "https://i.ebayimg.com/images/g/F54AAOSwK9Zfm56i/s-l500.jpg",
            "https://i.ebayimg.com/images/g/UMwAAOSwJiBfpjiz/s-l500.jpg",
            "https://i.ebayimg.com/images/g/7RIAAOSwiWBfpjiz/s-l500.jpg",
            "https://i.ebayimg.com/images/g/nGEAAOSwEVdfpjiz/s-l500.jpg",
          ],
        ),
        ProductModel(
          id: 10,
          name:
              'Xiaomi Mi 11 Ultra 5G SmartPhone Snapdragon 888 5000mAh 6.81" IP68 CN Version',
          price: 18,
          rating: 0,
          description:
              'New: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is applicable). Packaging should be the same as what is found in a retail store, unless the item is handmade or was packaged by the manufacturer in non-retail packaging, such as an unprinted box or plastic bag. See the seller\'s listing for full details',
          images: [
            "https://i.ebayimg.com/images/g/I0wAAOSwO99gZdqP/s-l1600.jpg",
            "https://i.ebayimg.com/images/g/lzoAAOSwBpRgZdqm/s-l1600.jpg",
            "https://i.ebayimg.com/images/g/TQYAAOSwuOFgZdqn/s-l1600.jpg",
          ],
        ),
        // ProductModel(
        //   id: 11,
        //   name: "",
        //   price: 4,
        //   rating: 0,
        //   description: "",
        //   images: [
        //     "",
        //     "",
        //     "",
        //   ]
        // ),
      ];
  static List<TacoProductModel> maybeYouLikeItProductList() => [];
  static List<TacoProductModel> specialTodayProductList() => [];
  static List<TacoProductModel> newArrivalProductList() => [];
  static List<TacoProductModel> bestOfProductList() => [];
  static String disclaimerText = "This is your disclaimer text";//Enter your disclaimer text
}
