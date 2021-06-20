import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helpers/colors.dart';
import '../../helpers/constants.dart';
import '../../helpers/dialogs.dart';
import '../../helpers/snack_toast.dart';
import '../../models/user_model.dart';
import '../../providers/providers.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_fade_transtition.dart';
import '../../widgets/custom_shake_transtition.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/custom_text_form_field.dart';

part 'screens/edit_profile_screen.dart';
part 'screens/profile_screen.dart';
part 'widgets/body_section.dart';
part 'widgets/build_change_photo_profile.dart';
part 'widgets/build_form_edit_profile.dart';
part 'widgets/header_section.dart';
