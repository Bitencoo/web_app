import 'package:flutter/material.dart';

class Power with ChangeNotifier {
  late String id;
  late String name;

  Power({required this.id, required this.name});
}

class PowersProvider with ChangeNotifier {
  final List<Power> _powers = [
    Power(id: '1', name: 'Power A'),
    Power(id: '2', name: 'Power B'),
    Power(id: '3', name: 'Power C'),
    Power(id: '4', name: 'Power D'),
    Power(id: '5', name: 'Power E'),
    Power(id: '6', name: 'Power F'),
    Power(id: '7', name: 'Power G'),
    Power(id: '8', name: 'Power H'),
    Power(id: '9', name: 'Power I'),
    Power(id: '10', name: 'Power J'),
    Power(id: '11', name: 'Power K'),
    Power(id: '12', name: 'Power L'),
    Power(id: '13', name: 'Power M'),
    Power(id: '14', name: 'Power N'),
    Power(id: '15', name: 'Power O'),
    Power(id: '16', name: 'Power P'),
    Power(id: '17', name: 'Power Q'),
    Power(id: '18', name: 'Power R'),
    Power(id: '19', name: 'Power S'),
    Power(id: '20', name: 'Power T'),
  ];

  List<Power> get getPowers {
    return [..._powers];
  }
}
