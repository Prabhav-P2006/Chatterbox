import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chatterbox/core/theming/colors.dart';
import 'package:lottie/lottie.dart';

class NoChatYet extends StatelessWidget {
  const NoChatYet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Text(
            context.tr("no_chat"),
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white, // Changed to white for dark background
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            context.tr("no_chat_description"),
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.white70, // Slightly transparent white
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
