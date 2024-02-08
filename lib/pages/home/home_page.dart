import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text('Home Page'),
        ),
        body: Center(
            // when trying to extract this widget I no longer have access to the viewModel?
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(model.title, style: const TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                  onPressed: model.resetCounter,
                  child: const Text(
                    'Reset Counter',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.primaryContainer,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.secondary,
                      spreadRadius: -4,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: model.incrementCounter,
                      child: const Text(
                        "+1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                        onPressed: model.incrementCounter2,
                        child: const Text(
                          '+2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ),
                  ElevatedButton(
                      onPressed: model.multiplyCounter,
                      child: const Text(
                        '*2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                ],
              ),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: model.goBack,
          child: const Icon(Icons.arrow_back),
        ),
      ),
      viewModelBuilder: () => HomePageModel(),
    );
  }
}
