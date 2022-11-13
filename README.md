[![pub package](https://img.shields.io/pub/v/country_ip?color=orange)](https://pub.dartlang.org/packages/country_ip)
[![BSD-3-Clause License](https://img.shields.io/github/license/NirmalAriyathilake/country_ip)](https://github.com/NirmalAriyathilake/country_ip/blob/main/LICENSE)

With `country_ip` you can find users' country (and nothing else) from their IP address.

This package is based on [country.is](https://country.is/). No API_KEY or AUTHORIZATION needed. Free to use API.

## Features

- Find users' country using their current IP
- Find country of a specified IP (Both IPv4 & IPv6 addresses supported)

## Getting started

To use this plugin, add `country_ip` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  country_ip: [latest-version]
```

## Usage

### Import

```dart
import 'package:country_ip/country_ip.dart';
```

### Find country using current IP

To find users' country from their current IP, call `CountryIp.find()`

Returns `CountryResponse` object which includes:

- IP
- Country
- Country Code (ISO 3166 ALPHA-2)

On Error functions returns null object.

Example :

```dart
final countryIpResponse = await CountryIp.find();

print("countryIpResponse : $countryIpResponse");
// countryIpResponse : CountryResponse(country: United States, countryCode: US, ip: 9.9.9.9)
print("User's country code : ${countryIpResponse?.countryCode}");
// User's country code : US
print("User's country : ${countryIpResponse?.country}");
// User's country : United States
print("User's ip : ${countryIpResponse?.ip}");
// User's ip : 9.9.9.9
```

### Find country of a specified IP

To find country of a specified IP, call `CountryIp.findFromIP(String ip)`

Returns `CountryResponse` object which includes:

- IP
- Country
- Country Code (ISO 3166 ALPHA-2)

On Error functions returns null object.

Examples :

- Using IPv4

```dart
final countryIpResponse = await CountryIp.findFromIP('9.9.9.9');

print("countryIpResponse : $countryIpResponse");
// countryIpResponse : CountryResponse(country: United States, countryCode: US, ip: 9.9.9.9)
print("User's country code : ${countryIpResponse?.countryCode}");
// User's country code : US
print("User's country : ${countryIpResponse?.country}");
// User's country : United States
print("User's ip : ${countryIpResponse?.ip}");
// User's ip : 9.9.9.9
```

- Using IPv6

```dart
final countryIpResponse = await CountryIp.findFromIP('::ffff:909:909');

print("countryIpResponse : $countryIpResponse");
// countryIpResponse : CountryResponse(country: United States, countryCode: US, ip: ::ffff:909:909)
print("User's country code : ${countryIpResponse?.countryCode}");
// User's country code : US
print("User's country : ${countryIpResponse?.country}");
// User's country : United States
print("User's ip : ${countryIpResponse?.ip}");
// User's ip : ::ffff:909:909
```

## Issues

Please file any issues, bugs or feature requests as an issue on our [GitHub](https://github.com/NirmalAriyathilake/country_ip/issues) page.

## Author

This Country IP package is developed by [NirmalCode](https://nirmalcode.com).
