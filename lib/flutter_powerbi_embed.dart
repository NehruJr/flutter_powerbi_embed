import 'package:flutter/material.dart';
import 'package:flutter_powerbi_embed/powerbi_content.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PowerBiEmbedScreen extends StatefulWidget {
  const PowerBiEmbedScreen({
    super.key,
    required this.embedUrl,
    required this.accessToken,
    required this.id,
    this.loadingWidget,
    this.backgroundColor = Colors.white,
  });

  final String embedUrl;
  final String accessToken;
  final String id;
  final Widget? loadingWidget;
  final Color backgroundColor;

  @override
  State<PowerBiEmbedScreen> createState() => _PowerBiEmbedScreenState();
}

class _PowerBiEmbedScreenState extends State<PowerBiEmbedScreen> {
  bool isLoading = true;
  late WebViewController webViewController;

  void setLoadingValue(bool newValue) {
    setState(() {
      isLoading = newValue;
    });
  }

  @override
  void initState() {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(widget.backgroundColor)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress >= 100) {
              setLoadingValue(false);
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadHtmlString(
        powerBIHtml(
          id: widget.id,
          accessToken: widget.accessToken,
          embedUrl: widget.embedUrl,
        ),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: isLoading
          ? (widget.loadingWidget ??
              Center(
                child: CircularProgressIndicator(),
              ))
          : WebViewWidget(
              controller: webViewController,
            ),
    );
  }
}
