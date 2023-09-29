import 'package:flutter/material.dart';
import 'package:test_3/component/character_stat_editor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crea il tuo personaggio"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CharacterStatEditor(
            label: "Forza",
            initialValue: 3,
          ),
          CharacterStatEditor(
            label: "Energia",
            initialValue: 2,
          ),
          CharacterStatEditor(
            label: "Velocita",
            initialValue: 4,
          ),
        ],
      ),
    );
  }
}
