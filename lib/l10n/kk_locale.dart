import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/i10n.dart';

class FlutterFireUIKkLocalizationsDelegate
    extends LocalizationsDelegate<FlutterFireUILocalizations> {
  @override
  bool isSupported(Locale locale) {
    return locale.languageCode == 'kk';
  }

  @override
  Future<FlutterFireUILocalizations<FlutterFireUILocalizationLabels>> load(
      Locale locale,
      ) {
    final flutterFireUILocalizations =
    FlutterFireUILocalizations(locale, KkLocalizations());
    return SynchronousFuture<FlutterFireUILocalizations>(
      flutterFireUILocalizations,
    );
  }

  @override
  bool shouldReload(
      covariant LocalizationsDelegate<
          FlutterFireUILocalizations<FlutterFireUILocalizationLabels>>
      old,
      ) {
    return false;
  }
}

class KkLocalizations extends FlutterFireUILocalizationLabels {
  @override
  String get emailInputLabel => 'Электрондық пошта';

  @override
  String get passwordInputLabel => 'Құпия сөз';

  @override
  String get signInActionText => 'Кіру үшін';

  @override
  String get registerActionText => 'Тіркеу';

  @override
  String get linkEmailButtonText => 'Әрі қарай';

  @override
  String get signInButtonText => 'Кіру үшін';

  @override
  String get registerButtonText => 'Тіркелу';

  @override
  String get signInWithPhoneButtonText => 'Телефонмен кіріңіз';

  @override
  String get signInWithGoogleButtonText => 'Google арқылы кіріңіз';

  @override
  String get signInWithAppleButtonText => 'Apple арқылы жүйеге кіріңіз';

  @override
  String get signInWithFacebookButtonText => 'Facebook арқылы кіріңіз';

  @override
  String get signInWithTwitterButtonText => 'Twitter арқылы кіріңіз';

  @override
  String get phoneVerificationViewTitleText => 'Телефон нөміріңізді енгізіңіз';

  @override
  String get verifyPhoneNumberButtonText => 'Әрі қарай';

  @override
  String get verifyCodeButtonText => 'Растау';

  @override
  String get verifyingPhoneNumberViewTitle => 'SMS-тен кодты енгізіңіз';

  @override
  String get unknownError => 'Белгісіз қате орын алды';

  @override
  String get smsAutoresolutionFailedError =>
      'SMS кодын автоматты түрде анықтау мүмкін болмады. Кодты қолмен енгізіңіз';

  @override
  String get smsCodeSentText => 'SMS коды жіберілді';

  @override
  String get sendingSMSCodeText => 'SMS коды жіберілуде...';

  @override
  String get verifyingSMSCodeText => 'SMS коды тексерілуде...';

  @override
  String get enterSMSCodeText => 'SMS кодын енгізіңіз';

  @override
  String get emailIsRequiredErrorText => 'Электрондық пошта қажет';

  @override
  String get isNotAValidEmailErrorText =>
      'Өтінеміз қолданыстағы электронды пошта адресін енгізіңіз';

  @override
  String get userNotFoundErrorText => 'Есептік жазба жоқ';

  @override
  String get emailTakenErrorText =>
      'Бұл электрондық пошта мекенжайы бар есептік жазба бұрыннан бар';

  @override
  String get accessDisabledErrorText =>
      'Бұл есептік жазбаға кіру уақытша өшірілген';

  @override
  String get wrongOrNoPasswordErrorText =>
      'Құпия сөз жарамсыз немесе пайдаланушыда құпия сөз жоқ';

  @override
  String get signInText => 'Кіру үшін';

  @override
  String get registerText => 'Тіркеу';

  @override
  String get registerHintText => 'Сізде тіркелгі жоқ па?';

  @override
  String get signInHintText => 'Сізде бұрыннан тіркелгі бар ма?';

  @override
  String get signOutButtonText => 'Шығу';

  @override
  String get phoneInputLabel => 'Телефон нөмірі';

  @override
  String get phoneNumberIsRequiredErrorText => 'Телефон нөмірі қажет';

