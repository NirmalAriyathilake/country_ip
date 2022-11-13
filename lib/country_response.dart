part 'country_name_iso_3166_alpha_2.dart';

class CountryResponse {
  CountryResponse({
    required this.countryCode,
    required this.ip,
  }) : country = _countryCodes[countryCode] ?? countryCode;

  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      CountryResponse(
        countryCode: json['country'],
        ip: json['ip'],
      );

  final String country;
  final String countryCode;
  final String ip;

  @override
  String toString() {
    return 'CountryResponse(country: $country, countryCode: $countryCode, ip: $ip)';
  }
}
