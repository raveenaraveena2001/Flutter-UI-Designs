import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qwerty/navipage2.2.dart';
import 'amazo.dart';

class myntra extends StatefulWidget {
  const myntra({super.key});

  @override
  State<myntra> createState() => _myntraState();
}

class _myntraState extends State<myntra> {

  int _num=0;//by default we have to give

  final page=[ //index for navigating from page to page
    navipage3()

  ];

  void press(value)
  {
    setState(() {
      _num = value;
    });
  }



  List image=[
    "assets/shirt.jpg",
        "assets/casualshoe.jpg",
        "assets/jean.jpg",
        "assets/tshirt.jpg",
        "assets/hoodies.jpg",
        "assets/casualshoe.jpg"

  ];

  List images=[
    "assets/hoodies.jpg",
    "assets/jean.jpg",
    "assets/casualshoe.jpg",
        "assets/shirt.jpg",
    "assets/tshirt.jpg",
    "assets/casualshoe.jpg",

  ];

  List image2=[
    "assets/shirt.jpg",
    "assets/casualshoe.jpg",
    "assets/jean.jpg",
    "assets/tshirt.jpg",
    "assets/hoodies.jpg",
    "assets/casualshoe.jpg"
  ];

  List image3=[
    "assets/shirt.jpg",
    "assets/casualshoe.jpg",
    "assets/jean.jpg",
    "assets/tshirt.jpg",
    "assets/hoodies.jpg",
    "assets/casualshoe.jpg",
    "assets/shirt.jpg",
    "assets/casualshoe.jpg",
    "assets/jean.jpg",
    "assets/tshirt.jpg",
  ];

  List image4=[
    "assets/hoodies.jpg",
    "assets/casualshoe.jpg",
    "assets/shirt.jpg",
    "assets/casualshoe.jpg",
    "assets/jean.jpg",
    "assets/tshirt.jpg",
  ];


  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              Text("Myntra",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              Icon(Icons.keyboard_arrow_down_rounded),
              Image.asset("assets/crown.jpg",height: 50,width: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("BECOME",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                  Row(
                    children: [
                      Text("INSIDE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      Icon(Icons.arrow_forward_ios_outlined,size: 13,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_outlined),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_outline),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
        ),
        body:
        SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search for brands and products",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      //width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/fashion.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Fashion",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        //width: 110,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/beauty.jpg"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Beauty",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                ),
                              ],
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:40,
                        //width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/home.jpg"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.grid_view_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) => const amazo()),);
                  },
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: image.length,
                      itemBuilder: (BuildContext con,index)
                      {
                        return Column(
                          children: [
                            Container(
                              height: 100,
                              width:100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[index])
                                )
                              ),
                            ),
                            Text("Shirts"),
                          ],
                        );
                      }
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const amazo()),);
                  },
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: image.length,
                      itemBuilder: (BuildContext con,index)
                      {
                        return Column(
                          children: [
                            Container(
                              height: 100,
                              width:100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(images[index])
                                  )
                              ),
                            ),
                            Text("Shirts"),
                          ],
                        );
                      }
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign Up For Exciting Deals!",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                   // pageViewKey: ,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                    return Column(
                      children: [
                        Container(
                          height: 300,
                          width: 600,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image2[itemIndex]),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                        Text("Shirts")
                      ],
                    );
                  }
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // number of items in each row
                      mainAxisSpacing: 20, // spacing between rows
                      crossAxisSpacing: 8.0, // spacing between columns
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext con,index)
                    {
                      return Column(
                        children: [
                          Container(
                            height: 170,
                            width:200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(image3[index])
                              ),
                            ),
                          ),
                          Text("Shirts"),
                        ],
                      );
                      },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                  {
                    return Column(
                      children: [
                        Container(
                          height: 300,
                          width:600,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image4[itemIndex]),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                        Text("Shirts"),
                      ],
                    );
                  }
              ),
            ),
          ],
          ),
        ),
      //bottomNavigationBar: BottomNavigationBar(
        //items: [
          //BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: " "),
          //BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,size: 30,),label: " "),
          //BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,size: 30,),label: " "),
          //BottomNavigationBarItem(icon: Icon(Icons.menu,size: 30,),label: " ")

        //],
        //type: BottomNavigationBarType.fixed,

        //currentIndex: _num,
        //onTap: press,
    );
  }
}
