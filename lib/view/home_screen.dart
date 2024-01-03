import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman/Utils/colors.dart';
import 'package:handyman/view/services_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '🏡',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: AppFonts.roboto,
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Text(
                      'Los Angeles, California, US',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 13.sp,
                        fontFamily:AppFonts.inter,
                        fontWeight: FontWeight.w600,

                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: double.infinity,
                  height: 154.h,
                  decoration: ShapeDecoration(
                    color: AppColors.blueContainerColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Hey,',
                                style: TextStyle(
                                  color:AppColors.greyTextColor,
                                  fontSize: 16.sp,
                                  fontFamily: AppFonts.sfProText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color:AppColors.blackColor,
                                  fontSize: 16.sp,
                                  fontFamily: AppFonts.sfProText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: 'John',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 16.sp,
                                  fontFamily: AppFonts.sfProText,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Text(
                          'Can I help you something?',
                          style: TextStyle(
                            color: AppColors.greySubTextColor,
                            fontSize: 15.sp,
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                        SizedBox(height: 12.h,),
                        Container(
                          //width: 311,
                          height: 50.h,
                          decoration: ShapeDecoration(
                            color: AppColors.whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.w, right: 15.w),
                            child: TextFormField(
                              style: TextStyle( // Set the text color here
                              color: AppColors.blackColor, // Change to the desired text color
                              fontSize: 15.sp,
                              fontFamily:AppFonts.inter,
                              fontWeight: FontWeight.w500,
                            ),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Searching',
                                  hintStyle: TextStyle(
                                    color: AppColors.greyTitleColor,
                                    fontSize: 15.sp,
                                    fontFamily: AppFonts.inter,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  prefixIcon: const Icon(Icons.search)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 17.sp,
                        fontFamily: AppFonts.sfProText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: AppColors.blueButtonColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.sfProText,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: 370.h,
                   // color: Colors.cyan,
                    child: MyGridView()),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Projects',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 17.sp,
                        fontFamily: AppFonts.sfProText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: AppColors.blueButtonColor,
                        fontSize: 15.sp,
                        fontFamily: AppFonts.sfProText,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Container(
                    height: 130.h,
                    // color: Colors.cyan,
                    child: TrendingProjects()),
                SizedBox(height: 10.h,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Looking for something Eese?',
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 16.sp,
                      fontFamily: AppFonts.sfProText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(
                      height: 42.h,
                      decoration: ShapeDecoration(
                        color: AppColors.greyContainerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                      ),
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'Home Repair',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w,),
                    Container(
                      height: 42.h,
                      decoration: ShapeDecoration(
                        color: AppColors.greyContainerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'Errands',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(
                      height: 42.h,
                      decoration: ShapeDecoration(
                        color: AppColors.greyContainerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                      ),
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'Gardening',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w,),
                    Container(
                      height: 42.h,
                      decoration: ShapeDecoration(
                        color: AppColors.greyContainerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'Help Moving',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(
                      height: 42.h,
                      decoration: ShapeDecoration(
                        color: AppColors.greyContainerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                      ),
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'Tv Mounting',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w,),
                    Container(
                      height: 42.h,
                      decoration: ShapeDecoration(
                        color: AppColors.greyContainerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'Cleaning',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(
                      height: 42.h,
                      decoration: ShapeDecoration(
                        color: AppColors.greyContainerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                      ),
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              'Plumbing Help',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  // Sample data: names and image URLs
  //final List<String> names = ['Item 1',];
  final List<String> Categories = [
  "assets/images/Category_items_1.png",
  "assets/images/Category_items_2.png",
  "assets/images/Category_items_3.png",
  "assets/images/Category_items_4.png",
  "assets/images/Category_items_5.png",
  "assets/images/Category_items_6.png",
  "assets/images/Category_items_7.png",
  "assets/images/Category_items_8.png",
  "assets/images/Category_items_9.png",


  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns in the grid
        //crossAxisSpacing: 3.0, // Spacing between columns
       // mainAxisSpacing: 3.0, // Spacing between rows
      ),
      itemCount: Categories.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context,) => const ServiceListScreen()),);
          },
            child: GridItem( imageUrl: Categories[index]));
      },
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;

  GridItem({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        imageUrl, // Set the desired image width
        fit: BoxFit.cover,
      ),
    );
  }
}



class TrendingProjects extends StatelessWidget {
  // Sample data: names and image URLs
  //final List<String> names = ['Item 1',];
  final List<String> Trending = [
    "assets/images/Category_items_4.png",
    "assets/images/Category_items_3.png",
    "assets/images/Category_items_7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns in the grid
        //crossAxisSpacing: 3.0, // Spacing between columns
        // mainAxisSpacing: 3.0, // Spacing between rows
      ),
      itemCount: Trending.length,
      itemBuilder: (BuildContext context, int index) {
        return TrendItems( imageUrl: Trending[index]);
      },
    );
  }
}

class TrendItems extends StatelessWidget {
  final String imageUrl;

  TrendItems({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        imageUrl, // Set the desired image width
        fit: BoxFit.cover,
      ),
    );
  }
}