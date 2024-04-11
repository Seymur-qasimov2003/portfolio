import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});

  final double percentage;
  final String title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Flutter',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'Dart',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.7,
            title: 'Firebase',
            image: 'assets/images/image.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'GetStorage',
            image: 'assets/images/image.png'),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          title: 'Sqlite',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Shared Prefrences',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Responsive Design',
            image: 'assets/images/image.png'),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'Clean Architecture',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'Riverpod',
          image: 'assets/images/image.png',
        ),

        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Provider',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          title: 'Go Router',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'Rest Api',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Linux',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'C#',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Js',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Css',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Html',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Git',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Github',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Cyber Security',
          image: 'assets/images/image.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          title: 'AzureDevops',
          image: 'assets/images/image.png',
        ),

        ///Unit testing, Integration testing, Widget testing
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Unit ,Integration,Widget testing',
          image: 'assets/images/image.png',
        ),

        ///kotlin
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          title: 'Kotlin',
          image: 'assets/images/image.png',
        ),

        ///c++
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          title: 'C++',
          image: 'assets/images/image.png',
        ),
      ],
    );
  }
}
