import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handyman/Utils/colors.dart';



class ProviderTaskDetails extends StatefulWidget {
  const ProviderTaskDetails({Key? key}) : super(key: key);

  @override
  State<ProviderTaskDetails> createState() => _ProviderTaskDetailsState();
}

class _ProviderTaskDetailsState extends State<ProviderTaskDetails> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();

    setState(() {
      _messages.insert(0, ChatMessage(
        text: text,
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
          appBar: AppBar(
            backgroundColor: AppColors.backGroundColor,
            elevation: 0,
            bottom: const TabBar(
              labelColor: AppColors.blueContainerColor,
              dividerColor: AppColors.blueContainerColor,
              unselectedLabelColor: AppColors.greyTitleColor,
              indicatorColor: AppColors.blueContainerColor,

              tabs: [
                Tab(child: Text(
                  'Task Detail',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: AppFonts.inter,
                    fontWeight: FontWeight.w600,

                  ),
                ),),
                Tab(child: Text(
                  'Chat',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: AppFonts.inter,
                    fontWeight: FontWeight.w600,

                  ),
                ),),

              ],
            ),
            title: Text(
              'Wed, 12 Nov 2023',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 20.sp,
                fontFamily: AppFonts.inter,
                fontWeight: FontWeight.w700,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back,color: AppColors.blackColor,),
              onPressed: () {
                // Handle back arrow press
                Navigator.pop(context);
              },
            ),
          ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10.h,),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/provider_rect.png"),
                            SizedBox(width: 16.w,),
                            Text(
                              'Full Service Lawn Care',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily: AppFonts.inter,
                                fontWeight: FontWeight.w700,

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 33.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Time',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            Text(
                              '04:30 PM, Aug 14 2020',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.blueContainerColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 33.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Places',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            Text(
                              'Commercial',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.blueContainerColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 33.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Type',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            Text(
                              'Large (5,000 - 10,000 sq ft)',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.blueContainerColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 33.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status Lawn',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            Text(
                              'Once a week',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.blueContainerColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 33.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Options',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            Text(
                              'Moving, trimming',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.blueContainerColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 33.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            Text(
                              "\$325",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.blueContainerColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 33.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            Text(
                              "Waiting Accept",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: const Color(0xffFF892F),
                                fontSize: 15.sp,
                                fontFamily:AppFonts.inter,
                                fontWeight: FontWeight.w500,

                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )













                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 71.h,
                    decoration: ShapeDecoration(
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 47.w,
                            height: 47.h,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFD7D7D7),
                              shape: OvalBorder(),
                            ),
                          ),
                          SizedBox(width: 11.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dylan Meringue',
                                style: TextStyle(
                                  color: Color(0xFF2F3138),
                                  fontSize: 14.sp,
                                  fontFamily: AppFonts.inter,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 8.h,),
                              Text(
                                'Online 25 min',
                                style: TextStyle(
                                  color: Color(0xFF898FA1),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 33.w,
                            height: 33.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD7D7D7),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Icon(Icons.video_call_outlined),
                          ),
                          SizedBox(width: 14.w,),
                          Container(
                            width: 33.w,
                            height: 33.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD7D7D7),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Icon(Icons.call_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Flexible(
                    child: ListView.builder(
                      reverse: true,
                      itemCount: _messages.length,
                      itemBuilder: (_, index) => _messages[index],
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        width: 290.w,
                        height: 42.h,
                        decoration: ShapeDecoration(
                          color: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Flexible(
                              child: TextField(
                                controller: _textController,
                                onSubmitted: _handleSubmitted,
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Type your message...',

                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () => _handleSubmitted(_textController.text),
                            ),
                          ],
                        ),
                      ),

                      const Spacer(),
                      Container(
                        width: 42.w,
                        height: 42.h,
                        decoration: ShapeDecoration(
                          color: AppColors.blueButtonColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                        child: const Icon(Icons.add,color: AppColors.whiteColor,),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ChatMessage extends StatelessWidget {
  final String text;

  ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         /* CircleAvatar(
            child: Text('User'),
          ),*/
          Container(

            decoration: BoxDecoration(
                color: AppColors.blueButtonColor,
              borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.all( 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               // Text('User', style: Theme.of(context).textTheme.subtitle1),
                Container(
                  //margin: const EdgeInsets.only(top: 5.0),

                  child: Text(text),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
