import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/heroes_provider.dart';
import 'package:shop_app/providers/products_provider.dart';
import 'package:shop_app/screens/edit_hero_screen.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/hero_card.dart';
import 'package:shop_app/widgets/user_hero_item.dart';

class UserHeroScreen extends StatelessWidget {
  const UserHeroScreen({Key? key}) : super(key: key);

  final String id = '';

/*   Future<void> _refreshProducts(BuildContext context) async {
    await Provider.of<Products>(context, listen: false).fetchProducts(true);
  } */

  static const routeName = '/user-heroes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your heroes', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(EditHeroScreen.routeName, arguments: id);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body:
          /* FutureBuilder(
        future: _refreshProducts(context),
        builder: (context, snpashot) => snpashot.connectionState ==
                ConnectionState.waiting
            ? Center(
                child: CircularProgressIndicator(),
              )
            : */ /* RefreshIndicator(
                onRefresh: () {
                  return _refreshProducts(context);
                },
                child:  */
          Consumer<HeroesProvider>(
        builder: (context, heroesData, _) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: heroesData.getHeroes.length,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    UserHeroItem(
                      id: heroesData.getHeroes[index].id,
                      title: heroesData.getHeroes[index].name,
                      imageUrl: heroesData.getHeroes[index].imageUrl,
                    ),
                    //imageUrl: productsData.items[index].imageUrl),
                    Divider(),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
