import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/page_mhtc_color.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MhtcWebPage extends StatefulWidget {
  MhtcWebPage({Key? key}) : super(key: key);

  @override
  MhtcWebPageState createState() => MhtcWebPageState();
}

class MhtcWebPageState extends State<MhtcWebPage> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            setState(() {
              isVisible = false;
            });
            Navigator.of(context) //Done
                .push(
              MaterialPageRoute(
                builder: (context) {
                  return MhtcColorPage();
                },
              ),
            ).then((value) => setState(() {
                      isVisible = true;
                    }));
          },
          child: Text("Title"),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Builder(builder: (BuildContext context) {
        return Visibility(
          visible: isVisible,
          child: WebView(
            initialUrl: "https://bing.com/",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        );
      }),
    );
  }
}
