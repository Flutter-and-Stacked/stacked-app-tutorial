import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'startup_view_model.dart';

class StartUpPage extends StatelessWidget {
  const StartUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
        viewModelBuilder: () => StartUpViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                title: const Text('Start Up Screen'),
              ),
              floatingActionButton: FloatingActionButton(
                  onPressed: model.doSomething,
                  child: const Icon(Icons.arrow_forward)),
              body: const Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to the Start Up View, press the arrow to navigate to the Home View',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ));
  }
}
