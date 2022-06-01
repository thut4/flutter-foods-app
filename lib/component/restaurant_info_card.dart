import 'package:flutter/material.dart';
import 'package:my_app/screens/constants.dart';


class RestaurantInfoCard extends StatelessWidget {
  const RestaurantInfoCard({
    Key? key,
    required this.title,
    required this.location,
    required this.image,
    required this.deliverTime,
    required this.rating,
    required this.press,
  }) : super(key: key);
  final String? title;
  final String? location;
  final String? image;
  final int? deliverTime;
  final String? rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              //child: Image.asset("assets/img_2.png"),
              child: Image.asset(image!),
            ),
            const SizedBox(height: DefaultPadding / 2),
            Text(
              title!,
              //CardData[0]['name'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              //CardData[0]['location'],
              location!,
              maxLines: 1,
              style: const TextStyle(color: BodyTextColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: DefaultPadding / 2),
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: DefaultPadding / 2,
                          vertical: DefaultPadding / 8),
                      decoration: const BoxDecoration(
                          color: ActiveColor,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Text(
                        //rating!,
                        rating.toString(),
                        //"4.6",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    //Text("15 min"),
                    Text(" $deliverTime min"),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Color(0xFF868686),
                    ),
                    const Spacer(),
                    const Text("Free Delivery"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
