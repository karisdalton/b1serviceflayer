import 'package:test/test.dart';
import 'package:b1serviceflayer/b1serviceflayer.dart';
import 'logindetailsfortests.dart' as conf;

void main() {
  group('A group of tests', () {
    var awesome = {} as B1ServiceLayer;

    setUp(() async {
      awesome = B1ServiceLayer(
        B1Connection(
          companyDB: conf.companyDB,
          userName: conf.user,
          password: conf.pwd,
          serverUrl: conf.ipAddress + conf.url,
        ),
      );
    });

    test('First Test', () async {
      var r =
          await awesome.queryAsync('\$metadata').timeout(Duration(seconds: 20));
      expect(r, isNotNull);
    });
  });
}
