import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClipboardUtil {
  Future<void> copyText(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}
