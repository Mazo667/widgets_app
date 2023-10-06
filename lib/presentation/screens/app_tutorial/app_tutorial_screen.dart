import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidesInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlidesInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlidesInfo>[
  SlidesInfo(
      'Busca la Comida',
      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore ',
      'assets/images/1.png'),
  SlidesInfo('Entrega Rapida', 'ut labore et dolore magna aliqua',
      'assets/images/2.png'),
  SlidesInfo('Disfruta la Comida', 'ut labore et dolore magna aliqua.',
      'assets/images/3.png')
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReach = false;

  @override
  void initState() {
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReach && page >= (slides.length - 1.5)) {
        setState(() {
          endReach = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: pageViewController,
          physics: BouncingScrollPhysics(),
          children: slides
              .map((SlideData) => _Slide(
                  title: SlideData.title,
                  caption: SlideData.caption,
                  imageUrl: SlideData.imageUrl))
              .toList(),
        ),
        Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text("Salir"),
            )),
        endReach
            ? Positioned(
                right: 20,
                bottom: 30,
                child: FadeInRight(
                  from: 15,
                  delay: const Duration(milliseconds: 200),
                  child: FilledButton(
                    child: const Text("Comenzar"),
                    onPressed: () => context.pop(),
                  ),
                ))
            : SizedBox()
      ]),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.titleMedium;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            SizedBox(height: 20),
            Text(title, style: titleStyle),
            SizedBox(height: 20),
            Text(caption, style: captionStyle)
          ],
        ),
      ),
    );
  }
}
