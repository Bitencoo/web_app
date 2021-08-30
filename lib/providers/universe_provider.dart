import 'package:flutter/material.dart';

class Universe with ChangeNotifier {
  late String id;
  late String name;

  Universe({
    required this.id,
    required this.name,
  });
}

class UniverseProvider with ChangeNotifier {
  final List<Universe> _universes = [
    Universe(id: '1', name: 'Universo A'),
    Universe(id: '2', name: 'Universo B'),
    Universe(id: '3', name: 'Universo C'),
  ];

  List<Universe> get getUniverses {
    return [..._universes];
  }
}
