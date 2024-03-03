import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/presentation/video_viewer_screen/widget/order_item.dart';
import 'package:hackathon/res/assets.dart';
import 'package:hackathon/res/primary_button.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoViewerScreen extends StatefulWidget {
  const VideoViewerScreen({super.key});

  @override
  State<VideoViewerScreen> createState() => _VideoViewerScreenState();
}

class _VideoViewerScreenState extends State<VideoViewerScreen> {
  late YoutubePlayerController controller = YoutubePlayerController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack
                (
                children:
              [
                 Image.asset(Assets.bike),
                 Padding
                   (
                  padding:  const EdgeInsets.only(left: 24, top: 30).r,
                  child: InkWell
                    (
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                      child: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,)),
                ),
        
                Padding(
                  padding:  EdgeInsets.only(top: getProportionateScreenHeight(240),left: 24.sp,right: 24.sp),
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x1E9095AB),
                              blurRadius: 20.r,
                              offset: const Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h,),
                            AutoSizeText(
                              'Restaurants',
                              style: TextStyle(
                                  color: const Color(0xffB4B9BF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                  fontFamily: 'Inter'),
                            ),

                            SizedBox(height: 18.h ,),
                            Align(
                                alignment: Alignment.center,
                                child: Image.asset(Assets.delivery, width: getProportionateScreenWidth(93), height: getProportionateScreenHeight(29),)),
                            SizedBox(height: 12.h ,),
                            const Divider(),

                            InkWell(
                                onTap: (){
                                  controller = YoutubePlayerController.fromVideoId(
                                    videoId: YoutubePlayerController.convertUrlToId(
                                        'https://youtu.be/w0YbekQ3R0I')!,
                                    autoPlay: true,
                                    params: const YoutubePlayerParams(
                                      showFullscreenButton: false,
                                      mute: true,
                                      enableCaption: false,
                                      loop: true,
                                      showControls: false,
                                    ),
                                  );
                                  controller.playVideo();
                                  // debugPrint("play youtube video");
                                  show(context, "watch video", controller);
                                },
                                child: Image.asset(Assets.jahez)),

                            AutoSizeText(
                              'Free Delivery',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.sp,
                                  fontFamily: 'Inter'),
                            ),

                            SizedBox(height: 12.h ,),
                            AutoSizeText(
                              'With the service, you can enjoy free delivery during the period your funds are held. ',
                              style: TextStyle(
                                  color: const Color(0xff737272),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.sp,
                                  fontFamily: 'Inter'),
                                  maxLines: 3,
                            ),


                          ],),
                        ),

                            SizedBox(height: 35.h ,),

                            const Divider(),

                            SizedBox(height: 15.h ,),

                            PrimaryButton(
                              fillColor: Colors.transparent,
                             splashColor: Colors.transparent,
                             onPressed: (){},
                              child:  Text('Read More', style: TextStyle(color: const Color(0xff00AE9A), fontSize: 17.sp),),),

                            SizedBox(height: 10.h ,),
                        ],),
                      ),

                      SizedBox(height: 30.h,),

                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x1E9095AB),
                              blurRadius: 20.r,
                              offset: const Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 24.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [
                                  SizedBox(height: 10.h,),
                                  AutoSizeText(
                                    'Advantage',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp,
                                        fontFamily: 'Inter'),
                                  ),
                                  SizedBox(height: 18.h ,),
                                  const OrderItem(description: 'Delivery', free: true,),
                                  SizedBox(height: 18.h ,),
                                  const OrderItem(description: 'Discount on Restaurants'),
                                  SizedBox(height: 18.h ,),

                                  const OrderItem(description: 'Just save your money to get them'),
                                  SizedBox(height: 25.h ,),

                                ],),
                            ),
                          ],),
                      ),
                      SizedBox(height: 20.h,),
                    ],
                  ),
                ),
              ],),
            ),
          ],
        ),
      ),
    );
  }

  // show dialog where play youtube video
  void show(
      BuildContext context, String title, YoutubePlayerController controller) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SizedBox(
            height: 200.h,
            width: Get.width,
            child: YoutubePlayer(
              controller: controller,
              aspectRatio: 17 / 4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
