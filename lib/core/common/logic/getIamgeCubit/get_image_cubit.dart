import 'package:bloc/bloc.dart';
import 'package:cognme/core/data/cache/cache.dart';
import 'package:image_picker/image_picker.dart';

part 'get_image_state.dart';

class GetImageCubit extends Cubit<GetImageState> {
  GetImageCubit() : super(GetImageInitial());
  XFile? profilePic;

  uploadPicture(XFile image) {
    profilePic = image;
    CacheHelper().saveData(key: "Image", value: image.path);
    emit(UploadPicture());
  }
}
