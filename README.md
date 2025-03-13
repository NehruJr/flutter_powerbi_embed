# flutter_powerbi_embed

**A Flutter package for embedding Power BI reports and dashboards using WebView.**

## Features

- Embed Power BI reports seamlessly in your Flutter app.
- Uses WebView for smooth rendering.
- Supports authentication via access tokens.
- Customizable loading widget and background color.

## Getting Started

To use this package, add it to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_powerbi_embed: latest_version
```

## Usage

Import the package:

```dart
import 'package:flutter_powerbi_embed/flutter_powerbi_embed.dart';
```

Embed a Power BI report:

```dart
PowerBiEmbedScreen(
  embedUrl: 'https://app.powerbi.com/reportEmbed?reportId=your_report_id',
  accessToken: 'your_access_token',
  id: 'your_report_id',
  loadingWidget: CircularProgressIndicator(),
  backgroundColor: Colors.white,
);
```

## Contributors

- [Roshdy Nehru](https://github.com/NehruJr)
- [Amr Yehia](https://github.com/amryehia10)

## Additional Information

This package helps developers integrate Power BI dashboards into their Flutter applications with minimal setup.

---

## License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
