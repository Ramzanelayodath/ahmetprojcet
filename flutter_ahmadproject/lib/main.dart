

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with TickerProviderStateMixin {

  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 135),
        child:Container(
          width: double.infinity,
          height: 134,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child:Padding(
                      padding: EdgeInsets.only(left: 8,top: 25),
                      child: Row(
                        children: [
                          Image.asset('assets/images/icon_user.png',width: 35,height: 35,),
                          Padding(padding: EdgeInsets.only(left: 2),
                            child: Text('Username',style: TextStyle(color: Colors.black,fontSize: 10),),)
                        ],
                      ),
                    ),flex: 1, ),
                  Expanded(
                    child:Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        width: double.infinity,
                        height: 35,
                        child: TextField(
                          decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(20),
                                ),
                              ),
                              filled: true,
                              suffixIcon: Icon(Icons.search,color: Colors.grey,),
                              contentPadding: EdgeInsets.all(8),
                              hintStyle: new TextStyle(color: Colors.white),
                              hintText: "Search..",
                              fillColor:Colors.white),
                        ),
                      ),
                    ),flex: 2, ),
                  Expanded(child:  Padding(
                    padding: EdgeInsets.only(right:8,top: 15),
                    child: Column(
                      children: [
                        Image.asset('assets/images/icon_app.png',width: 75,height: 45,),
                        Image.asset('assets/images/icon_cannon.png',width: 35,height: 25,)
                      ],
                    ),
                  ),flex: 1,)
                ],
              ),
              DefaultTabController(length: 3,
                  child: TabBar(
                    controller: _controller,
                    tabs: [
                      Tab(
                        child: Image.asset('assets/images/icon_category.png',width: 30,height: 30,),),
                      Tab(
                        child: Image.asset('assets/images/icon_feedback.png',width: 30,height: 30,),),
                      Tab(
                        child: Image.asset('assets/images/icon_cart.png',width: 30,height: 30,),),
                    ],
                  ))
            ],
          ) ,
        ),
      ),
      body:TabBarView(
        controller: _controller,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xFFDEDCDC),
                          width: 1
                      ),
                    ),
                    child:  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, position) {
                        return  Padding(padding: EdgeInsets.all(10),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black38,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(child:  Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Reebok_2019_logo.svg/1200px-Reebok_2019_logo.svg.png',
                                        width: 35,height: 35,),
                                    ),flex: 2,),
                                    Expanded(child: Padding(
                                        padding: EdgeInsets.only(right: 8),
                                        child: Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black38,
                                                  width: 1),
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Text('24',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 10),),
                                          ),)),flex: 1,)
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 8),
                                  child: Image.network('https://cdn.shopify.com/s/files/1/0266/6276/4597/products/100001_300815841021_1.jpg?v=1606475859',fit: BoxFit.contain,height: 117,width: 150,),)

                              ],
                            ),
                          ),) ;
                      },
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, position) {
                      return  Padding(padding: EdgeInsets.all(10),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black38,
                                width: 2
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Reebok_2019_logo.svg/1200px-Reebok_2019_logo.svg.png',
                                      width: 55,height: 35,),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 0 ,left: 5),
                                    child: Container(
                                      width: 65,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xFF55C6FA),
                                            width: 1
                                        ),
                                      ),
                                      child: Center(
                                        child:  Text('FOLLOW',style: TextStyle(color: Color(0xFF55C6FA),fontSize: 9),),
                                      ),
                                    ),)

                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 8),
                                child: Row(
                                  children: [
                                    Image.network('https://cdn.shopify.com/s/files/1/0266/6276/4597/products/100001_300815841021_1.jpg?v=1606475859',fit: BoxFit.fill,height: 180,width: 175,),
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(padding: EdgeInsets.only(left: 3),
                                                child:  Image.network('https://cdn.shopify.com/s/files/1/0266/6276/4597/products/100001_300815841021_1.jpg?v=1606475859',fit: BoxFit.fill,height: 75,width: 75,),),
                                              Padding(padding: EdgeInsets.only(left: 3),
                                                child:  Image.network('https://cdn.shopify.com/s/files/1/0266/6276/4597/products/100001_300815841021_1.jpg?v=1606475859',fit: BoxFit.fill,height: 75,width: 75,),),
                                              Padding(padding: EdgeInsets.only(left: 3),
                                                child:  Image.network('https://cdn.shopify.com/s/files/1/0266/6276/4597/products/100001_300815841021_1.jpg?v=1606475859',fit: BoxFit.fill,height: 75,width: 53,),)
                                            ],
                                          ),
                                          Padding(padding: EdgeInsets.only(top: 25,right: 20),
                                            child:Row(
                                              children: [
                                                Text('\$',style: TextStyle(fontSize: 28,color: Color(0xFFF69554),fontWeight: FontWeight.bold),),
                                                Padding(padding: EdgeInsets.only(left: 8),
                                                  child: Text('24',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),)
                                              ],
                                            ),),
                                        ],
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                      ),
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('Mens Lyca Slim Fit Shirts',style: TextStyle(color: Colors.black,fontSize: 18),),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Container(
                                    width: 150,
                                    height: 45,
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.only(top: 5),
                                          child:  Row(
                                            children: [
                                              Expanded(
                                                child:Image.asset('assets/images/icon_like.png',width: 15,height: 15,),flex: 1, ),
                                              Expanded(
                                                child:Image.asset('assets/images/icon_comment.png',width: 15,height: 15,),flex: 1, ),
                                              Expanded(
                                                child:Image.asset('assets/images/icon_cart.png',width: 15,height: 15,),flex: 1, ),
                                              Expanded(
                                                child:Image.asset('assets/images/icon_bookmark.png',width: 15,height: 15,),flex: 1, ),

                                            ],
                                          ),),
                                        Padding(padding: EdgeInsets.only(top: 5),
                                          child:  Row(
                                            children: [
                                              Expanded(child: Center(child:  Text('15',style: TextStyle(color: Colors.black,fontSize: 10),),),flex: 1,),
                                              Expanded(child: Center(child:  Text('15',style: TextStyle(color: Colors.black,fontSize: 10),),),flex: 1,),
                                              Expanded(child: Center(child:  Text('15',style: TextStyle(color: Colors.black,fontSize: 10),),),flex: 1,),
                                              Expanded(child: Center(child:  Text('15',style: TextStyle(color: Colors.black,fontSize: 10),),),flex: 1,),

                                            ],
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 3),
                                child: Container(
                                  width: double.infinity,
                                  height: 35,
                                  decoration:  BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black38,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image.asset('assets/images/icon_like.png',height: 25,width: 35,),
                                        ),flex: 1,),
                                      Expanded(
                                        child:Padding(
                                          padding: EdgeInsets.only(top: 5,bottom: 5),
                                          child:  VerticalDivider(color: Colors.black38,thickness: 1,),
                                        ),flex: 1,),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image.asset('assets/images/icon_comment.png',height: 25,width: 35,),
                                        ),flex: 1,),
                                      Expanded(
                                        child:Padding(
                                          padding: EdgeInsets.only(top: 5,bottom: 5),
                                          child:  VerticalDivider(color: Colors.black38,thickness: 1,),
                                        ),flex: 1,),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image.asset('assets/images/icon_cart.png',height: 25,width: 35,),
                                        ),flex: 1,),
                                      Expanded(
                                        child:Padding(
                                          padding: EdgeInsets.only(top: 5,bottom: 5),
                                          child:  VerticalDivider(color: Colors.black38,thickness: 1,),
                                        ),flex: 1,),
                                      Expanded(
                                        child:Padding(
                                          padding: EdgeInsets.all(5),
                                          child:  Image.asset('assets/images/icon_bookmark.png',height: 25,width: 35,),
                                        ),flex: 1,),

                                    ],
                                  ),
                                ),)
                            ],
                          ),
                        ),) ;
                    },
                  )

                ],
              ),
            ),

          ),
          Container(),
          Container()
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
