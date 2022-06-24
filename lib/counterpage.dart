import 'package:flbc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CounterApp !")),
      body: BlocBuilder<CoounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 24),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () =>
                  context.read<CoounterBloc>().add(CounterIncrementPressed()),
            ),
          ),
        ],
      ),
    );
  }
}
