import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


StepDefinitionGeneric GetNumberOfFloor() {
  return given1<String, FlutterWorld>(
      'I expect the current floor to be {string}',
        (key, context) async {
      final locator = find.byValueKey(key);
      await FlutterDriverUtils.tap(context.world.driver, locator);
    },
  );
}

StepDefinitionGeneric GetCurrSpot() {
  return given1<String, FlutterWorld>(
    'I expect the current spot to be {string}',
        (key, context) async {
      final locator = find.byValueKey(key);
      await FlutterDriverUtils.tap(context.world.driver, locator);
    },
  );
}

StepDefinitionGeneric GetCurrDepartment() {
  return given1<String, FlutterWorld>(
    'I expect the current department is {string}',
        (key, context) async {
      final locator = find.byValueKey(key);
      await FlutterDriverUtils.tap(context.world.driver, locator);
    },
  );
}
