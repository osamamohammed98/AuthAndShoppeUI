import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_ui_app/ui/widget/custom_btn.dart';
import 'package:shopping_ui_app/ui/widget/grid_list_item.dart';
import 'package:shopping_ui_app/ui/widget/profile_data.dart';



class Profile extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 6,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            "Stylish".toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/pexels-martin-péchy-1866149.png"),
                                fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ProfileData(
                                value: "1,252",
                                title: "posts",
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              ProfileData(
                                value: "4m",
                                title: "followers",
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              ProfileData(
                                value: "256",
                                title: "following",
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CustomBotton(
                            text: "Edit Profile",
                            width: 200,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Home Furniture",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Home accessories, some information about us",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF999999),
                      fontWeight: FontWeight.normal,),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "+925 987 952 2365",
                  style:TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Chennai, India",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF999999),
                    fontWeight: FontWeight.normal,),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBotton(
                      text: "Add Product",
                      width: 110,
                    ),
                    CustomBotton(
                      text: "Share",
                      width: 110,
                    ),
                    CustomBotton(
                      text: "Contact Us",
                      width: 110,
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Expanded(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return GridListItem(
                        imageSrc: images[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: Container(
          height: 80,
          margin: EdgeInsets.only(bottom: 30),
          child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              //todo setState in real work
            },
            selectedIconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: index == 0 ? Colors.black : Color(0xFF999999),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Color(0xFF999999),
                  ),
                  label: "search"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: Color(0xFF999999),
                ),
                label: "favorite",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xFF999999),
                  ),
                  label: "person"),
            ],
          ),
        ),
      ),
    );
  }
  List<String> images = [
    "assets/images/pexels-atbo-245208.png",
    "assets/images/pexels-donald-tong-133919.png",
    "assets/images/pexels-eric-montanah-1350789.png",
    "assets/images/pexels-martin-péchy-1866149.png",
    "assets/images/pexels-pixabay-220749.png",
    "assets/images/pexels-pixabay-276528.png",
    "assets/images/pexels-pixabay-279618 (1).png",
    "assets/images/pexels-skitterphoto-584399.png",
    "assets/images/pexels-vecislavas-popa-817783.png",
    "assets/images/pexels-atbo-245208.png",
    "assets/images/pexels-martin-péchy-1866149.png",
    "assets/images/pexels-pixabay-279618 (1).png",
  ];
}
