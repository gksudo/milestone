//import 'package:flutter_test/flutter_test.dart';
//import 'package:mnew/models/notebook_model.dart';
//import 'package:mnew/models/progress_model.dart';
//import 'package:mockito/mockito.dart';
//
//class MockProgress extends Mock implements Progress {}
//class MockDate extends Mock implements DateTime {}
//
//void main() {
//  group('Project', () {
//    Project trial;
//
//    setUp(() {
//      trial = new Project('unit testing',
//          description: 'i am unit testing this app', progress: null);
//    });
//
//    test('project should be able to add progress to it', () {
//      Progress mockProgress = MockProgress();
//
//      final _mockerina = 'mockerina';
//      when(mockProgress.step).thenReturn(_mockerina);
//
//      expect(trial.getProgress(0), null);
//
//      trial.addProgress(mockProgress);
//
//      expect(trial
//          .getProgress(0)
//          .step, _mockerina);
//    });
//
//    test('project should keep track of progress updates', () {
//      expect(trial.hasProgress(), false);
//
//      trial.addProgress(MockProgress());
//
//      expect(trial.hasProgress(), true);
//    });
//
//    test('project should know how many updates it has', () {
//      trial.addProgress(MockProgress());
//      trial.addProgress(MockProgress());
//
//      expect(trial.stepsTaken(), 2);
//    });
//
//    test('project should tell you what the most recent logged activity was',
//            () {
//          Progress mockFirstStep = MockProgress();
//          Progress mockSecondStep = MockProgress();
//          Progress mockThirdStep = MockProgress();
//
//          final _first = 'first step';
//          final _second = 'second step';
//          final _third = 'third step';
//
//          when(mockFirstStep.step).thenReturn(_first);
//          when(mockSecondStep.step).thenReturn(_second);
//          when(mockThirdStep.step).thenReturn(_third);
//
//          trial.addProgress(mockFirstStep);
//          trial.addProgress(mockSecondStep);
//          trial.addProgress(mockThirdStep);
//
//          expect(trial.getMostRecentStep(), _third);
//        });
//
//
//    test('project should tell you the date of its most recent step', () {
//      Progress progress_yesterday = MockProgress();
//      Progress progress_today = MockProgress();
//
//      String yesterday = '11/21\n2019';
//      String today = '11/22\n2019';
//
//      when(progress_yesterday.getDate()).thenReturn(yesterday);
//      when(progress_today.getDate()).thenReturn(today);
//
//      trial.addProgress(progress_yesterday);
//      trial.addProgress(progress_today);
//
//
//      expect(trial.dateOfMostRecentStep(), today);
//    });
//  });
//}
