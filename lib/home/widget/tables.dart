import 'package:flutter/material.dart';


class Tables extends StatelessWidget {
  Widget _textformField(){
    return Padding(padding: EdgeInsets.only(right: 10),
    child: TextFormField(decoration: InputDecoration(fillColor: Color(0xff3a3a3a),
    filled: true,
    hintText: 'Search here',
    hintStyle: TextStyle(
      color: Colors.white,
      
    ),
    prefixIcon: Icon(Icons.search,color: Colors.white,),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none))),);
  }

  Widget _allCategories({required String image,required String title}){
    return Container(
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image)),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        Text(title,style: TextStyle(fontSize: 18,color: Colors.white),)
      ],),
    );
  }

  Widget _bottomCategories({required String image,required String title,required double price}){
    return Container(
      decoration: BoxDecoration(color: Color(0xff3c3f40),
      borderRadius: BorderRadius.circular(20)),
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Container(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text('\$ $price',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star,size: 14,color: Colors.white,),
                     Icon(Icons.star,size: 14,color: Colors.white,),
                      Icon(Icons.star,size: 14,color: Colors.white,),
                       Icon(Icons.star,size: 14,color: Colors.grey,)
                  ],
                )
              ],
            ),
          )
        ],
      ),),
    );
  }
  const Tables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b2b2b),
      appBar: AppBar(elevation: 0,
      backgroundColor: Color(0xff2b2b2b),
      leading: Icon(Icons.sort,size: 30,),actions: [
        Padding(padding: EdgeInsets.all(9),
        child: Center(child: Container(child: CircleAvatar(
          maxRadius: 20,
          backgroundImage: NetworkImage('https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png'),
        ),)),)
      ],),
      body: Container(margin: EdgeInsets.only(left: 14),
      child: ListView(
        children: [Container(
          height: 820,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enjoy Your food',style: TextStyle(fontSize: 18,color: Colors.white10),),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Your table',style: TextStyle(fontSize: 23,color: Colors.white10,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            _textformField(),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _allCategories(image: 'https://media.istockphoto.com/photos/fried-pork-and-vegetables-on-white-background-picture-id1190330112?k=20&m=1190330112&s=612x612&w=0&h=_TrmthJupdqYmMU-NC-es85TEvaBJsynDS383hqiAvM=', title: 'sdfg'),
                _allCategories(image: 'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80', title: 'sdfg'),
                _allCategories(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU', title: 'sdfg'),
                 _allCategories(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6NMRD1rufN1GQi_x_dZrB-h-8OcOldgnrbA&usqp=CAU', title: 'sdfg'),

              ],
            ),),
            Container(
              height: 490,
              child: GridView.count(crossAxisCount: 2,
              childAspectRatio: 1.4,
              mainAxisSpacing: 40,
              crossAxisSpacing: 30,
              scrollDirection: Axis.horizontal,
              children: [
                _bottomCategories(image: 'https://media.istockphoto.com/photos/empty-table-at-a-restaurant-picture-id1160805942?b=1&k=20&m=1160805942&s=170667a&w=0&h=KrgVDrZetThO_xOGvK9UDTxfMpB3jL4j0FGqKDiIRiA=',price: 25.3,title: 'fgh'),
                 _bottomCategories(image: 'https://tsanteleina.com/en/wp-content/uploads/sites/2/2014/11/XDA8901.jpg',price: 25.3,title: 'fgh'),
                  _bottomCategories(image: 'https://images.restaurantfurniture.net/dpr_1.0,f_auto,q_auto/h_600,w_600/rfnet/media/wysiwyg/guides/tmftl-12.jpg',price: 25.3,title: 'fgh'),
                   _bottomCategories(image: 'https://5.imimg.com/data5/IO/TE/MY-4133775/single-table-500x500.jpg',price: 25.3,title: 'fgh'),
              ],),
            )
          ],),
        )],

      ),),
    );
  }
}



// import 'package:flutter/cupertino.dart';

// class Table{
//   IconData? iconData;
//   String? title;
//   Color? bgColor;
//   Color? iconColor;
//   Color? btnColor;
//   num? left;
//   num?done;
//   bool isLast;
//   Table({this.iconData,this.title,this.bgColor,this.iconColor,this.btnColor,this.left,this.done,this.isLast=false});
//   static List<Table>
// }

// import 'package:flutter/cupertino.dart';


// class Tables extends StatelessWidget {
//   const Tables({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       primary: false,
//       padding: const EdgeInsets.all(20),
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//       children: [
//         Container(child: Text('Family'),),
//         Container(child: Text('Family'),)
//       ],

//       crossAxisCount: 2);
//   }
// }