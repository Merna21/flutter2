import 'package:flutter/material.dart';

class Shopscreen extends StatefulWidget {
  @override
  _ShopscreenState createState() => _ShopscreenState();
}

class _ShopscreenState extends State<Shopscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: null),
       elevation: 0.0,
       centerTitle: true,
       title: Text('Order',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.normal),),
     ),
     body: Container(
       color: Colors.white,
       child: Column(
         children: [
           Container(
             height: 300,
             width: MediaQuery.of(context).size.width,
             child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 30,itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Container(
                    height: 200,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange[300],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 250,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.orange[300],
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c168.png'),
                                          fit: BoxFit.cover)),
                                ),],
                            ),      
                 ),
               );
             }),
           ),
           SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [Column(children:[ Text('Orange & Strawberyy ',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
             Text('Smoothie',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
             Text('hkjahk kakfkv jiksk ckcuij lakifihah jidjo nckjsi nhsoonf nkk \n cnksjfk kjhck nlosxjsoj mkdjaoj aodhkam kcjkjd nckshfhi ',style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.normal),),
             Text('nknlkl.',style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.normal),),
                SizedBox(height: 25,),
                 Text('\$ 9.90',style: TextStyle(fontSize: 40,color: Colors.orange[500],fontWeight: FontWeight.bold),),

             ],),],),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                 children: [
                   Container(
                     padding: EdgeInsets.all(10),
                     height: 50,width: 300,
                   decoration: BoxDecoration(
                     color: Colors.grey[100],
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Row(children: [
                     Icon(Icons.remove_circle_outline,color: Colors.orange[300],),
                     SizedBox(width: 10,),
                      
                      Text('4',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                       SizedBox(width: 10,),
                       Icon(Icons.add_circle_outline,color: Colors.orange[300],),
                       Expanded(child: SizedBox()),
                     Text('\$ 39.60',style: TextStyle(fontSize: 25,color: Colors.orange[300],fontWeight: FontWeight.bold),),


                   ],),
                   ),SizedBox(width: 20,),
                   Container(
                     height: 50,
                     width: 60,
                     decoration: BoxDecoration(
                       color: Colors.orange[300],
                       borderRadius: BorderRadius.circular(20)
                     ),
                     child: Center(child: Icon(Icons.shopping_cart,color: Colors.white,size: 30,),),
                   ),
                 ],
               ),
             )
         ],
       ),
     ),
    );
  }
}