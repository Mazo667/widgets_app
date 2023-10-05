import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_outlined),
        onPressed: () { context.pop();},
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Wrap(
          spacing: 4,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.account_balance), label: const Text('label')),
            const Divider(),
            FilledButton(onPressed: () {}, child: const Text('FilledButton')),
            FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.access_time), label: const Text('label')),
            FilledButton.tonal(onPressed: () {  }, child: const Text('FilledTonal'),),
            const Divider(),
            OutlinedButton(onPressed: (){} , child: const Text('Outlined Buttom')),
            OutlinedButton.icon(onPressed: (){} , icon: const Icon(Icons.adb_outlined),label: const Text('label')),
            const Divider(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_box)),
            IconButton.filled(onPressed: () {}, icon: const Icon(Icons.account_box)),
            IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.account_box)),
            IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.account_box)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_box),color: Colors.pink),
            const Divider(),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(onPressed: () {}, icon: const Icon(Icons.abc),label: const Text('label')),
            const Divider(),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
          color: colors.primary,
          child:
      InkWell(
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Text('Custom Button',style: TextStyle(color: Colors.white))),
      )),
    );
  }
}
