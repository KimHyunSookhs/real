import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mojadel2/colors/colors.dart';
import 'package:mojadel2/mypage/signup/signup.dart';

class mypagesite extends StatefulWidget {
  const mypagesite({super.key});

  @override
  State<mypagesite> createState() => _mypagesiteState();
}

class _mypagesiteState extends State<mypagesite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이페이지'),
        backgroundColor: AppColors.mintgreen,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/panda.jpg'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('김현수',style: TextStyle(fontSize: 23),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 30,),
                        Text('요모조모 0개'),
                        SizedBox(width: 10,),
                        Text('팔로잉 0명'),
                        SizedBox(width: 10,),
                        Text('팔로워 0명'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text('회원가입'),
          ),
          TextButton(
              onPressed: (){},
              child: Text('로그인')),
          TextButton(
              onPressed: (){},
              child: Text('로그아웃')),
          
        ],
      )
    );
  }
}
