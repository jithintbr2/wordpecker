import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';

class PaymentWebPage extends StatefulWidget {
  final int tempId;
  const PaymentWebPage({required this.tempId});

  @override
  _PaymentWebPage createState() => _PaymentWebPage();
}

late WebViewController controllerGlobal;

class _PaymentWebPage extends State<PaymentWebPage> {
  final String successPage = "payment_success";
  final String failurePage = "payment_failure";
  String url = "${Config.apiBaseUrl}/online_payment";
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();

    flutterWebviewPlugin.onUrlChanged.listen((String url) async {
      print("Loaded $url");
      print("navigating to...$url");
      if (url.toLowerCase().contains(successPage)) {
        Navigator.of(context).pop(true);
      } else if (url.toLowerCase().contains(failurePage)) {
        Navigator.of(context).pop(false);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    flutterWebviewPlugin.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _exitApp(context),
      child: _buildSimpleWebView(),
    );
  }

  Widget _buildSimpleWebView() {
    print("Initial URL => $url/?temp_id=${widget.tempId}");
    return Scaffold(
        appBar: AppBar(title: Text("Payment")),
        body: Column(
          children: <Widget>[
            Expanded(
              child: WebView(
                initialUrl: "$url/?temp_id=${widget.tempId}",
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  controllerGlobal = webViewController;
                },
                onPageFinished: (url) {
                  print("Loaded $url");
                  print("......done/////....");
                  print(widget.tempId);
                  if (url.toLowerCase().contains(successPage)) {
                    // Navigator.of(context).pop(true);
                    LocalStorage localStorage = LocalStorage();
                    localStorage.remove('cart');
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/orderDetails', (route) => false,
                        arguments: {'orderId': 0, 'tempId': widget.tempId});
                  } else if (url.toLowerCase().contains(failurePage)) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Payment Failed.'),
                      backgroundColor: Colors.red,
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(10),
                    ));
                    Navigator.of(context).pop();
                  }
                },
              ),
            ),
          ],
        ));
  }

  Future<bool> _exitApp(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Warning"),
        content: Text(
            "Going back now may cause payment not processed correctly. Do you really want to go back?"),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context,
                  Config.useDashboardEntry ? '/homeDashboard' : '/home',
                  (route) => false);
            },
            child: Text("okay"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text("Cancel"),
          ),
        ],
      ),
    );
    return false;
  }
}
