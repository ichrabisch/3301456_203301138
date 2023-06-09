import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:paw/view/menu.dart';
import 'package:paw/view/musics/view/music_search_view.dart';
import 'package:paw/view/playlists.dart';
import 'package:paw/view/setting/settings_view.dart';
import 'package:paw/view/pages/shazam.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;
  final screens = [
    const MusicSearchView(),
    const Shazam(),
    const Menu(),
    const PlayLists(),
    const SettingView(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.search, size: 30, color: Color.fromARGB(255, 3, 92, 66)),
      const Icon(Icons.mic_external_on_outlined,
          size: 30, color: Color.fromARGB(255, 3, 92, 66)),
      const Icon(Icons.headphones,
          size: 30, color: Color.fromARGB(255, 3, 92, 66)),
      const Icon(Icons.my_library_music,
          size: 30, color: Color.fromARGB(255, 3, 92, 66)),
      const Icon(Icons.settings,
          size: 30, color: Color.fromARGB(255, 3, 92, 66)),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 92, 66),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: index,
        color: const Color.fromARGB(255, 247, 238, 203),
        backgroundColor: const Color.fromARGB(255, 3, 92, 66),
        items: items,
        onTap: (index) {
          setState(() => this.index = index);
        },
        animationCurve: Curves.elasticOut,
        animationDuration: const Duration(milliseconds: 1500),
      ),
    );
  }
}
