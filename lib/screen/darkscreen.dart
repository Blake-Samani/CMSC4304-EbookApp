import 'package:flutter/material.dart';

class DarkScreen extends StatelessWidget {
  static const routeName = '/darkScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Darkness that Comes Before',
          style: TextStyle(
            color: Colors.greenAccent[700],
            fontSize: 24.0,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              // HOW TO CHANGE TEXT SIZE AND COLOR
              'Prologue',
              style: TextStyle(
                color: Colors.greenAccent[700],
                fontSize: 24.0,
                fontFamily: 'Roboto',
              ),
            ),
            Text(
              '2147 Year-of-the-Tusk, the Mountains of Demua The prologue begins in the citadel of Ishuäl. Months earlier, High King Anasûrimbor Ganrelka II fled here with the remnants of his household. Here they thought they would be safe and survive the end of the world. They were wrong.“The citadel of Ishuäl succumbed during the height of the Apocalypse. But no army of inhuman Sranc had scaled its ramparts. No furnace-hearted dragon had pulled down its might gates. Ishuäl was the secret refuge of the Kûniüric High Kings, and no one, not even the No-God, could besiege a secret.” Ganrelka was the first to die of plague. Followed by his concubine and her daughter. It burned though the fortress, claiming the lives of mighty knights, viziers, and servants. Only Ganrelka’s bastard son and a Bardic Priest survived. The boy hid from the Bard, terrified of his strange manner and one white eye. The Bard pursued the boy and one night caught him. Crying and pleading for forgiveness, the Bard raped the boy. Afterward the Bard mumbled, “There are no crimes, when no one is left alive.” Five nights later, the boy pushed the Bard from the walls. “Was it murder when no one was left alive?”Winter came and wolves howled in the forest beyond the walls. The boy survived alone in the fortress. When the snows broke, the boy heard shouts at the gate and found a group of refugees of the Apocalypse. The refugees scaled the walls and the boy hid in the fortress. Eventually, one of the refugees found him.With a voice neither tender nor harsh, he said: “We are Dûnyain, child. What reason could you have to fear us?”But the boy clutched his father’s sword, crying, “So long as men live, there are crimes!”The man’s eyes filled with wonder. “No, child,” he said. “Only so long as men are deceived.”For a moment, the young Anasûrimbor could only stare at him. The solemnly, he set aside his father’s sword and took the stranger’s hand. “I was a prince,” he mumbled.The boy was brought to the refugees and together they celebrated. In Ishuäl they had found shelter against the end of the worlds. The Dûnyain buried the dead with their jewels and fine clothes, destroyed the sorcerous runes on the walls, and burned the Grand Vizier’s books. “And the world forgot them for two thousand years.',
              style: TextStyle(
                color: Colors.green[800],
                fontSize: 20.0,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