  @override
  String get phoneNumberInvalidErrorText => 'Телефон нөмірі жарамсыз';

  @override
  String get profile => 'Профиль';

  @override
  String get name => 'Аты';

  @override
  String get deleteAccount => 'Есептік жазбаңызды жойыңыз';

  @override
  String get passwordIsRequiredErrorText => 'Құпия сөз қажет';

  @override
  String get confirmPasswordIsRequiredErrorText => 'Құпия сөзді растаңыз';

  @override
  String get confirmPasswordDoesNotMatchErrorText => 'Құпия сөздер сәйкес келмейді';

  @override
  String get confirmPasswordInputLabel => 'Құпия сөзді растаңыз';

  @override
  String get forgotPasswordButtonLabel => 'Құпия сөзіңізді ұмыттыңыз ба?';

  @override
  String get forgotPasswordViewTitle => 'Құпия сөзіңізді ұмыттыңыз ба?';

  @override
  String get resetPasswordButtonLabel => 'Құпия сөзді қалпына келтіріңіз';

  @override
  String get verifyItsYouText => 'Сіз екеніңізді растаңыз';

  @override
  String get differentMethodsSignInTitleText =>
      'Жүйеге кіру үшін келесі әдістердің бірін пайдаланыңыз';

  @override
  String get findProviderForEmailTitleText =>
      'Жалғастыру үшін электрондық пошта мекенжайыңызды енгізіңіз';

  @override
  String get continueText => 'Жалғастыру';

  @override
  String get countryCode => 'Код';

  @override
  String get codeRequiredErrorText => 'Ел коды қажет';

  @override
  String get invalidCountryCode => 'Қате код';

  @override
  String get chooseACountry => 'елді таңдаңыз';

  @override
  String get enableMoreSignInMethods => 'Қосымша кіру әдістерін қосыңыз';

  @override
  String get signInMethods => 'Жүйеге кіру әдістері';

  @override
  String get provideEmail => 'Электрондық пошта мекенжайы мен құпия сөзді енгізіңіз';

  @override
  String get goBackButtonLabel => 'Артқа';

  @override
  String get passwordResetEmailSentText =>
      'Құпия сөзіңізді қалпына келтіру сілтемесі бар электрондық хат жібердік. Электрондық поштаңызды тексеріңіз.';

  @override
  String get forgotPasswordHintText =>
      'Электрондық пошта мекенжайыңызды енгізіңіз, біз сізге құпия сөзді қалпына келтіру үшін сілтеме жібереміз';

  @override
  String get emailLinkSignInButtonLabel => 'Сілтеме арқылы кіріңіз';

  @override
  String get signInWithEmailLinkViewTitleText => 'Сілтеме арқылы кіріңіз';

  @override
  String get signInWithEmailLinkSentText =>
      'Сізге сілтемесі бар электрондық хат жібердік. Электрондық поштаңызды тексеріңіз және кіру үшін сілтемені орындаңыз';

  @override
  String get sendLinkButtonLabel => 'Сілтеме жіберу';

  @override
  String get arrayLabel => 'array';

  @override
  String get booleanLabel => 'boolean';

  @override
  String get mapLabel => 'map';

  @override
  String get nullLabel => 'null';

  @override
  String get numberLabel => 'number';

  @override
  String get stringLabel => 'string';

  @override
  String get typeLabel => 'type';

  @override
  String get valueLabel => 'value';

  @override
  String get cancelLabel => 'жою';

  @override
  String get updateLabel => 'жаңарту';

  @override
  String get northInitialLabel => 'N';

  @override
  String get southInitialLabel => 'S';

  @override
  String get westInitialLabel => 'W';

  @override
  String get eastInitialLabel => 'E';

  @override
  String get timestampLabel => 'timestamp';

  @override
  String get latitudeLabel => 'longitude';

  @override
  String get longitudeLabel => 'latitude';

  @override
  String get geopointLabel => 'geopoint';

  @override
  String get referenceLabel => 'reference';
}
