import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/heroes_provider.dart' as heroesProvider;
import 'package:shop_app/providers/universe_provider.dart';

class UniverseRadioTile extends StatefulWidget {
  final heroesProvider.Hero hero;
  const UniverseRadioTile({Key? key, required this.hero}) : super(key: key);

  @override
  _UniverseRadioTileState createState() => _UniverseRadioTileState();
}

class _UniverseRadioTileState extends State<UniverseRadioTile> {
  String dropdownValue = 'Universo A';

  @override
  Widget build(BuildContext context) {
    var universes = Provider.of<UniverseProvider>(context).getUniverses;
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: universes
          .map((universe) => universe.name)
          .toList()
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          onTap: () {
            setState(() {
              Universe _universe =
                  universes.firstWhere((uni) => value == uni.name);
              Provider.of<heroesProvider.HeroesProvider>(context, listen: false)
                  .setUniverse(widget.hero, _universe);
            });
          },
          child: Text(value),
        );
      }).toList(),
    );
  }
}
