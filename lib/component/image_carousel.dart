import 'package:flutter/material.dart';
import 'package:my_app/component/indicator_dot.dart';
//import 'package:my_app/home.dart';
import 'package:my_app/screens/constants.dart';
import 'package:my_app/screens/data.dart';

class ImageCarhouse extends StatefulWidget {
  const ImageCarhouse({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageCarhouse> createState() => _ImageCarhouseState();
}

class _ImageCarhouseState extends State<ImageCarhouse> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.81,
        child: Stack(
          children: [
            PageView.builder(
              itemCount: BigImages.length,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemBuilder: (context, index) => ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(BigImages[index])),
            ),
            Positioned(
                bottom: DefaultPadding,
                right: DefaultPadding,
                child: Row(
                    children: List.generate(
                        BigImages.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(
                                  left: DefaultPadding / 4),
                              child:
                                  IndicatorDot(isActive: index == _currentPage),
                            )))),
          ],
        ));
  }
}
