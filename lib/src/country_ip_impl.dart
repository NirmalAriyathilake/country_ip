import 'dart:convert';

import 'package:country_ip/src/country_response.dart';
import 'package:http/http.dart';

class CountryIp {
  /// Find users' country using their current IP
  ///
  /// Returns [CountryResponse]
  ///
  /// On Error returns null
  ///
  /// Example:
  /// ```dart
  /// final countryIpResponse = await CountryIp.find();
  ///
  /// print("countryIpResponse : ${countryIpResponse}");
  /// // countryIpResponse : CountryResponse(country: United States, countryCode: US, ip: 9.9.9.9)
  /// print("User's country code : ${countryIpResponse?.countryCode}");
  /// // User's country code : US
  /// print("User's country : ${countryIpResponse?.country}");
  /// // User's country : United States
  /// print("User's ip : ${countryIpResponse?.ip}");
  /// // User's ip : 9.9.9.9
  /// ```
  static Future<CountryResponse?> find() async {
    try {
      final response = await get(Uri.https('api.country.is'));

      final Map<String, dynamic> body = jsonDecode(response.body);

      return CountryResponse.fromJson(body);
    } catch (_) {
      return null;
    }
  }

  /// Find country of a specified IP (Both IPv4 & IPv6 addresses supported)
  ///
  /// Returns [CountryResponse]
  ///
  /// On Error returns null
  ///
  /// Examples:
  ///
  /// Using IPv4 address
  ///
  /// ```dart
  /// final countryIpResponse = await CountryIp.findFromIP('9.9.9.9');
  ///
  /// print("countryIpResponse : ${countryIpResponse}");
  /// // countryIpResponse : CountryResponse(country: United States, countryCode: US, ip: 9.9.9.9)
  /// print("User's country code : ${countryIpResponse?.countryCode}");
  /// // User's country code : US
  /// print("User's country : ${countryIpResponse?.country}");
  /// // User's country : United States
  /// print("User's ip : ${countryIpResponse?.ip}");
  /// // User's ip : 9.9.9.9
  /// ```
  ///
  /// Using IPv6 address
  ///
  /// ```dart
  /// final countryIpResponse = await CountryIp.findFromIP('::ffff:909:909');
  ///
  /// print("countryIpResponse : ${countryIpResponse}");
  /// // countryIpResponse : CountryResponse(country: United States, countryCode: US, ip: ::ffff:909:909)
  /// print("User's country code : ${countryIpResponse?.countryCode}");
  /// // User's country code : US
  /// print("User's country : ${countryIpResponse?.country}");
  /// // User's country : United States
  /// print("User's ip : ${countryIpResponse?.ip}");
  /// // User's ip : ::ffff:909:909
  /// ```
  static Future<CountryResponse?> findFromIP(String ip) async {
    try {
      if (ip.isNotEmpty) {
        final response = await get(Uri.https('api.country.is', ip));

        final Map<String, dynamic> body = jsonDecode(response.body);

        return CountryResponse.fromJson(body);
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }
}
