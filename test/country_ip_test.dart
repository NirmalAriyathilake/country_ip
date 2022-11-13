import 'package:flutter_test/flutter_test.dart';

import 'package:country_ip/country_ip.dart';

void main() {
  test(
    "Find users' current country",
    () async {
      // ACT
      final countryIpResponse = await CountryIp.find();

      // ASSERT
      expect(countryIpResponse, isNotNull);
      expect(countryIpResponse?.countryCode, isNotEmpty);
      expect(countryIpResponse?.country, isNotEmpty);
      expect(countryIpResponse?.ip, isNotEmpty);
    },
  );
  
  test(
    'Get country from specific IP : IPv4',
    () async {
      // ACT
      final countryIpResponse = await CountryIp.findFromIP('9.9.9.9');

      // ASSERT
      expect(countryIpResponse, isNotNull);
      expect(countryIpResponse?.countryCode, 'US');
      expect(countryIpResponse?.country, 'United States');
      expect(countryIpResponse?.ip, '9.9.9.9');
    },
  );

  test(
    'Get country from specific IP : IPv6',
    () async {
      // ACT
      final countryIpResponse = await CountryIp.findFromIP('::ffff:909:909');

      // ASSERT
      expect(countryIpResponse, isNotNull);
      expect(countryIpResponse?.countryCode, 'US');
      expect(countryIpResponse?.country, 'United States');
      expect(countryIpResponse?.ip, '::ffff:909:909');
    },
  );
}
