import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  RxString imageAddress = ''.obs;

  Future imagePicker() async {
    final ImagePicker _imagePicker = ImagePicker();
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imageAddress.value = image.path.toString();
    } else {
      print('No image is Selected');
    }
  }
}
