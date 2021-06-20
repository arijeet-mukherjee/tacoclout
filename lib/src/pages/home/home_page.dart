//import 'dart:js';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:shuppy/src/models/taco_product.dart';
import 'package:shuppy/src/models/toco_category.dart';

import '../../helpers/colors.dart';
import '../../helpers/constants.dart';
import '../../helpers/local_data.dart';
import '../../helpers/screens.dart';
import '../../models/arguments_model.dart';
import '../../models/product_model.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_dots_indicator.dart';
import '../../widgets/custom_network_image.dart';
import '../../widgets/custom_price_text.dart';
import '../../widgets/custom_star_rating.dart';
import '../search/search_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'screens/home_screen.dart';
part 'widgets/build_carousel_swiper.dart';
part 'widgets/build_custom_app_bar.dart';
part 'widgets/build_label_section.dart';
part 'widgets/build_product_card.dart';
part 'widgets/category_circle_card.dart';
part 'widgets/category_section.dart';
part 'widgets/scrollable_section.dart';
part 'widgets/scrollable_section_1.dart';
part 'widgets/scrollable_section_2.dart';
part 'widgets/scrollable_section_3.dart';
part 'widgets/scrollable_section_4.dart';
part 'widgets/scrollable_section_5.dart';
part 'widgets/scrollable_section_6.dart';
part 'widgets/scrollable_section_7.dart';
part 'widgets/scrollable_section_8.dart';
part 'widgets/scrollable_section_9.dart';
part 'widgets/scrollable_section_10.dart';
part 'widgets/scrollable_section_11.dart';
