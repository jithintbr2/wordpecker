import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends HookWidget {
  final String title;
  final String url;
  const WebViewPage({required this.title, required this.url, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late FlutterWebviewPlugin flutterWebviewPlugin;
    useEffect(() {
      flutterWebviewPlugin = FlutterWebviewPlugin();
      return () => flutterWebviewPlugin.dispose();
    }, []);

    return WebviewScaffold(
      url: url,
      withJavascript: true,
      resizeToAvoidBottomInset: true,
      withZoom: true,
      // hidden: true,
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () => flutterWebviewPlugin.reload()),
        ],
      ),
    );
  }
}
