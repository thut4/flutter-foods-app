//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:my_app/component/image_carousel.dart';
//import 'package:my_app/component/menu.dart';
import 'package:my_app/component/section_title.dart';
import 'package:my_app/screens/constants.dart';
import 'package:my_app/screens/data.dart';
import 'component/restaurant_info_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            floating: true,
            elevation: 0,
            title: Column(
              children: [
                Text(
                  "Deliver to".toUpperCase(),
                  style: const TextStyle(
                      color: ActiveColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Magway",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Filter",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
          const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
              sliver: SliverToBoxAdapter(
                child: ImageCarhouse(),
              )),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Best Picks",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  CardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: DefaultPadding),
                    child: RestaurantInfoCard(
                      title: CardData[index]['name'],
                      location: CardData[index]['location'],
                      image: CardData[index]['image'],
                      deliverTime: CardData[index]['deliverTime'],
                      rating: CardData[index]['rating'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(DefaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("assets/banner.webp"),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  CardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: DefaultPadding),
                    child: RestaurantInfoCard(
                      title: CardData[index]['name'],
                      location: CardData[index]['location'],
                      image: CardData[index]['image'],
                      deliverTime: CardData[index]['deliverTime'],
                      rating: CardData[index]['rating'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
