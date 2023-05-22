import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyMembersPage extends StatefulWidget {
  const FamilyMembersPage({super.key});
  @override
  State<FamilyMembersPage> createState() => FamilyMembersPageState();
}
class FamilyMembersPageState extends State<FamilyMembersPage> {
  final player = AudioPlayer();
  List<FamilyModel> familyMembers = [
    FamilyModel(
      image: 'assets/images/family_members/family_grandfather.png',
      japaneseName: 'Ojīsan',
      englishName: 'Grandfather',
      sound: "sounds/family_members/grandfather.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_grandmother.png',
        japaneseName: 'O bāchan',
        englishName: 'Grandmother',
        sound: "sounds/family_members/grandmother.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_father.png',
        japaneseName: 'Chichioya',
        englishName: 'Father',
        sound: "sounds/family_members/father.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_mother.png',
        japaneseName: 'Hahaoya',
        englishName: 'Mother',
        sound: "sounds/family_members/mother.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_son.png',
        japaneseName: 'Musuko',
        englishName: 'Son',
        sound: "sounds/family_members/son.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_daughter.png',
        japaneseName: 'Musume',
        englishName: 'Daughter',
        sound: "sounds/family_members/daughter.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_older_brother.png',
        japaneseName: 'Ani',
        englishName: 'Older brother',
        sound: "sounds/family_members/olderbrother.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_older_sister.png',
        japaneseName: 'Ane',
        englishName: 'Older sister',
        sound: "sounds/family_members/oldersister.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        japaneseName: 'Otōto',
        englishName: 'Younger brother',
        sound: "sounds/family_members/youngerbrother.wav"
    ),
    FamilyModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        japaneseName: 'Imōto',
        englishName: 'Younger sister',
        sound: "sounds/family_members/youngersister.wav"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context,index)=>buildFamilyItem(familyMembers[index]),
          itemCount: familyMembers.length),
    );
  }
  Widget buildFamilyItem(FamilyModel  familyMember)=> Container(
    height: 100,
    color: Colors.green,
    child: Row(
      children:[
        Container(
          color: const Color(0xffFFF6DC),
          child: Image.asset(familyMember.image),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  familyMember.japaneseName,
                  style: const TextStyle(
                      fontSize: 17.0
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  familyMember.englishName,
                  style: const TextStyle(
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
              player.play(AssetSource(familyMember.sound));
            },
            child: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          ),
        ),
      ],
    ),
  );

}
class FamilyModel {
  late final String image;
  late final String japaneseName;
  late final String englishName;
  late final String sound;
  FamilyModel({
     required this.image,
     required this.japaneseName,
     required this.englishName,
     required this.sound}
      );
}