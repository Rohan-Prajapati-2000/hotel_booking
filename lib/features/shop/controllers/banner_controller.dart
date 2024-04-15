import 'package:get/get.dart';

import '../../../data/repositories/banners/banner_repository.dart';
import '../../../utils/popups/loaders.dart';
import '../models/banner_model.dart';

class BannerControler extends GetxController{

  /// Variables
  final isLoading = false.obs;
  final carousalCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;


  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }


  /// Update page navigation dots
  void updatePageIndicator(index){
    carousalCurrentIndex.value = index;
  }

  /// Fetch banners
  Future<void> fetchBanners() async{
    try{
      /// Show loader while loading categories
      isLoading.value = true;

      // Fetch Banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      // Assign banners
      this.banners.assignAll(banners);

    } catch (e) {
      SLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    } finally{
      /// Remove Loader
      isLoading.value = false;
    }
  }



}