// import 'package:cognme/core/utils/app_assets.dart';
// import 'package:cognme/core/utils/app_colors.dart';
// import 'package:cognme/core/utils/app_styles.dart';
// import 'package:cognme/core/utils/media_query.dart';
// import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_cubit.dart';
// import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// // ignore: camel_case_types
// class listTileEmergencyCall extends StatelessWidget {
//   const listTileEmergencyCall({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<EemergacyCallsCubit, EemergacyCallsState>(
//       builder: (context, state) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 20),
//           child: Container(
//             height: context.height * 0.08,
//             width: context.width * 0.9,
//             decoration: BoxDecoration(
//                 color: AppColors.whiteOfColor,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                       color: AppColors.greyOfText,
//                       blurRadius: 6,
//                       offset: const Offset(0, 5),
//                       spreadRadius: 3)
//                 ]),
//             child: ListTile(
//               leading: state.contacts.isNotEmpty &&
//                       state.contacts[state.contacts.length - 1].image != null
//                   ? Image(
//                       image: NetworkImage(
//                         state.contacts[state.contacts.length - 1].image
//                             as String,
//                       ),
//                     )
//                   : Image.asset(AppAssets.Victor1),
//               title: Text(
//                 state.contacts[state.contacts.length - 1].name,
//                 style: AppStyles.regularStyle18,
//               ),
//               subtitle: Text(
//                 state.contacts[state.contacts.length - 1].number,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
