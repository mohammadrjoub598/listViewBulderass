import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card({Key? key}) : super(key: key);
  List mobile = [
    {
      'name': 'awfa',
      'image':
          'https://t4.ftcdn.net/jpg/02/97/24/51/360_F_297245133_gBPfK0h10UM3y7vfoEiBC3ZXt559KZar.jpg',
      'id': '8952514',
    },
    {
      'name': 'sameer',
      'image': 'https://t4.ftcdn.net/jpg/02/97/24/51/360_F_297245133_gBPfK0h10UM3y7vfoEiBC3ZXt559KZar.jpg',
      'id': '546548',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            width: double.infinity,
            height: 450,
            color: Colors.white70,
            child: ListView.builder(
              itemCount: mobile.length,
              itemBuilder: (context, i) {
                return 
                ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage("${mobile[i]['image']}",),),
                  // leading: Icon(
                  //   Icons.contact_page_rounded,
                  //   color: Colors.black,
                  // ),
                  title: Text("${mobile[i]['id']}"),
                  subtitle:  Text("${mobile[i]['name']}"),
                  trailing:  Container(
                    width: 60,
                    height: 60,
                    child: Row(
                      children:[
                        
                        Icon(Icons.add),
                        Icon(Icons.remove),
                      ]
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}