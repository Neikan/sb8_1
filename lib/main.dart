// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:catch_error/components/app_error_data.dart';
import 'package:catch_error/components/app_text.dart';
import 'package:catch_error/utils/fetch_file.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catch error'),
      ),
      body: FutureBuilder<String>(
        future: fetchFileFromAssets('assets/somefile.txt'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: AppText(text: 'NONE'),
              );

            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());

            case ConnectionState.done:
              if (snapshot.hasError) return AppErrorData();

              return SingleChildScrollView(child: AppText(text: snapshot.data));

            default:
              return SingleChildScrollView(
                child: AppText(text: 'Default'),
              );
          }
        },
      ),
    );
  }
}
