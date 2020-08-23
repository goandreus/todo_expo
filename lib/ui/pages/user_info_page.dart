import 'dart:convert';

import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colors.blue,
              image: DecorationImage(image: NetworkImage('https://static1.abc.es/media/play/2018/06/27/hayden-christensen-kzW--620x349@abc.jpg'),
              fit: BoxFit.cover)
            ),
          ),
          FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
            builder: (context, result){

              if(result.hasData){
                final data = jsonDecode(result.data);

              return Text(data['nombre'], style: Theme.of(context).textTheme.headline6,);
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}