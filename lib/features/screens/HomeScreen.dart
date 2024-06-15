//
//
// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// import '../../utils/contants/colors.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     final list = [BusinessModel(title: '',data:"demo1")
//       ,BusinessModel(title: 'MyJobs',data:"demo2"),
//       BusinessModel(title: 'Estimates',data:"demo3")];
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           items:  <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/home.svg',
//                   height:24,width: 24,
//                 ),
//                 label: "Home",
//
//             ),
//             BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/calender.svg',
//                   height:24,width: 24,
//                 ),
//                 label: "calendar",
//
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset(
//                 'assets/images/image_help.png',
//                 height:70,width: 70,
//               ),
//               label: "Help",
//
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/icons/business.svg',
//                 height:24,width: 24,
//               ),
//               label: "Business",
//
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/icons/jobs.svg',
//                 height:24,width: 24,
//               ),
//               label: "Jobs",
//
//             ),
//           ],
//           type: BottomNavigationBarType.shifting,
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.black,
//           iconSize: 30,
//           onTap: _onItemTapped,
//           elevation: 5
//       ),
//
//       appBar: AppBar(
//         toolbarHeight: 70,
//           centerTitle:true,
//         leading: const Icon(Icons.menu),
//         title: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width:40,
//               height:40,
//               decoration:  const BoxDecoration(
//                 gradient:LinearGradient(
//             colors: [Colors.lightBlueAccent,Colors.black,Colors.lightBlueAccent],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight
//              ),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                   bottomLeft: Radius.circular(20),
//                   bottomRight: Radius.circular(2)
//                 )
//               ),
//               child: Icon(Icons.person,color: Colors.white,),
//             ),
//             const SizedBox(
//               height: 6,
//             ),
//             const Text("[Business Name]")
//           ],
//         ),
//         actions: [
//           const Icon(Icons.people),
//           const SizedBox(width: 6,),
//           const Icon(Icons.mail),
//           const SizedBox(width: 6,),
//           Stack(
//             children: <Widget>[
//               const Icon(
//                 Icons.notifications,
//               ),
//               Positioned(
//                 right: 0,
//                 top: 0,
//                 child: Container(
//                   height: 12,
//                   width: 12,
//
//                   decoration:  const BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                     color: Colors.red,
//                   ),
//                  child:  const Center(
//                    child: Text(
//                      '13',
//                      style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 6
//                      ),
//                      textAlign: TextAlign.center,
//                    ),
//                  ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(width: 8,),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height:10,),
//               roundedRectBorderWidget,
//               const SizedBox(height: 20,),
//
//               SizedBox(
//                 height: 200,
//
//                 child: ListView.builder(
//                   itemCount: list.length,
//                     scrollDirection:Axis.horizontal,itemBuilder: (context,index){
//                   return Item11(list[index]);
//                 }),
//               ),
//
//               //title
//               HeadTitle("Getting Started","Todo List"),
//
//               //items toda
//               SizedBox(
//
//                 height: 264,
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 3,
//                     itemBuilder: (context,index){
//                   return todoItem();
//                 }),
//               ),
//
//               //title
//               HeadTitle("Customized","Account Features"),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height*0.20,
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 3,
//                     itemBuilder: (context,index){
//                       return AccountFeatureItem(context);
//                     }),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// Widget Item11(BusinessModel item){
//   return Card(
//     // shadowColor: SColors.brown_border,
//     // elevation: 4,
//     child: Container(
//      padding: const EdgeInsets.all(12.0),
//       height: 50,
//       width:105,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Text(item.title,style: TextStyle(fontSize: 17,color: Colors.black),),
//           SizedBox(height: 10,),
//         DottedBorder(
//           borderType: BorderType.RRect,
//           radius: Radius.circular(12),
//           padding: EdgeInsets.all(6),
//           color: SColors.brown_border,
//
//           child: Expanded(
//             child: ClipRRect(
//               borderRadius: BorderRadius.all(Radius.circular(12)),
//               child: Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Container(
//                  height: 50,
//                   width: double.infinity,
//                   alignment: Alignment.center,
//                   child: Text(
//                       item.data,style: TextStyle(fontSize: 14,color: Colors.grey)
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//           // DottedBorder(
//           //   radius: Radius.circular(32),
//           //   padding: EdgeInsets.all(8),
//           //   color: SColors.brown_border,
//           //   child:ClipRRect(
//           //
//           //     child: Container(
//           //       height: 50,
//           //       width:70,
//           //       alignment: Alignment.center,
//           //       child: Text(
//           //           item.data
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           SizedBox(height: 10,),
//
//           SvgPicture.asset(
//             'assets/icons/next.svg',
//           )
//           // const Icon(Icons.navigate_next),
//
//
//
//         ],
//
//       ),
//     ),
//   );
// }
//
// Widget todoItem(){
//   return Card(
//     child: Wrap(
//       crossAxisAlignment :WrapCrossAlignment.center,
//       direction: Axis.horizontal,
//       // crossAxisAlignment: CrossAxisAlignment.center,
//      // mainAxisAlignment:,
//      children: [
//        const SizedBox(width: 12,),
//        const Icon(Icons.car_rental,size: 50,color:Colors.grey),
//        Padding(
//          padding: const EdgeInsets.all(4.0),
//          child: Card(
//            child: Container(
//              width: 250,
//              // height: 260,
//              padding: const EdgeInsets.all(16),
//              alignment: Alignment.center,
//
//              decoration: const BoxDecoration(
//                  boxShadow:[
//                    BoxShadow(
//                        color: Colors.grey
//                    ),
//                    BoxShadow(
//                        color: Colors.white,spreadRadius: -1,
//                        blurRadius: 4
//                    )
//                  ],
//                borderRadius: BorderRadius.all(Radius.circular(10))
//              ),
//              child: Wrap(
//                // mainAxisAlignment: MainAxisAlignment.start,
//              // crossAxisAlignment: CrossAxisAlignment.start,
//              // mainAxisSize: MainAxisSize.max,
//              children: [
//                Text("you need to set  the merchant accout to get paid ",softWrap: true),
//                SizedBox(height: 5,),
//                const Divider(height: 1,),
//                SizedBox(height: 5,),
//
//                Text("information required \n  .[placeholder]\n  .[placeholder]\n  .[placeholder]"),
//
//                SizedBox(height: 8,),
//                Container(
//                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 3),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(8),
//                    border: Border.all(color: Colors.grey)
//                  ),
//                  child: const Row(
//                    children: [
//                      Icon(Icons.timer),
//                      Text("Time Commitment:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                      SizedBox(width: 6,),
//                      Text(" 6 mint",style: TextStyle(color: Colors.grey),),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 8,),
//
//                Row(
//                children: [
//                  Spacer(),
//                  MaterialButton(
//                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                    color: Colors.green,
//                    onPressed: (){
//                    },
//
//                    child: Text("Start",style:TextStyle(color: Colors.white)),)
//                ],
//                )
//              ],
//              ),
//            ),
//          ),
//        )
//      ],
//
//     ),
//   );
// }
//
// Widget AccountFeatureItem(BuildContext context){
//   return Container(
//     height: 150,
//     width:MediaQuery.of(context).size.width*0.75,
//       decoration:  BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         color: Colors.grey.shade200
//
//       ),
//     padding: EdgeInsets.all(8),
//     margin: EdgeInsets.all(8),
//     child: Row(
//
//       children: [
//         Icon(Icons.car_rental,color: Colors.grey,size: 50,),
//         Card(
//           child: Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//               boxShadow:[
//                 BoxShadow(
//                   color: Colors.grey
//                 ),
//                 BoxShadow(
//                   color: Colors.white,spreadRadius: -1,
//                   blurRadius: 15
//                 )
//               ]
//             ),
//             padding: const EdgeInsets.all(8),
//             child: Column(
//               // direction: Axis.horizontal,
//               crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//                 Text("Job Alert ",style: TextStyle(fontSize:18,color: Colors.grey.shade700,fontWeight: FontWeight.bold),),
//             Text("set up push notification \n setting to get live active job \n alert",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal
//             )),
//
//                     ],
//                     ),
//           )
//         ),],
//     ),
//   );
// }
// Widget get roundedRectBorderWidget {
//   return DottedBorder(
//     borderType: BorderType.RRect,
//     radius: Radius.circular(12),
//     padding: EdgeInsets.all(6),
//     color: SColors.textcolorsky,
//
//     child: const Expanded(
//       child: ClipRRect(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//         child: Padding(
//           padding: EdgeInsets.all(10),
//           child: Row(
//
//             children: [
//               Icon(Icons.error,color: SColors.textcolorsky,),
//              SizedBox(width: 10,),
//               Expanded(
//                 child: Text("Your account is ready to made purchases , before your stuff can utilize your account you need to complete your to do list bellow",softWrap: true,overflow:TextOverflow.visible,style: TextStyle(
//                   color: SColors.textcolorsky
//                 ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
//
// Widget HeadTitle(String h1,String h2){
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 12),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(h1,style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           color: Colors.black
//         ),),
//         Text(h2,
//             style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: SColors.brown_border
//             )),
//       ],
//     ),
//   );
// }
//
// class BusinessModel {
//   String title;
//   String data;
//
//   BusinessModel({required this.title, required this.data});
//
//
//
// }

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

// You might need to import other necessary packages and classes

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  final list = [
    BusinessModel(title: '', data: "demo1"),
    BusinessModel(title: 'MyJobs', data: "demo2"),
    BusinessModel(title: 'Estimates', data: "demo_sadak")
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    final List<Widget> _widgetOptions = <Widget>[
      home(widget.list),
      Center(
        child: Text(
          'Calendar Page',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          'Help Page',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          'Business Page',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          'Jobs Page',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    ];

    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
        child: BottomNavigationBar(

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                height: 24,
                width: 24,
              ),
              label: "Home",
              backgroundColor: Colors.grey.shade100,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/calender.svg',
                height: 24,
                width: 24,
              ),
              label: "Calendar",
              backgroundColor: Colors.grey.shade100,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/image_help.png',
                height: 70,
                width: 70,
              ),
              label: "Help",
              backgroundColor: Colors.grey.shade100,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/business.svg',
                height: 24,
                width: 24,
              ),
              label: "Business",
              backgroundColor: Colors.grey.shade100,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/jobs.svg',
                height: 24,
                width: 24,
              ),
              label: "Jobs",
              backgroundColor: Colors.grey.shade100,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          // elevation: 5,


        ),
      ),
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            NeumorphicButton(
              onPressed: () {
                print("onClick");
              },
              // style: NeumorphicStyle(
              //   shape: NeumorphicShape.flat,
              //   // boxShape: NeumorphicBoxShape.circle(),
              // ),
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.favorite_border,
                // color: _iconsColor(context),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.black, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(2),
                ),
              ),
              child: Icon(Icons.person, color: Colors.white),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text("[Business Name]")
          ],
        ),
        actions: [
          const Icon(Icons.people),
          const SizedBox(width: 6),
          const Icon(Icons.mail),
          const SizedBox(width: 6),
          Stack(
            children: <Widget>[
              const Icon(
                Icons.notifications,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      '13',
                      style: TextStyle(color: Colors.white, fontSize: 6),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body:_widgetOptions.elementAt(_selectedIndex) ,
    );
  }
  Widget home(List<BusinessModel> list){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            roundedRectBorderWidget,
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Item11(list[index]);
                },
              ),
            ),
            HeadTitle("Getting Started", "Todo List"),
            SizedBox(
              height: 264,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return todoItem();
                },
              ),
            ),
            HeadTitle("Customized", "Account Features"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return AccountFeatureItem(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Item11(BusinessModel item) {
  return Card(
    child: Container(
      padding: const EdgeInsets.all(12.0),
      height: 50,
      width: 105,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            item.title,
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),
          SizedBox(height: 10),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(12),
            padding: EdgeInsets.all(6),
            color: Colors.grey,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    item.data,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SvgPicture.asset(
            'assets/icons/next.svg',
          ),
        ],
      ),
    ),
  );
}

