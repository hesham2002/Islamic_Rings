import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islamic_application/ring_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  bool isPlaying = false;
  Icon playIcon = Icon(
    Icons.play_circle,
    color: Colors.white,
    size: 40,
  );
  Icon stopIcon = Icon(
    Icons.stop_circle,
    color: Colors.white,
    size: 40,
  );

  @override
  @override
  Widget build(BuildContext context) {
    List<RingData> rings = [
      RingData(ringName: 'أضفيت', sound: 'sounds/adfyt.mp3'),
      RingData(ringName: 'قلبك حنين', sound: 'sounds/albak henin.mp3'),
      RingData(ringName: 'السلام عليك', sound: 'sounds/alsalam alyk.mp3'),
      RingData(ringName: 'أنا العبد', sound: 'sounds/ana alabd.mp3'),
      RingData(ringName: 'بكل الشوق', sound: 'sounds/bekol elshawk.mp3'),
      RingData(ringName: 'دوما لك الحمد', sound: 'sounds/dowmn lak elhamd.mp3'),
      RingData(
          ringName: 'ف حضرت المحبوب', sound: 'sounds/fi hadret elmahbob.mp3'),
      RingData(
          ringName: 'لا اله الا الله', sound: 'sounds/la elah ela allah.mp3'),
      RingData(ringName: 'ما شاء الله', sound: 'sounds/mashaa allah.mp3'),
      RingData(ringName: 'محمد نبينا', sound: 'sounds/mohamed nabinaa.mp3'),
      RingData(ringName: 'رضيت بالله ربا', sound: 'sounds/raytuo bellah.mp3'),
      RingData(ringName: 'صلوا عليه', sound: 'sounds/salou alyhe.mp3'),
      RingData(ringName: 'طلع البدر علينا', sound: 'sounds/talaa albadro.mp3'),
      RingData(
          ringName: 'يا نبي سلام عليك', sound: 'sounds/ya nabu salam alyk.mp3'),
      RingData(
          ringName: 'يا رسول المحبة', sound: 'sounds/ya rasool elmahabah.mp3'),
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff32323C),
              Color(0xff344363),
              Color(0xff0279B2),
              Color(0xff11293E),
              Color(0xff121F4D),
            ]),
          ),
          child: GridView.builder(
            itemCount: rings.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 5, childAspectRatio: 3),
            itemBuilder: (context, index) => Card(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      rings[index].ringName,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    IconButton(
                      onPressed: () async {
                        if (isPlaying) {
                          // Stop the currently playing sound
                          await audioPlayer.stop();
                        }

                        // Load and play the new sound
                        Uri uri = await audioCache.load(rings[index].sound);
                        await audioPlayer.play(UrlSource(uri.toString()));

                        // Update the state to indicate that a sound is playing
                        setState(() {
                          isPlaying = true;
                        });
                      },
                      icon: playIcon,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
