

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask4/homepage.dart';
import 'package:providertask4/providerclass.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>Fruitsprovider(),
  child: MaterialApp(home: Home(),),
  ) );
}

