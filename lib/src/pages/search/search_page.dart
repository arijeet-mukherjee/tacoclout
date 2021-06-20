import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:octo_image/octo_image.dart';

import '../../helpers/constants.dart';
import '../../helpers/local_data.dart';
import '../../models/product_model.dart';
import '../../widgets/custom_network_image.dart';
import '../../widgets/custom_star_rating.dart';
import '../../widgets/empty_section.dart';

part 'screens/search_screen.dart';
part 'widgets/build_product_grid_card.dart';
part 'widgets/result_section.dart';
part 'widgets/suggest_section.dart';
