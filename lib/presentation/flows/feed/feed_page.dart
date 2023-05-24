import 'package:feed/utils/constants/colors.dart';
import 'package:feed/utils/screenutils/size_extension.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 8.0.wp),
          child: Icon(
            Icons.arrow_back_ios,
            color: Constant.blackLight,
            size: 20.0.wp,
          ),
        ),
        centerTitle: true,
        title: Text(
          '자유톡',
          style: TextStyle(
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w700,
            color: Constant.blackDark,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/icons/notification_icon.png',
              color: Constant.iconColor,
              height: 0.0.wp,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(width: 8.0.wp),
        ],
      ),
      bottomNavigationBar: Container(
        height: 42.0.wp,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.symmetric(
          horizontal: BorderSide(
            color: Constant.dividerColor,
          ),
        )),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.wp),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/image_icon.png',
                      color: Constant.iconColor,
                      width: 20.0.wp,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 18.0.wp),
                    Text(
                      '댓글을 남겨주세요.',
                      style: TextStyle(
                        fontSize: 12.0.sp,
                        fontWeight: FontWeight.w400,
                        color: Constant.iconColor,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '등록',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w500,
                  color: Constant.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0.wp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/profile/profile_1.png'),
                        radius: 19.0.wp,
                      ),
                      SizedBox(width: 6.0.wp),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '안녕 나 응애',
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Constant.blackDark,
                                  ),
                                ),
                                SizedBox(width: 4.0.wp),
                                Image.asset(
                                  'assets/icons/verified_icon.png',
                                  height: 13.0.wp,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 4.0.wp),
                                Text(
                                  '1일전',
                                  style: TextStyle(
                                    fontSize: 10.0.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Constant.textColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.0.wp),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '165cm ∙ ',
                                  style: TextStyle(
                                    fontSize: 12.0.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Constant.textColor,
                                  ),
                                ),
                                Text(
                                  '53kg',
                                  style: TextStyle(
                                    fontSize: 12.0.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Constant.textColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 58.0.wp,
                        height: 24.0.wp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0.wp),
                          color: Constant.greenColor,
                        ),
                        child: Center(
                          child: Text(
                            '팔로우',
                            style: TextStyle(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14.0.wp),
                  Text(
                    '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w700,
                      color: Constant.blackDark,
                    ),
                  ),
                  SizedBox(height: 14.0.wp),
                  Text(
                    '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~
혹시 어떤 상품이 제일 괜찮았어? 
      
후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 
제일 재밌었다던데 맞아???
      
올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가
아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에
있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!''',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Constant.blackLight,
                      fontSize: 11.9.wp,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 14.0.wp),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 59.0.wp,
                            height: 22.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.wp),
                              color: Constant.dividerColor,
                              border: Border.all(
                                color: const Color.fromRGBO(206, 211, 222, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '#2023',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Constant.textDark,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 130.0.wp,
                            height: 22.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.wp),
                              color: Constant.dividerColor,
                              border: Border.all(
                                color: const Color.fromRGBO(206, 211, 222, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '#TODAYISMONDAY',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Constant.textDark,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 55.0.wp,
                            height: 22.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.wp),
                              color: Constant.dividerColor,
                              border: Border.all(
                                color: const Color.fromRGBO(206, 211, 222, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '#TOP',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Constant.textDark,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 66.0.wp,
                            height: 22.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.wp),
                              color: Constant.dividerColor,
                              border: Border.all(
                                color: const Color.fromRGBO(206, 211, 222, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '#POPS!',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Constant.textDark,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0.wp),
                      Row(
                        children: [
                          Container(
                            width: 61.0.wp,
                            height: 22.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.wp),
                              color: Constant.dividerColor,
                              border: Border.all(
                                color: const Color.fromRGBO(206, 211, 222, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '#WOW',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Constant.textDark,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.0.wp),
                          Container(
                            width: 61.0.wp,
                            height: 22.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.wp),
                              color: Constant.dividerColor,
                              border: Border.all(
                                color: const Color.fromRGBO(206, 211, 222, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '#ROW',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Constant.textDark,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 420.0.wp,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16.0.wp,
                      left: 165.0.wp,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 6.0.wp,
                            height: 6.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5.0.wp),
                          Container(
                            width: 6.0.wp,
                            height: 6.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5.0.wp),
                          Container(
                            width: 6.0.wp,
                            height: 6.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5.0.wp),
                          Container(
                            width: 6.0.wp,
                            height: 6.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5.0.wp),
                          Container(
                            width: 6.0.wp,
                            height: 6.0.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 56.0.wp,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 22.0.wp),
                      Image.asset(
                        'assets/icons/heart_icon.png',
                        color: Constant.iconColor,
                        width: 20.0.wp,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 6.0.wp),
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                          color: Constant.textColor,
                        ),
                      ),
                      SizedBox(width: 14.0.wp),
                      Image.asset(
                        'assets/icons/comment_icon.png',
                        color: Constant.iconColor,
                        width: 20.0.wp,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 6.0.wp),
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                          color: Constant.textColor,
                        ),
                      ),
                      SizedBox(width: 14.0.wp),
                      Image.asset(
                        'assets/icons/save_icon.png',
                        color: Constant.iconColor,
                        width: 16.0.wp,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 14.0.wp),
                      Icon(
                        Icons.more_horiz,
                        color: Constant.iconColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2.0.wp,
              thickness: 2.0.wp,
              color: Constant.dividerColor,
            ),
            Padding(
              padding: EdgeInsets.all(16.0.wp),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/profile/profile_1.png'),
                        radius: 19.0.wp,
                      ),
                      SizedBox(width: 6.0.wp),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '안녕 나 응애',
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w700,
                                color: Constant.blackDark,
                              ),
                            ),
                            SizedBox(width: 4.0.wp),
                            Image.asset(
                              'assets/icons/verified_icon.png',
                              height: 13.0.wp,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 4.0.wp),
                            Text(
                              '1일전',
                              style: TextStyle(
                                fontSize: 10.0.sp,
                                fontWeight: FontWeight.w500,
                                color: Constant.textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Constant.iconColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 6.0.wp),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0.wp),
                    child: Column(
                      children: [
                        Text(
                          '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭\n우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도\n아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다\n괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니\n꼭 봐주세용~!',
                          style: TextStyle(
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w400,
                            color: Constant.blackLight,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 8.0.wp, left: 8.0.wp, bottom: 15.0.wp),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/heart_icon.png',
                                color: Constant.iconColor,
                                width: 16.0.wp,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: 6.0.wp),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 9.5.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Constant.textColor,
                                ),
                              ),
                              SizedBox(width: 14.0.wp),
                              Image.asset(
                                'assets/icons/comment_icon.png',
                                color: Constant.iconColor,
                                width: 16.0.wp,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: 6.0.wp),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 9.5.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Constant.textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0.wp),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                        'assets/profile/profile_2.png'),
                                    radius: 19.0.wp,
                                  ),
                                  SizedBox(width: 6.0.wp),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ㅇㅅㅇ',
                                          style: TextStyle(
                                            fontSize: 14.0.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Constant.blackDark,
                                          ),
                                        ),
                                        SizedBox(width: 4.0.wp),
                                        Text(
                                          '1일전',
                                          style: TextStyle(
                                            fontSize: 10.0.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Constant.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: Constant.iconColor,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40.0.wp),
                                child: Column(
                                  children: [
                                    Text(
                                      '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                                      style: TextStyle(
                                        fontSize: 12.0.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Constant.blackLight,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0.wp,
                                          left: 5.0.wp,
                                          bottom: 15.0.wp),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/icons/heart_icon.png',
                                            color: Constant.iconColor,
                                            width: 16.0.wp,
                                            fit: BoxFit.fill,
                                          ),
                                          SizedBox(width: 6.0.wp),
                                          Text(
                                            '5',
                                            style: TextStyle(
                                              fontSize: 9.5.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Constant.textColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
