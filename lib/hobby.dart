import 'package:flutter/material.dart';

class hobi extends StatefulWidget {
  const hobi({Key? key}) : super(key: key);

  @override
  State<hobi> createState() => _hobiState();
}
class User {
   String username;
   String hobi;
  String urlAvatar;
  List<String> imageUrls;


  User({
    required this.username,
    required this.hobi,
    required this.urlAvatar,
    required this.imageUrls,

  });
}

class _hobiState extends State<hobi> {
  //isi konten
  var users = [
     User(
        username: 'Achmad Ikbal Rizkytama',
        hobi: 'Futsal',
        urlAvatar: 'assets/futsal.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
      ],),

     User(
        username: 'Aloisius Fidelis B',
        hobi: 'Basket',
       urlAvatar: 'assets/curry.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
      ],),
     User(
        username: 'Virgiawan Arighi',
        hobi: 'Trading',
       urlAvatar: 'assets/trading.jfif',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
      ],)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hobi Kelompok 3'),
      ),
      backgroundColor: Color(0xFF4da9fa),
      body:
      // Column(
      //   children: [
      //     Container(
      //       height: (MediaQuery
      //           .of(context)
      //           .size
      //           .height) / 3,
      //       child: ListView.builder(
      //         padding: EdgeInsets.symmetric(vertical: 20.0),
      //         scrollDirection: Axis.horizontal,
      //         shrinkWrap: true,
      //         itemCount: users.length,
      //         itemBuilder: (context, index) {
      //           final user = users[index];
      //           return Container(
      //             alignment: Alignment.center,
      //             margin: EdgeInsets.only(left: 10, right: 10),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10.0),
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.black54,
      //                   offset: Offset(0.0, 4.0),
      //                   blurRadius: 6.0,
      //                 )],
      //             ),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(10.0),
      //               child: Image.network(
      //                 user.imageUrls[index],
      //                 width: 200,
      //                 height: 210,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ListView.builder(
          //ini untuk membuat msing masing konten jadi vertikal
          itemCount: users.length,
          itemBuilder: (context, index) {
            final User user = users[index];
            return Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Column(
                  children: [
                    // Container(
                    //   height: (MediaQuery
                    //       .of(context)
                    //       .size
                    //       .height) / 3,
                    //   child: ListView.builder(
                    //     padding: EdgeInsets.symmetric(vertical: 20.0),
                    //     scrollDirection: Axis.horizontal,
                    //     shrinkWrap: true,
                    //     itemCount: users.length,
                    //     itemBuilder: (context, index) {
                    //       final User user = users[index];
                    //       return Container(
                    //         alignment: Alignment.center,
                    //         margin: EdgeInsets.only(left: 10, right: 10),
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //           boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.black54,
                    //               offset: Offset(0.0, 4.0),
                    //               blurRadius: 6.0,
                    //             )],
                    //         ),
                    //         child: ClipRRect(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //           child: Image.asset(
                    //             user.urlAvatar,
                    //             width: 200,
                    //             height: 210,
                    //             fit: BoxFit.cover,
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                  Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black54,
                    //     offset: Offset(0.0, 4.0),
                    //     blurRadius: 6.0,
                    //   )],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      user.urlAvatar,
                      width: 200,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                    SizedBox(height: 10,),
                    Text("Nama : ${user.username}",
                      style:
                      TextStyle(fontSize: 24, ),),
                    SizedBox(height: 10,),
                    Text("Hobby : ${user.hobi}",
                      style:
                      TextStyle(fontSize: 18, ),),
                  ],
                ),
              ),
              // ListTile(
              //   leading: CircleAvatar(
              //     //ini yang bikin jadi float left
              //     radius: 28,
              //     backgroundImage: AssetImage(user.urlAvatar),
              //   ),
              //   title: Text(user.username),
              //   subtitle: Text(user.hobi),
              // ),
            );
          },
        ),
      ),
    );
  }
}