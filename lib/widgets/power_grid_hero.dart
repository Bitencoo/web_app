import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/heroes_provider.dart' as heroesProvider;
import 'package:shop_app/widgets/hero_power_card.dart';

import 'power_card.dart';

class PowerGridHero extends StatelessWidget {
  final heroesProvider.Hero hero;
  const PowerGridHero({Key? key, required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio:
                MediaQuery.of(context).size.width <= 600 ? 7 / 2 : 8 / 2,
            mainAxisSpacing: 10,
          ),
          itemCount: hero.powers.length,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          itemBuilder: (context, index) {
            //It's necessary to pass a provider here because we need to use the power provider on PowerCard
            return ChangeNotifierProvider.value(
              value: hero.powers[index],
              child: GridTile(
                child: HeroPowerCard(),
              ),
            );
          },
        ),
      ),
    );
  }
}
