// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:catch_error/components/app_text.dart';

class AppErrorData extends StatelessWidget {
  const AppErrorData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppText(text: 'Файл не найден'),
    );
  }
}
