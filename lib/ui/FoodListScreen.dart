import 'package:flutter/material.dart';
import 'package:food_blog_project/utils/text_styles.dart';

class FoodListScreen extends StatefulWidget {
  @override
  _FoodListScreenState createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: <Widget>[

          Expanded(
            flex: 2,
            child: Container(
              height: 120,
              decoration: new BoxDecoration(
                color: const Color(0xff7c94b6),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                  image: AssetImage('assets/images/background.jpg',),
                ),
              ),
              child: Stack(
                children: <Widget>[


                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[

                          Text('Food',style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Muli'),),
                          Text("6 Items",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,fontFamily: 'Muli'),),

                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context,int index){
                  return _buildFoodListItem(index);
                }),
          ),



        ],
      ),
    );
  }


  Widget _buildFoodListItem(int index){
    return Padding(
      padding: const EdgeInsets.only(left:10,right:10,top:5.0),
      child: GestureDetector(
        onTap: (){
       //   Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscriptionScreen()));
        },
        child: Card(
          elevation: 2,
          child: ClipPath(
            child: Container(
              height: 130,
              child: Row(
                children: <Widget>[

                  Expanded(
                      flex: 3,
                      child:Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 3,
                          child: ClipPath(
                            child: Container(
                              child: Image.asset('assets/images/background.jpg',fit: BoxFit.cover,),
                            ),
                            clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      )
                  ),

                  Expanded(
                      flex: 5,
                      child:Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("Food name",style: TextStyles.largeBoldTextLabel,),
                            ),

                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,color: Colors.amber,
                                      size: 16,
                                    ),
                                    Text(" "+"4.3",style: TextStyles.greyMediumTextLabel,)
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,color: Colors.grey,
                                      size: 16,
                                    ),
                                    Text(" "+"10:00 am",style: TextStyles.greyMediumTextLabel,)
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(
                                      Icons.av_timer,color: Colors.grey,
                                      size: 16,
                                    ),
                                    Text(" "+"10:00 pm",style: TextStyles.greyMediumTextLabel,)
                                  ],
                                ),

                              ],
                            ),

                            SizedBox(height: 5,),

                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum",style: TextStyles.greyMediumTextLabel, overflow: TextOverflow.ellipsis,maxLines: 2,),
                            ),

                            Stack(
                              alignment: Alignment.centerLeft,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Text('₹ '+"120",style: TextStyles.greyPriceTextLabel,)
                                    ],
                                  ),
                                ),

                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right:10.0),
                                    child: ButtonTheme(
                                      height: 30,
                                      child: RaisedButton(
                                        color: Colors.red,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(5.0),
                                            side: BorderSide(color: Colors.red)),
                                        onPressed: () {
                                          setState(() {
                                         //   Navigator.push(context, MaterialPageRoute(builder: (context)=>DiscriptionScreen()));
                                          });
                                        },
                                        child:  Text(
                                          'View',
                                          style: TextStyles.smallButtonTextLabel,
                                        ),
                                      ),
                                    ),
                                  ),
                                )



                              ],
                            )

                          ],
                        ),
                      )
                  )

                ],
              ),
            ),
            clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
          ),

        ),
      ),
    );
  }
}
