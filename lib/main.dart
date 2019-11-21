import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(home:WebViewExample()));

class WebViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Webview Demo'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                _controller.loadUrl('https://www.fujitv.co.jp/sazaesan/');
              },
            ),
            IconButton(
              icon: Icon(Icons.add_comment),
              onPressed: () {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(title: Text('HogeHoge'),);
                });
              },
            ),
          ],
        ),
        body: WebView(
          initialUrl: 'https://youtube.com',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _controller = controller;
          },
        ),
    );
  }
}