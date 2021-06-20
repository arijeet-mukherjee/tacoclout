import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../helpers/constants.dart';
import '../../helpers/dialogs.dart';
import '../../helpers/local_data.dart';
import '../../models/arguments_model.dart';
import '../../models/order_model.dart';
import '../../models/product_model.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_fade_transtition.dart';
import '../../widgets/custom_price_text.dart';
import '../../widgets/custom_shake_transtition.dart';

part 'screens/checkout_screen.dart';
part 'screens/checkout_success_screen.dart';
part 'widgets/body_section.dart';
part 'widgets/build_destination_address.dart';
part 'widgets/build_price_item.dart';
part 'widgets/build_product_ordered_list.dart';
