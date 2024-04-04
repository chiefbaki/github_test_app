import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:git_test/core/utils/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.arrowRight).existsSync(), isTrue);
    expect(File(Images.ava).existsSync(), isTrue);
    expect(File(Images.background).existsSync(), isTrue);
    expect(File(Images.backgroundimg).existsSync(), isTrue);
    expect(File(Images.earth).existsSync(), isTrue);
    expect(File(Images.gitFork).existsSync(), isTrue);
    expect(File(Images.logo).existsSync(), isTrue);
  });
}
