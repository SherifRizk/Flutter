import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.black,
        // leading: CircleAvatar(
        //   backgroundColor: Colors.white24,
        //   radius: 20,
        //   child: IconButton(
        //     icon: const Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {},
        //   ),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 7,
            ),
            CircleAvatar(
              backgroundColor: Colors.white24,
              radius: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              'الدردشات',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white24,
            radius: 20,
            child: IconButton(
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Colors.white24,
            radius: 20,
            child: IconButton(
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      const Text(
                        'بحث',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height:115 ,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>buildStoryItem(),
                  itemCount: 6,
                  separatorBuilder: (BuildContext context, int index)=>const SizedBox(
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=>const SizedBox(
                    height: 20,
                  ),
                  itemCount: 16)
            ],
          ),
        ),
      ),
    );
  }
  Widget buildStoryItem() => SizedBox(
    width: 70,
    child: Column(
      children: [
        Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('images/profile-pic.png'),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  end: 3.0,
                  bottom: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.greenAccent,
                ),
              ),
            ]),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Sherif Rizk Ismail',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  Widget buildChatItem() => Row(
    children: [
      Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('images/profile-pic.png'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                end: 3.0,
                bottom: 3.0,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.greenAccent,
              ),
            ),
          ]),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              'Sherif Rizk Ismail',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: Text(
                    'Never Give Up.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4:30 AM',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    ],
  );
}
