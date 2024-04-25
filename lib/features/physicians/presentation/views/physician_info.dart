import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/features/physicians/presentation/widgets/custom_rating-bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhysicianInfo extends StatelessWidget {
  const PhysicianInfo({super.key});
  static String id = 'PhysicianInfoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          'Physicians Info',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            customReplacementNavigate(context, RouterNames.physicalView);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                color: AppColors.whiteOfColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 6,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: ClipOval(
                      child: Image.asset(
                        AppAssets.Victor1,
                        height: 70,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dr. Ahmed Lotfy',
                        style: AppStyles.s16,
                      ),
                      Text(
                        'Ear, Nose and Throat Surgery Specialist',
                        style: AppStyles.formText16.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.black,
                          ),
                          Text(
                            ' In front of the Faculty of Islamic Studies ... ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          Text(
                            ' 01033816092 ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.calendarCheck,
                            color: Colors.black,
                          ),
                          Text(
                            ' Last visit: Last Monday  ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.file_copy_rounded,
                            color: Colors.black,
                          ),
                          Text(
                            ' Display The prescription ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.door_sliding,
                            color: Colors.black,
                          ),
                          Text(
                            ' next visit: After 1 month ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.note,
                            color: Colors.black,
                          ),
                          Text(
                            ' Regularly take your medications until  ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomRatingBar(),
                          SizedBox(
                            width: 60,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
