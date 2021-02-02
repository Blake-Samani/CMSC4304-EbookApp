import 'package:flutter/material.dart';

class BladeScreen extends StatelessWidget {
  static const routeName = '/bladeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Blade Itself',
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
              'Logen plunged through the trees, bare feet slipping and sliding on the wet earth, the slush, the wet pine needles, breath rasping in his chest, blood thumping in his head. He stumbled and sprawled onto his side, nearly cut his chest open with his own axe, lay there panting, peering through the shadowy forest. The Dogman had been with him until a moment before, he was sure, but there wasn’t any sign of him now. As for the others, there was no telling. Some leader, getting split up from his boys like that. He should’ve been trying to get back, but the Shanka were all around. He could feel them moving between the trees, his nose was full of the smell of them. Sounded as if there was some shouting somewhere on his left, fighting maybe. Logen crept slowly to his feet, trying to stay quiet. A twig snapped and he whipped round. There was a spear coming at him. A cruel-looking spear, coming at him fast with a Shanka on the other end of it. ‘Shit,’ said Logen. He threw himself to one side, slipped and fell on his face, rolled away thrashing through the brush, expecting the spear through his back at any moment. He scrambled up, breathing hard. He saw the bright point poking at him again, dodged out of the way, slithered behind a big tree trunk. He peered out and the Flathead hissed and stabbed at him. He showed himself on the other side, just for a moment, then ducked away, jumped round the tree and swung the axe he was due a little luck. The Flathead stood there, blinking at him. Then it started to sway from side to side, blood dribbling down its face. Then it dropped like a stone, dragging the axe from Logen’s fingers, thrashing around on the ground at his feet. He tried to grab hold of his axe-handle but the Shanka still somehow had a grip on its spear and the point was flailing around in the air. ‘Gah!’ squawked Logen as the spear cut a nick in his arm. He felt a shadow fall across his face. Another Flathead. A damn big one. Already in the air, arms outstretched. No time to get the axe. No time to get out of the way. Logen’s mouth opened, but there was no time to say anything. What do you say at a time like that? They crashed to the wet ground together, rolled together through the dirt and the thorns and the broken branches, tearing and punching and growling at each other. A tree root hit Logen in the head, hard, and made his ears ring. He had a knife somewhere, but he couldn’t remember where. They rolled on, and on, downhill, the world flipping and flipping around, Logen trying to shake the fuzz out of his head and throttle the big Flathead at the same time. There was no stopping. It had seemed a clever notion to pitch camp near the gorge. No chance of anyone sneaking up behind. Now, as Logen slid over the edge of the cliff on his belly, the idea lost much of its appeal. His hands scrabbled at the wet earth. Only dirt and brown pine needles. His fingers clutched, clutched at nothing. He was beginning to fall. He let go a little whimper. His hands closed around something. A tree root, sticking out from the earth at the very edge of the gorge. He swung in space, gasping, but his grip was firm.',
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
