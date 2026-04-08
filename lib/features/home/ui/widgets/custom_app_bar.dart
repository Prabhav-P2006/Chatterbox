import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chatterbox/core/theming/colors.dart';
import 'package:chatterbox/features/home/ui/widgets/about_app.dart';
import 'package:chatterbox/features/home/ui/widgets/home_options.dart';
import 'package:chatterbox/features/home/ui/widgets/my_qr_box.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.onMorePressed});
  final VoidCallback? onMorePressed;

  @override
  ConsumerState<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}

class _CustomAppBarState extends ConsumerState<CustomAppBar> {
  void _showUserSettings(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorsManager.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return const UserSetting(); // Assuming UserSetting is defined elsewhere
      },
    );
  }

  void _showAboutApp(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorsManager.backgroundColor.withOpacity(0.95),
                ColorsManager.backgroundColor,
              ],
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
          ),
          child: AboutApp(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.backgroundColor,
      // add multiple colores in backgroundColor
      title: const MyQrBox(),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Image.asset(
            'assets/icons/setting.png',
            width: 25.w,
            height: 25.h,
          ),
          onPressed: () {
            _showUserSettings(context);
          },
        ),
        SizedBox(
          width: 15.w, // Add some space between buttons
        ),
      ],
      leading: IconButton(
        onPressed: () {
          _showAboutApp(context);
        },
        icon: Image.asset(
          "assets/icons/info-circle.png",
          width: 25.w,
          height: 25.h,
        ),
      ),
      leadingWidth: 80.w,
      toolbarHeight: 80.h,
    );
  }
}
