import 'package:flutter/material.dart';
import 'package:providertask4/providerclass.dart';
import 'package:provider/provider.dart';
class Cartpage extends StatelessWidget {
  Cartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object =Provider.of<Fruitsprovider>(context);
    List store =object.favouritecart;
    List mstore = object.favimages;
    return  Scaffold(
      backgroundColor: Colors.grey,
        appBar: AppBar(title: Text('Your cart',style:
        TextStyle(fontSize: 24,color: Colors.white),
        ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: ListView.builder(itemCount:mstore.length,
            itemBuilder:  (BuildContext context,  index){
          return Card(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(mstore[index]),
                ),
                title: Text(store[index],style:
                TextStyle(fontSize: 20,color: Colors.yellow),
                ),
                trailing:  IconButton(onPressed: (){
                  object.favourites(store[index],mstore[index]);
                }, icon: object.icn_chge(store[index])
                    ?Icon(
                  Icons.favorite,
                  color: Colors.red,)
                    :Icon(
                  Icons.favorite_border,
                  color: Colors.red
                  ,),
                  ),

              ),
            ),
          );
        },
        ),

    );
  }
}
