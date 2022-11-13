library country_ip;

import 'dart:convert';

import 'package:country_ip/country_response.dart';
import 'package:http/http.dart';

class CountryIp {
  /// Returns [CountryResponse]
  ///
  /// Example:
  /// ```dart
  /// final countryIpResponse = await CountryIp.find();
  ///
  /// print("countryIpResponse : $countryIpResponse");
  /// print("User's country code : ${countryIpResponse.countryCode}");
  /// print("User's country : ${countryIpResponse.country}");
  /// print("User's IP : ${countryIpResponse.ip}");
  /// ```
  static Future<CountryResponse> find() async {
    final response = await get(Uri.https('api.country.is'));

    final Map<String, dynamic> body = jsonDecode(response.body);

    return CountryResponse.fromJson(body);
  }
}
