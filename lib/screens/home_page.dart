import 'package:app_laba_01/l10n/all_locales.dart';
import 'package:app_laba_01/locale_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

/// Start page with authentication and language option
///
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Authentication option
      ///
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              AppLocalizations.of(context).authentication,
              // style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login Google');
                  },
                  child: const Text('Google')),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login Email');
                  },
                  child: Text('Email'))
            ],
          ),
          const SizedBox(height: 100),

          /// Language option
          ///
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {
                Provider.of<LocaleProvider>(context,listen: false)
                    .setLocale(AllLocale.all[0]);
              }, child: const Text('Русский')),
              TextButton(onPressed: () {
                Provider.of<LocaleProvider>(context,listen: false)
                    .setLocale(AllLocale.all[1]);
              }, child: const Text('English')),
              TextButton(onPressed: () {
                Provider.of<LocaleProvider>(context,listen: false)
                    .setLocale(AllLocale.all[2]);
              }, child: const Text('қазақ')),
            ],
          ),
        ],
      ),
    );
  }
}
