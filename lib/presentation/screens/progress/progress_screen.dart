import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Progress Indicators")),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text("Circular Progress Indicator",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black26,
          ),
          Divider(height: 20),
          Text("Circular Progres Indicator Controlado",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
          _ControledIndicatorProgress(),
        ],
      ),
    );
  }
}

class _ControledIndicatorProgress extends StatelessWidget {
  const _ControledIndicatorProgress({super.key});

  @override
  Widget build(BuildContext context) {
    /*el StreamBuilder permite construir un widget que se
    actualiza en función de los datos de un stream*/
    return StreamBuilder<double>(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black26,
                ),
                const SizedBox(width: 20),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                )),
              ],
            ),
          );
        });
  }
}
