import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/heroes_provider.dart';
import 'package:shop_app/widgets/hero_card.dart';

class HeroGrid extends StatelessWidget {
  const HeroGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroes = Provider.of<HeroesProvider>(context).getHeroes;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 800 ? 5 : (3),
        crossAxisSpacing: 10,
        childAspectRatio: 1,
        mainAxisSpacing: 10,
      ),
      itemCount: heroes.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      itemBuilder: (context, index) {
        //It's necessary to pass a provider here because we need to use the hero provider on HeroCard
        return ChangeNotifierProvider.value(
          value: heroes[index],
          child: GridTile(
            child: HeroCard(),
          ),
        );
      },
    );
  }
}
