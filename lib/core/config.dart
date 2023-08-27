import 'dart:ui';

import 'package:expense_tracker/enums.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  late final Map<String, dynamic> _data;

  Config() {
    _data = {
      'app': {
        'name': dotenv.get('APP_NAME', fallback: 'Waspito Lab'),
        'debug': dotenv.get('APP_DEBUG', fallback: 'true') == 'true',
        'version': dotenv.get('APP_VERSION', fallback: '1.0.0'),
        'apple_id': dotenv.get('APPLE_ID', fallback: ''),
        'google_play_id': dotenv.get('GOOGLE_PLAY_ID', fallback: ''),
        'android_bundle': dotenv.get('ANDROID_BUNDLE', fallback: ''),
        'logo_icon': dotenv.get('APP_LOGO_ICON', fallback: ''),
        'shortcut_icon': dotenv.get('APP_SHORTCUT_ICON', fallback: ''),
        'env': dotenv.get('APP_ENV', fallback: 'production'),
        'url': dotenv.get('APP_URL', fallback: ''),
        'api_url': dotenv.get('API_URL', fallback: ''),
        'locale': 'en',
        'supported_locales': const <Locale>[
          Locale('en', 'US'),
          Locale('fr', 'FR')
        ],
        'supported_themes': AppTheme.values,
        'fallback_locale': const Locale('en', 'US'),
        'key': dotenv.get('APP_KEY', fallback: ''),
        'cipher': 'AES-256-CBC',
        'privacy_policy_link': '',
        'terms_of_service_link': ''
      },
      'sentry': {
        'dsn': dotenv.get('SENTRY_DSN', fallback: '')
      }
    };
  }

  dynamic get(String key) {
    List parts = key.split('.');
    if (parts.length == 2 && _data.containsKey(parts.first)) {
      return _data[parts.first][parts[1]];
    }

    throw Exception("The key $key doesn't exist in the config map.");
  }
}

Config config = Config();