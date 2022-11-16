import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../data/data.dart';

class StoryWidgets extends StatelessWidget {
  const StoryWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Container(
            
            height: 80,
            width: 80,
            decoration:  BoxDecoration(shape: BoxShape.circle,color: Colors.deepPurple.shade200,),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              doctors[index].photo,
              fit: BoxFit.fitHeight,
              
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: "Search",
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.white, width: 0.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.white, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.white, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        hintStyle: Theme.of(context).textTheme.headline1?.copyWith(
              fontSize: 18,
              color: Colors.grey,
            ),
      ),
      validator: (value) {
        return null;
      },
    );
  }
}

class AnimatedBottomNavyBar extends StatelessWidget {
  const AnimatedBottomNavyBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      showElevation: false,
      onItemSelected: (value) {},
      selectedIndex: 1,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.home), 
          title: const Text("Home"),
          activeColor: Colors.deepPurple,
          inactiveColor: Colors.black,
          ),
        BottomNavyBarItem(
          icon: const Icon(Icons.local_hospital), 
          title: const Text("Doctors"),
          activeColor: Colors.deepPurple.shade300,
          inactiveColor: Colors.black,
          ),
        BottomNavyBarItem(
          icon: const Icon(Icons.chat), 
          title: const Text("Chat"),
          activeColor: Colors.deepPurple,
          inactiveColor: Colors.black,
          ),
        BottomNavyBarItem(
          icon: const Icon(Icons.calendar_today), 
          title: const Text("Agenda"),
          activeColor: Colors.deepPurple,
          inactiveColor: Colors.black,
          ),
        BottomNavyBarItem(
          icon: const Icon(Icons.settings), 
          title: const Text("Settings"),
          activeColor: Colors.deepPurple,
          inactiveColor: Colors.black,
          ),

      ],
    );
  }
}

class CardsViews extends StatelessWidget {
  const CardsViews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: [
          const WovenGridTile(8/10),
          const WovenGridTile(
            4 / 7,
            crossAxisRatio: 0.9,
            alignment: AlignmentDirectional.centerEnd,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: doctors.length,
        (context, index) =>  CardInfo(index:index),
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  final int index;
  const CardInfo({
    Key? key, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.01),
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Image.asset(
                doctors[index].photo,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              doctors[index].name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              doctors[index].specialty,
              style: const TextStyle(
                  color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Icon(Icons.star,color: Colors.yellow,size: 20,),
              const SizedBox(width: 2,),
              Text(
                "${doctors[index].review} Reviews",
                style: const TextStyle(
                    color: Colors.black, fontSize: 14),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
