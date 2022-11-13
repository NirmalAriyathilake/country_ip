With `country_ip` you can find users' country (and nothing else) from their IP address.

This package is based on [country.is](https://country.is/). No API_KEY or AUTHORIZATION needed. Free to use API.

## Features


Use this package to find :
* User's IP
* User's Country 
* User's Country Code (ISO 3166 ALPHA-2)

## Getting started

To use this plugin, add `country_ip` as a dependency in your pubspec.yaml file.

```yaml
dependencies:    
  country_ip: [latest-version]   
```

## Usage

Import `country_ip`

```dart
import 'package:country_ip/country_ip.dart';
```

To find users' country from their current IP call `CountryIp.find()`


```dart
final countryIpResponse = await CountryIp.find();

print("countryIpResponse : $countryIpResponse");
print("User's country code : ${countryIpResponse.countryCode}");
print("User's country : ${countryIpResponse.country}");
print("User's IP : ${countryIpResponse.ip}");
```

## Issues

Please file any issues, bugs or feature requests as an issue on our [GitHub](https://github.com/NirmalAriyathilake/country_ip/issues) page.

## Author

This Country IP package is developed by [NirmalCode](https://nirmalcode.com).
