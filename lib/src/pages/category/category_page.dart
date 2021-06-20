import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:shuppy/src/models/taco_product.dart';
import 'package:shuppy/src/models/toco_category.dart';
import 'package:shuppy/src/widgets/custom_network_image.dart';

import '../../helpers/constants.dart';
import '../../helpers/local_data.dart';
import '../../models/arguments_model.dart';
import '../../widgets/custom_app_bar.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

part 'screens/category_screen.dart';
part 'widgets/category_circle_card.dart';
