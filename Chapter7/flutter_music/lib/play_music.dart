import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midi/flutter_midi.dart';

class PlayMusic extends StatefulWidget {
  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {

   @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Play Music"),
      ),
      body: Column(
        children: <Widget>[
          buildPlayButton(),
          buildGenerateButton()
        ],
      )
    );
  }

  Widget buildPlayButton() {
    return Center(
      child: RaisedButton(
        child: Text("Play"),
        onPressed: () {
           FlutterMidi.playMidiNote(midi: 60);
        },
        ),
      );
  }

  Widget buildGenerateButton() {
    return Center(
      child: RaisedButton(
        child: Text("Generate Music"),
        onPressed: () {
          play();
        },
        ),
      );
  }

  //  void load(String asset) async {
  //   FlutterMidi.unmute(); // Optionally Unmute
  //   ByteData _byte = await rootBundle.load(asset);
  //   FlutterMidi.prepare(sf2: _byte);

      play() async {
        var url = "34.70.80.18:8000/download/output_1573589840.mid";
        AudioPlayer audioPlayer = AudioPlayer();
        AudioPlayer.logEnabled = true;
        int result = await audioPlayer.play(url);
        if (result == 1) {
      // success
      }
    }
  //}

}