Widget todoItem() {
  return Card(
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.horizontal,
      children: [
        const SizedBox(width: 12),
        const Icon(Icons.car_rental, size: 50, color: Colors.grey),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Card(
            child: Container(
              width: 250,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey),
                  BoxShadow(color: Colors.white, spreadRadius: -1, blurRadius: 4),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Wrap(
                children: [
                  Text("you need to set the merchant account to get paid", softWrap: true),
                  SizedBox(height: 5),
                  const Divider(height: 1),
                  SizedBox(height: 5),
                  Text(
                    "information required \n  .[placeholder]\n  .[placeholder]\n  .[placeholder]",
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.timer),
                        Text(
                          "Time Commitment:",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 6),
                        Text(
                          " 6 mint",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Spacer(),
                      MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        color: Colors.green,
                        onPressed: () {},
                        child: Text("Start", style: TextStyle(color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget AccountFeatureItem(BuildContext context) {
  return Container(
    height: 150,
    width: MediaQuery.of(context).size.width * 0.75,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.grey.shade200,
    ),
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(8),
    child: Row(
      children: [
        Icon(Icons.car_rental, color: Colors.grey, size: 50),
        Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(color: Colors.grey),
                BoxShadow(color: Colors.white, spreadRadius: -1, blurRadius: 15),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Job Alert ",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                ),
                Text(
                  "set up push notification \n setting to get live active job \n alert",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget get roundedRectBorderWidget {
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: Radius.circular(12),
    padding: EdgeInsets.all(6),
    color: Colors.blue, // Changed the color for better visibility
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(Icons.error, color: Colors.blue), // Changed the color for better visibility
            SizedBox(width: 10),
            Expanded(
              child: Text(
                "Your account is ready to make purchases, before your staff can utilize your account you need to complete your to-do list below",
                softWrap: true,
                overflow: TextOverflow.visible,
                style: TextStyle(color: Colors.blue), // Changed the color for better visibility
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget HeadTitle(String h1, String h2) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          h1,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          h2,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue), // Changed the color for better visibility
        ),
      ],
    ),
  );
}

class BusinessModel {
  String title;
  String data;

  BusinessModel({required this.title, required this.data});
}