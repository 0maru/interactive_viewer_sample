import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart' show StreamGroup;
import 'package:grinder/grinder.dart';

main(List<String> args) => grind(args);

/// flutter pub get
@Task('pub get')
void pub() {
  _processLog(Process.start('flutter', ['pub', 'get']));
}

/// build_runner でファイルを生成
@Task('run build_runner')
void runner() {
  _runProcess(
    'flutter',
    ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
  );
}

// ビルド中にログを出力する方法１
Future<void> _processLog(Future<Process> process) async {
  final _process = await process;
  final output = StreamGroup.merge([_process.stdout, _process.stderr]);
  await for (final message in output) {
    log(utf8.decode(message));
  }
}

// ビルド中にログを出力する方法２
Future<void> _runProcess(String executable, List<String> arguments) async {
  final result = await Process.run(executable, arguments);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}
