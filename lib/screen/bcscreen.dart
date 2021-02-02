import 'package:flutter/material.dart';

class BcScreen extends StatelessWidget {
  static const routeName = '/bcScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Black Company',
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
              'Chapter One: LEGATE',
              style: TextStyle(
                color: Colors.greenAccent[700],
                fontSize: 24.0,
                fontFamily: 'Roboto',
              ),
            ),
            Text(
              'There were prodigies and portents enough, One-Eye says. We must blame ourselves for misinterpreting them. One-Eye’s handicap in no way impairs his marvelous hindsight. Lightning from a clear sky smote the Necropolitan Hill. One bolt struck the bronze plaque sealing the tomb of the forvalaka, obliterating half the spell of confinement. It rained stones. Statues bled. Priests at several temples reported sacrificial victims without hearts or livers. One victim escaped after its bowels were opened and was not recaptured. At the Fork Barracks, where the Urban Cohorts were billeted, the image of Teux turned completely around. For nine evenings running, ten black vultures circled the Bastion. Then one evicted the eagle which lived atop the Paper Tower. Astrologers refused readings, fearing for their lives. A mad soothsayer wandered the streets proclaiming the imminent end of the world. At the Bastion, the eagle not only departed, the ivy on the outer ramparts withered and gave way to a creeper which appeared black in all but the most intense sunlight. But that happens every year. Fools can make an omen of anything in retrospect. We should have been better prepared. We did have four modestly accomplished wizards to stand sentinel against predatory tomorrows—though never by any means as sophisticated as divining through sheeps’ entrails. Still, the best augurs are those who divine from the portents of the past. They compile phenomenal records. Beryl totters perpetually, ready to stumble over a precipice into chaos. The Queen of the Jewel Cities was old and decadent and mad, filled with the stench of degeneracy and moral dryrot. Only a fool would be surprised by rotting fish and all. There wasn’t enough breeze to stir a cobweb. I mopped my face and grimaced at my first patient. “Crabs again, Curly?” He grinned feebly. His face was pale. “It’s my stomach, Croaker.” His pate looks like a polished ostrich egg. Thus the name. I checked the watch schedule and duty roster. Nothing there he would want to avoid. “It’s bad, Croaker. Really.” “Uhm.” I assumed my professional demeanor, sure what it was. His skin was clammy, despite the heat. “Eaten outside the commissary lately, Curly?” A fly landed on his head, strutted like a conqueror. He didn’t notice. “Yeah. Three, four times.” “Uhm.” I mixed a nasty, milky concoction. “Drink this. All of it.” His whole face puckered at the first taste. “Look, Croaker, I.…” The smell of the stuff revolted me. “Drink, friend. Two men died before I came up with that. Then Pokey took it and lived.” Word was out about that. He drank. “You mean it’s poison? The damned Blues slipped me something?” “Take it easy. You’ll be okay. Yeah. It looks that way.” I’d had to open up Walleye and Wild Bruce to learn the truth. It was a subtle poison. “Get over there on the cot where the breeze will hit you—if the son of a bitch ever comes up. And lie still. Let the stuff work.” I settled him down. “Tell me what you ate outside.” I collected a pen and a chart tacked onto a board. I had done the same with Pokey, and with Wild Bruce before he died, and had had Walleye’s platoon sergeant backtrack his movements. I was sure the poison had come from one of several nearby dives frequented by the Bastion garrison. Curly produced one across-the-board match. “Bingo! We’ve got the bastards now.” “Who?” He was ready to go settle up himself. “You rest. I’ll see the Captain.” I patted his shoulder, checked the next room. Curly was it for morning sick call. I took the long route, along Trejan’s Wall, which overlooks Beryl’s harbor. Halfway over I paused, stared north, past the mole and lighthouse and Fortress Island, at the Sea of Torments. Particolored sails speckled the dingy grey-brown water as coastal dhows scooted out along the spiderweb of routes',
              style: TextStyle(
                color: Colors.green[800],
                fontSize: 24.0,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
