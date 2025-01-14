import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:quick_logi/utilities/components.dart';
import 'package:quick_logi/utilities/constants.dart';

class PlaceSelectScreen extends StatefulWidget {
  const PlaceSelectScreen({super.key});

  @override
  State<PlaceSelectScreen> createState() => _PlaceSelectScreenState();
}

class _PlaceSelectScreenState extends State<PlaceSelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackTopBar(),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '출·도착지',
                        style: TextStyle(
                            fontFamily: 'PretendardBold',
                            color: Colors.black,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '어디로 보낼까요?',
                        style: TextStyle(
                            fontFamily: 'Pretendard',
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    decoration:
                        BoxDecoration(color: GREY2, shape: BoxShape.circle),
                    child: Icon(
                      Icons.place_rounded,
                      size: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(13.0),
                  decoration: BoxDecoration(
                    color: GREY2,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.home_outlined,
                      color: GREY1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '출발지 주소 입력하기',
                      style: TextStyle(
                          fontFamily: 'Pretendard', color: GREY1, fontSize: 22),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(13.0),
                  decoration: BoxDecoration(
                    color: GREY2,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.signpost_outlined,
                      color: GREY1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '도착지 주소 입력하기',
                      style: TextStyle(
                          fontFamily: 'Pretendard', color: GREY1, fontSize: 22),
                    )
                  ]),
                ),
              )
            ],
          )),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: () {
            // 입력받은 정보 이전 페이지로 전달
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            primary: MAINCOLOR,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(
            '입력완료',
            style: TextStyle(
                fontFamily: 'Pretendard', color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
