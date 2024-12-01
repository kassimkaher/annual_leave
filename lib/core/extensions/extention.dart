import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

kdp({required name, required msg, required c}) {
  final col = {
    "r": "\x1B[31m",
    "gr": "\x1B[32m",
    "y": "\x1B[33m",
    "cy": "\x1B[36m",
    "b": "\x1B[34m",
    "m": "\x1B[35m"
  };
  final e = {
    "r": "🥵",
    "gr": "📗",
    "y": "😨",
    "cy": "🧑🏻‍🎤",
    "b": "👨🏻‍🏭",
    "m": "👩🏻‍🎤"
  };

  log("\x1B[37m ${e[c]} $name: ${col[c]}  $msg");
}

extension SplitMatch<T> on List<T> {
  List<dynamic> splitMatch(bool Function(T element) matchFunction) {
    final listMatch = [];

    for (final element in this) {
      if (matchFunction(element)) {
        listMatch.add(element);
      }
    }

    return listMatch;
  }
}

extension ImageExtention on Uint8List {
  String? toBase64() {
    return base64Encode(this);
  }
}
