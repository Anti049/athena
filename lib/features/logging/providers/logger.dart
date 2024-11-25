import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger.g.dart';

@Riverpod(keepAlive: true)
Logger logger(Ref ref) {
  Logger.level = Level.debug;
  return Logger(
    filter: ProductionFilter(),
    printer: SimplePrinter(),
  );
}
