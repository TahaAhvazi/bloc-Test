import 'package:flbc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counterpage.dart';

// Stream<int> countStream(int max) async* {
//   for (var i = 0; i < max; i++) {
//     yield i;
//   }
// }

// Future<int> sumStream(Stream<int> stream) async {
//   int sum = 0;
//   await for (int value in stream) {
//     sum += value;
//   }
//   return sum;
// }

// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() => emit(state + 1);
// }
// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() => emit(state + 1);

//   @override
//   void onChange(Change<int> change) {
//     // TODO: implement onChange
//     super.onChange(change);
//     print(change);
//   }
// }

// class SimpleBlocObserver extends BlocObserver {
//   @override
//   void onChange(BlocBase bloc, Change change) {
//     // TODO: implement onChange
//     super.onChange(bloc, change);
//     print('${bloc.runtimeType} $change');
//   }
// }

// abstract class CounterEvent {}

// class CounterIncrementPressed extends CounterEvent {}

// class CounterBloc extends Bloc<CounterEvent, int> {
//   EventTransformer<T> debounce<T>(Duration duration) {
//     return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
//   }

//   CounterBloc() : super(0) {
//     on<CounterIncrementPressed>((event, emit) {
//       emit(state + 1);
//     });
//   }
//   @override
//   void onChange(Change<int> change) {
//     // TODO: implement onChange
//     super.onChange(change);
//     print(change);
//   }

//   @override
//   void onTransition(Transition<CounterEvent, int> transition) {
//     // TODO: implement onTransition
//     super.onTransition(transition);
//     print(transition);
//   }
// }

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CoounterBloc(),
        child: const CounterPage(),
      ),
    );
  }
}

  // final cubit = CounterCubit();
  // final subscription = cubit.stream.listen(print);
  // cubit.increment();
  // await Future.delayed(Duration.zero);
  // await subscription
  //     .cancel(); // we no longer need to recive the updates of the state (The Cubit State)
  // await cubit.close();
  // CounterCubit()
  //   ..increment()
  //   ..close();

  // BlocOverrides.runZoned(() {
  //   CounterCubit()
  //     ..increment()
  //     ..close();
  // }, blocObserver: SimpleBlocObserver());

  // final bloc = CounterBloc();
  // final subscription = bloc.stream.listen(print);
  // print(bloc.state);
  // bloc.add(CounterIncrementPressed());
  // await Future.delayed(Duration.zero);
  // //print(bloc.state);
  // await subscription.cancel();
  // bloc.close();

  // CounterBloc()
  //   ..add(CounterIncrementPressed())
  //   ..close();

