import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

import '../helpers/colors.dart';
import '../helpers/constants.dart';
import '../providers/providers.dart';

enum TextFieldType { Alphabet, Email, Text, Password, PhoneNumber, Number }
enum BorderType { Outline, Underline, None }

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextFieldType textFieldType;
  final String? hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final BorderType borderType;
  final int? maxLines;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    Key? key,
    this.controller,
    this.textFieldType = TextFieldType.Text,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.borderType = BorderType.None,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mode = Provider.of<ThemeProvider>(context);

    final alphabetValidator = MultiValidator([
      RequiredValidator(
          errorText: AppLocalizations.of(context)!.please_enter_a_value),
      PatternValidator(r'^[A-Za-z_ .,]+$',
          errorText: AppLocalizations.of(context)!.invalid_full_name_format),
    ]);

    final emailValidator = MultiValidator([
      RequiredValidator(
          errorText: AppLocalizations.of(context)!.please_enter_a_value),
      EmailValidator(
          errorText: AppLocalizations.of(context)!.invalid_email_address_format)
    ]);

    final passwordValidator = MultiValidator([
      RequiredValidator(
          errorText: AppLocalizations.of(context)!.please_enter_your_password),
      MinLengthValidator(6,
          errorText: AppLocalizations.of(context)!.invalid_password_format)
    ]);

    final phoneNumberValidator = MultiValidator([
      RequiredValidator(
          errorText:
              AppLocalizations.of(context)!.please_enter_your_phone_number),
      MinLengthValidator(10,
          errorText: AppLocalizations.of(context)!.invalid_phone_number_format),
      MaxLengthValidator(15,
          errorText: AppLocalizations.of(context)!.invalid_phone_number_format),
      PatternValidator(r'(^(?:[+0]9)?[0-9]{10,12}$)',
          errorText: AppLocalizations.of(context)!.invalid_phone_number_format),
    ]);

    final textValidator = MultiValidator([
      RequiredValidator(
          errorText: AppLocalizations.of(context)!.please_enter_a_value),
      MinLengthValidator(1,
          errorText: AppLocalizations.of(context)!.data_is_too_short),
    ]);

    final numberValidator = MultiValidator([
      RequiredValidator(
          errorText: AppLocalizations.of(context)!.please_enter_a_value),
      MinLengthValidator(1,
          errorText: AppLocalizations.of(context)!.data_is_too_short),
      PatternValidator(r'^[0-9]+$',
          errorText: AppLocalizations.of(context)!.invalid_number_format),
    ]);

    _keyboardType(TextFieldType textFieldType) {
      switch (textFieldType) {
        case TextFieldType.Alphabet:
          return TextInputType.text;
        case TextFieldType.Email:
          return TextInputType.emailAddress;
        case TextFieldType.Number:
          return TextInputType.number;
        case TextFieldType.Password:
          return TextInputType.text;
        case TextFieldType.PhoneNumber:
          return TextInputType.phone;
        case TextFieldType.Text:
          return TextInputType.text;
        default:
          return TextInputType.text;
      }
    }

    _validator(TextFieldType textFieldType) {
      switch (textFieldType) {
        case TextFieldType.Alphabet:
          return alphabetValidator;
        case TextFieldType.Email:
          return emailValidator;
        case TextFieldType.Number:
          return numberValidator;
        case TextFieldType.Password:
          return passwordValidator;
        case TextFieldType.PhoneNumber:
          return phoneNumberValidator;
        case TextFieldType.Text:
          return textValidator;
        default:
          return textValidator;
      }
    }

    _enabledBorder(BorderType borderType) {
      switch (borderType) {
        case BorderType.Underline:
          return UnderlineInputBorder(
            borderSide: BorderSide(
              color: theme.disabledColor,
            ),
          );
        case BorderType.Outline:
          return OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: theme.disabledColor,
            ),
          );
        case BorderType.None:
          return InputBorder.none;

        default:
          return InputBorder.none;
      }
    }

    _focusedBorder(BorderType borderType) {
      switch (borderType) {
        case BorderType.Underline:
          return UnderlineInputBorder(
            borderSide: BorderSide(
              color: (mode.isDarkTheme == true)
                  ? ColorDark.success
                  : ColorLight.success,
            ),
          );
        case BorderType.Outline:
          return OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: (mode.isDarkTheme == true)
                  ? ColorDark.success
                  : ColorLight.success,
            ),
          );
        case BorderType.None:
          return InputBorder.none;

        default:
          return InputBorder.none;
      }
    }

    _errorBorder(BorderType borderType) {
      switch (borderType) {
        case BorderType.Underline:
          return UnderlineInputBorder(
            borderSide: BorderSide(
              color: theme.errorColor,
            ),
          );
        case BorderType.Outline:
          return OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: theme.errorColor,
            ),
          );
        case BorderType.None:
          return InputBorder.none;
        default:
          return InputBorder.none;
      }
    }

    _contentPadding(BorderType borderType) {
      switch (borderType) {
        case BorderType.Underline:
          return EdgeInsets.all(0.0);
        case BorderType.Outline:
          return EdgeInsets.symmetric(horizontal: Const.margin);
        case BorderType.None:
          return EdgeInsets.all(0.0);
        default:
          return EdgeInsets.all(0.0);
      }
    }

    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      autofocus: false,
      textAlign: textAlign ?? TextAlign.left,
      obscureText: obscureText ?? false,
      style: theme.textTheme.bodyText1,
      inputFormatters: (inputFormatters != []) ? inputFormatters : [],
      keyboardType: _keyboardType(textFieldType),
      validator: _validator(textFieldType),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: theme.textTheme.subtitle1,
        suffixIcon: suffixIcon,
        contentPadding:
            (suffixIcon == null) ? _contentPadding(borderType) : EdgeInsets.only(top: 12.0),
        enabledBorder: _enabledBorder(borderType),
        focusedBorder: _focusedBorder(borderType),
        errorBorder: _errorBorder(borderType),
        focusedErrorBorder: _errorBorder(borderType),
      ),
    );
  }
}
