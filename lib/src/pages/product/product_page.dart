import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:http/http.dart' as http;
import 'package:shuppy/src/models/taco_product.dart';
import 'dart:convert';

import '../../helpers/colors.dart';
import '../../helpers/constants.dart';
import '../../helpers/local_data.dart';
import '../../helpers/snack_toast.dart';
import '../../models/arguments_model.dart';
import '../../models/favorite_model.dart';
import '../../models/product_model.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_dots_indicator.dart';
import '../../widgets/custom_network_image.dart';
import '../../widgets/custom_shake_transtition.dart';
import '../../widgets/custom_star_rating.dart';
import '../../widgets/empty_section.dart';
import '../search/search_page.dart';

part 'screens/browse_product_screen.dart';
part 'screens/product_screen.dart';
part 'widgets/body_section.dart';
part 'widgets/build_back_navigation_button.dart';
part 'widgets/build_floating_action_button.dart';
part 'widgets/build_label_section.dart';
part 'widgets/build_product_grid_card.dart';
part 'widgets/header_section.dart';
part 'screens/product_screen_bnav.dart';
