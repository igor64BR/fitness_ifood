import 'package:flutter/material.dart';

import '../appbar_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Breakfast",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: const Padding(
        padding: EdgeInsets.all(10),
        child: AppBarButton(icon: Icon(Icons.arrow_back)),
      ),
      actions: const [
        Padding( // TODO: Ver pq tá sendo renderizado bugado
          padding: EdgeInsets.all(10),
          child: AppBarButton(icon: Icon(Icons.settings)),
        ),
      ],
    );
  }
}
