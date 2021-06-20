part of '../home_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _carouselIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void setStateIfMounted(f) {
    if (mounted) setState(f);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            ListView(
              children: [
                _BuildCarouselSwiper(
                  itemCount: LocalList.carouselSwiperList(),
                  carouselIndex: _carouselIndex,
                  onIndexChanged: (val) {
                    setState(() => _carouselIndex = val);
                  },
                ),
              //  SizedBox(height: Const.space25),
                
               /*  _CategorySection(
                  itemCount: LocalList.topCategoryList(),
                ), */
                SizedBox(height: Const.space15),
                _ScrollableSection(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionOne(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionTwo(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionThree(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionFour(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionFive(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionSix(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionSeven(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionEight(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionNine(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionTen(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
                SizedBox(height: Const.space15),
                _ScrollableSectionEleven(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed(
                    Routes.browse_product,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
              ],
            ),
            _CustomAppBar(
              onSearchTap: () {
                showSearch(context: context, delegate: SearchScreen());
              },
              onChatTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
