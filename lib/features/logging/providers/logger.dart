import 'dart:io' as io;
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger.g.dart';

@riverpod
class Logging extends _$Logging {
  @override
  Logger build() {
    int lineLength = 120;
    try {
      lineLength = io.stdout.terminalColumns;
    } catch (e) {
      // ignore: avoid_print
    }
    return Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 8,
        lineLength: lineLength,
        colors: io.stdout.supportsAnsiEscapes,
        printEmojis: true,
        dateTimeFormat: DateTimeFormat.dateAndTime,
      ),
    );
  }
}
