import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cognme/features/qr_code/presentation/cubit/patient_qr_code_cubit.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PatientCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QR Code Example'),
        ),
        body: Center(
          child: QrImageView(
            data: "https://ahmedslman.github.io/personal-info-web-/",
            version: QrVersions.auto,
            size: 300.0,
          ),
        ),
      ),
    );
  }
}
