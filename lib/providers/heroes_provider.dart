import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'universe_provider.dart';
import 'powers_provider.dart';

class Hero with ChangeNotifier {
  late final String id;
  late final String name;
  late final String imageUrl;
  late final Universe universe;
  late final List<Power> powers;

  Hero({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.powers,
    required this.universe,
  });
}

class HeroesProvider with ChangeNotifier {
  List<Hero> _heroes = [
    Hero(
      id: '1',
      name: 'Hero A',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '1', name: 'Universo A'),
    ),
    Hero(
      id: '2',
      name: 'Hero B',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '2', name: 'Universo B'),
    ),
    Hero(
      id: '3',
      name: 'Hero C',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '3', name: 'Universo C'),
    ),
    Hero(
      id: '4',
      name: 'Hero D',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '1', name: 'Universo A'),
    ),
    Hero(
      id: '5',
      name: 'Hero E',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '2', name: 'Universo B'),
    ),
    Hero(
      id: '6',
      name: 'Hero F',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '3', name: 'Universo C'),
    ),
    Hero(
      id: '7',
      name: 'Hero G',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '1', name: 'Universo A'),
    ),
    Hero(
      id: '8',
      name: 'Hero H',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '2', name: 'Universo B'),
    ),
    Hero(
      id: '9',
      name: 'Hero I',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '3', name: 'Universo C'),
    ),
    Hero(
      id: '10',
      name: 'Hero J',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '1', name: 'Universo A'),
    ),
    Hero(
      id: '11',
      name: 'Hero K',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '2', name: 'Universo B'),
    ),
    Hero(
      id: '12',
      name: 'Hero L',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '3', name: 'Universo C'),
    ),
    Hero(
      id: '13',
      name: 'Hero M',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '1', name: 'Universo A'),
    ),
    Hero(
      id: '14',
      name: 'Hero N',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '2', name: 'Universo B'),
    ),
    Hero(
      id: '15',
      name: 'Hero O',
      imageUrl:
          'https://images.unsplash.com/photo-1621964614855-04b453f05d5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      powers: [],
      universe: Universe(id: '3', name: 'Universo C'),
    )
  ];

  List<Hero> get getHeroes {
    return [..._heroes];
  }

  Hero findById(String id) {
    return _heroes.firstWhere((hero) => hero.id == id);
  }

  Future<void> addProduct(Hero hero) async {
    //var _params = {'auth': authToken};
    final url =
        Uri.https('shop-app-9aaa4-default-rtdb.firebaseio.com', '/heroes.json');

    try {
      final response = await http.post(
        url,
        body: json.encode({
          'name': hero.name,
          'powers': hero.powers
              .map((power) => {
                    'id': power.id,
                    'name': power.name,
                  })
              .toList(),
          'universe': (hero.universe as List<dynamic>)
              .map((universe) => {
                    'id': universe.id,
                    'name': universe.name,
                  })
              .toList(),
          'imageUrl': hero.imageUrl
        }),
      );

      final newHero = Hero(
        id: 's',
        name: hero.name,
        powers: hero.powers,
        universe: hero.universe,
        imageUrl: hero.imageUrl,
      );

      _heroes.add(newHero);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  void addHero(Hero newHero) {
    _heroes.add(
      Hero(
          id: DateTime.now().toString(),
          name: newHero.name,
          imageUrl: newHero.imageUrl,
          universe: newHero.universe,
          powers: newHero.powers),
    );

    notifyListeners();
  }

  void updateHero(Hero newHero, String id) {
    int _index = _heroes.indexWhere((hero) => hero.id == id);
    _heroes[_index] = newHero;
    notifyListeners();
  }

  void deleteHero(String id) {
    int _index = _heroes.indexWhere((hero) => hero.id == id);
    _heroes.removeAt(_index);
    notifyListeners();
  }

  void addPower(Hero hero, Power power) {
    hero.powers.add(power);
    notifyListeners();
  }

  void deletePower(Hero hero, String powerId) {
    hero.powers.removeWhere((power) => power.id == powerId);
    notifyListeners();
  }

  void setUniverse(Hero hero, Universe newUniverse) {
    hero.universe.id = newUniverse.id;
    hero.universe.name = newUniverse.name;
    notifyListeners();
  }

  /* Future<void> fetchHeroes([String filterByUserId = 'false']) async {
    var url = Uri.https(
        'shop-app-9aaa4-default-rtdb.firebaseio.com', '/products.json');

    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      if (extractedData.isEmpty) {
        return;
      }
      url = Uri.https('shop-app-9aaa4-default-rtdb.firebaseio.com',
          '/userFavorites/$userId.json', _params);

      /* final favoriteResponse = await http.get(url);
      final favoriteData = json.decode(favoriteResponse.body); */
      final List<Hero> loadedHeroes = [];

      extractedData.forEach((heroId, heroData) {
        loadedHeroes.add(Hero(
          id: heroId,
          name: heroData['name'],
          powers: (heroData['powers'] as List<dynamic>)
              .map((power) => Power(
                    id: power['id'],
                    name: power['name'],
                  ))
              .toList(),
          imageUrl: heroData['imageUrl'],
          universe: (heroData['universe'] as List<dynamic>)
              .map((universe) => Universe(
                    id: universe['id'],
                    name: universe['name'],
                  ))
              .toList()[0],
          
        ));
      });
      _heroes = loadedHeroes.reversed.toList();
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  } */
}
