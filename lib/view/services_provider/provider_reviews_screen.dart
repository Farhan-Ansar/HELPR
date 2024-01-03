import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



class ProviderReviews extends StatefulWidget {
  const ProviderReviews({Key? key}) : super(key: key);

  @override
  State<ProviderReviews> createState() => _ProviderReviewsState();
}

class _ProviderReviewsState extends State<ProviderReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 9.h,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: const Icon(Icons.arrow_back)),
                    const Spacer(),
                    Text(
                      'Reviews',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 22.sp,
                        fontFamily: AppFonts.inter,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: double.infinity,
                  height: 262.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(

                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 29,
                          itemPadding:
                          const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 22.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Text(
                              '93 reviews',
                              style: TextStyle(
                                color: AppColors.greyTitleColor,
                                fontSize: 15.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w400,

                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                width: 200.w,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2000,
                                percent: 1,
                                leading: const Row(
                                  children: [
                                    Text("5",style: TextStyle(
                                      color: AppColors.blackColor,
                                    ),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.star,color:Colors.amber),
                                  ],
                                ),
                                trailing: const Text("99",style: TextStyle(color: Colors.grey),),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                width: 200.w,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2000,
                                percent: 0.8,
                                leading: const Row(
                                  children: [
                                    Text("4",style: TextStyle(
                                      color: AppColors.blackColor,
                                    ),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.star,color:Colors.amber),
                                  ],
                                ),
                                trailing: const Text("80",style: TextStyle(color: Colors.grey),),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                width: 200.w,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2000,
                                percent: 0.6,
                                leading: const Row(
                                  children: [
                                    Text("3",style: TextStyle(
                                      color: AppColors.blackColor,
                                    ),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.star,color:Colors.amber),
                                  ],
                                ),
                                trailing: const Text("60",style: TextStyle(color: Colors.grey),),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                width: 200.w,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2000,
                                percent: 0.4,
                                leading: const Row(
                                  children: [
                                    Text("2",style: TextStyle(
                                      color: AppColors.blackColor,
                                    ),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.star,color:Colors.amber),
                                  ],
                                ),
                                trailing: const Text("40",style: TextStyle(color: Colors.grey),),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                width: 200.w,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2000,
                                percent: 0.2,
                                leading: const Row(
                                  children: [
                                    Text("1",style: TextStyle(
                                      color: AppColors.blackColor,
                                    ),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.star,color:Colors.amber),
                                  ],
                                ),
                                trailing: const Text("20",style: TextStyle(color: Colors.grey),),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h,)



                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Text(
                    'All Reviews',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.blueButtonColor,
                      fontSize: 17.sp,
                      fontFamily: AppFonts.inter,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 135.h,
                  decoration: ShapeDecoration(
                    //color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/reviews_davis.png"),
                          SizedBox(width: 12.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Georgie Johnston',
                                style: TextStyle(
                                  color: Color(0xFF222B45),
                                  fontSize: 15.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(height: 5.h,),
                              const Text(
                                'Lawn Mowing and Trimming',
                                style: TextStyle(
                                  color: Color(0xFF8F9BB3),
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,

                                ),
                              ),
                              SizedBox(height: 5.h,),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                       Text(
                        'What a great concept and value.  I have wasted weeks trying interviewing.',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w400,

                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Jan 24, 2020',

                          style: TextStyle(
                            color: AppColors.greyTitleColor,
                            fontSize: 14.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: double.infinity,
                  height: 135.h,
                  decoration: ShapeDecoration(
                    //color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/louise.png"),
                          SizedBox(width: 12.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Georgie Johnston',
                                style: TextStyle(
                                  color: Color(0xFF222B45),
                                  fontSize: 15.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(height: 5.h,),
                              const Text(
                                'Lawn Mowing and Trimming',
                                style: TextStyle(
                                  color: Color(0xFF8F9BB3),
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,

                                ),
                              ),
                              SizedBox(height: 5.h,),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'What a great concept and value.  I have wasted weeks trying interviewing.',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w400,

                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Jan 24, 2020',

                          style: TextStyle(
                            color: AppColors.greyTitleColor,
                            fontSize: 14.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: double.infinity,
                  height: 135.h,
                  decoration: ShapeDecoration(
                    //color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/rose.png"),
                          SizedBox(width: 12.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Georgie Johnston',
                                style: TextStyle(
                                  color: Color(0xFF222B45),
                                  fontSize: 15.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(height: 5.h,),
                              const Text(
                                'Lawn Mowing and Trimming',
                                style: TextStyle(
                                  color: Color(0xFF8F9BB3),
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,

                                ),
                              ),
                              SizedBox(height: 5.h,),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'What a great concept and value.  I have wasted weeks trying interviewing.',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15.sp,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w400,

                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Jan 24, 2020',

                          style: TextStyle(
                            color: AppColors.greyTitleColor,
                            fontSize: 14.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
