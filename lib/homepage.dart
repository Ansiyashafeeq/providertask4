import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask4/cartpage.dart';
import 'package:providertask4/providerclass.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List flist=[  'Apple',
    'Banana',
    'Grape',
    'Kiwi',
    'Mango',
    'Orange',
    'Papaya',
    'Pineapple',
    'Strawberry',
    'Dragon Fruit',
    'Chikoo'];
    List Imgf =['assets/apple-fruit.jpg',
      'assets/banana.jpg',
      'assets/grape.jpg',
      'assets/kiwi.jpg',
      'assets/mango.jpg',
      'assets/orange.jpg',
      'assets/papaya.jpg',
      'assets/pineapple.jpg',
      'assets/strawberry.jpg',
      'assets/DragonFruit.jpg',
      'assets/chiku.jpg'

    ];
    final object=Provider.of<Fruitsprovider>(context);
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.grey,title: Text('FRUITS',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
      ),),
      backgroundColor: Colors.grey,
      body: ListView.builder(itemCount:flist.length,
          itemBuilder: (BuildContext context,index){
        return Card(
          color: Colors.black,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(Imgf[index]),
            ),
            title: Text(flist[index],style: TextStyle(fontSize: 20,color: Colors.yellow),),
            trailing: IconButton(onPressed: (){
              object.favourites(flist[index],Imgf[index]);
            }, icon: object.icn_chge(flist[index])
            ?Icon(Icons.favorite,color: Colors.red,)
            :Icon(Icons.favorite_border,color: Colors.red,)
            ,)
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.green,
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()),);

      },child: Icon(Icons.add_shopping_cart_rounded,color: Colors.white,),),
    );
  }
}
