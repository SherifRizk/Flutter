import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyMembersPage extends StatefulWidget {
  const FamilyMembersPage({super.key});
  @override
  State<FamilyMembersPage> createState() => FamilyMembersPageState();
}
class FamilyMembersPageState extends State<FamilyMembersPage> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_grandfather.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Ojīsan',
                            style: TextStyle(
                              fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Grandfather',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                          final player = AudioPlayer();
                           player.play(AssetSource("sounds/family_members/grandfather.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_grandmother.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'O bāchan',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Grandmother',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/grandmother.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_father.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Chichioya',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Father',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/father.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_mother.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hahaoya',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Mother',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        final player = AudioPlayer();
                        player.play(AssetSource("sounds/family_members/mother.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_son.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Musuko',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Son',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/son.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_daughter.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Musume',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Daughter',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/daughter.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_older_brother.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Ani',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Older brother',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/olderbrother.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_older_sister.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Ane',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Older sister',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/oldersister.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_younger_brother.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Otōto',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Younger brother',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/youngerbrother.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                children:[
                  Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset('assets/images/family_members/family_younger_sister.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Imōto',
                            style: TextStyle(
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Younger sister',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 25.0),
                    child: GestureDetector(
                      onTap: (){
                        player.play(AssetSource("sounds/family_members/youngersister.wav"));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
