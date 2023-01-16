// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:catch_error/styles/text.dart';

class AppText extends StatelessWidget {
  final String text;

  const AppText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        text,
        style: getBaseTextStyle(),
      ),
    );
  }
}
