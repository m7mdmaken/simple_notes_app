import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObservier implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('${bloc.runtimeType} - change is :-= $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('${bloc.runtimeType} - close change is :-= $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('${bloc.runtimeType} - create change is :-= $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('${bloc.runtimeType} - error is :-= $error');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('${bloc.runtimeType} - event is :-= $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('${bloc.runtimeType} - transition is :-= $transition');
  }
}
