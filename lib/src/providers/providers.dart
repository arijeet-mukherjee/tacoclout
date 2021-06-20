import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shuppy/l10n/l10n.dart';
import 'package:shuppy/src/models/firebase_user_model.dart';
import 'package:shuppy/src/models/user_model.dart';

import '../helpers/constants.dart';
import '../helpers/dialogs.dart';
import '../helpers/snack_toast.dart';

part 'forgot_password_provider.dart';
part 'sign_in_provider.dart';
part 'sign_up_provider.dart';
part 'theme_provider.dart';
part 'locale_provider.dart';
