import 'package:flutter/material.dart';
import 'package:screen_ui_cis/data/data.dart';

import 'components.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homePageAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: const DefaultTextField(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                   Image.asset(
                    AppAssets.heartBeat,
                    color: Colors.deepPurple.shade300,
                    height: 30,
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const StoryWidgets(),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: CardsViews(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AnimatedBottomNavyBar(),
    );
  }

  AppBar homePageAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title:  Text(
        "Doctors",
        style: TextStyle(color: Colors.deepPurple.shade300),
      ),
      centerTitle: true,
    );
  }
}

