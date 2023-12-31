import 'dart:convert';

import 'package:emeal_app/models/ad/ad_info.dart';
import 'package:flutter/services.dart';

class SettingsInfo {
  static const settingsFile = "assets/settings/settings.json";
  static final SettingsInfo _instance = SettingsInfo._internal();

  factory SettingsInfo() => _instance;

  late final String backendUrl;
  late final AdInfo ad;

  Future<void> load() async {
    final data = json.decode(await rootBundle.loadString(settingsFile));
    backendUrl = data["backendUrl"];
    ad = AdInfo.fromJson(data);
  }

  SettingsInfo._internal();
}
