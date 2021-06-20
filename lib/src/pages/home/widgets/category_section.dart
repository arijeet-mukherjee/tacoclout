part of '../home_page.dart';

class _CategorySection extends StatelessWidget {
  final List itemCount;

  Future<List<TacoCategoryModel>> _fetchCategory() async {
    List<TacoCategoryModel> c = [];
    final response = await http
        .get(Uri.parse(ApiConstant.base_url + ApiConstant.store_endpoint));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)["categories"];
      print(ApiConstant.base_url +
          ApiConstant.store_endpoint +
          "\n" +
          jsonResponse.toString());
      return jsonResponse
          .map((catTaco) => new TacoCategoryModel.fromJson(catTaco))
          .toList();
      // return c;
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

      String imageUri(String n) {
      if (n == "3RD GEN TACOMA") {
        return Images.zero;
      }
      if (n == "2ND GEN TACOMA") {
        return Images.one;
      }
      if (n == "1ST GEN TACOMA") {
        return Images.two;
      }
      if (n == "5TH GEN 4RUNNER") {
        return Images.three;
      }
      return Images.toco_cat;
    }


  const _CategorySection({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    label(String val) {
      switch (val) {
        case 'Dress':
          return AppLocalizations.of(context)!.dress;
        case 'Shoes':
          return AppLocalizations.of(context)!.shoes;
        case 'Bag':
          return AppLocalizations.of(context)!.bag;
        case 'Other':
          return AppLocalizations.of(context)!.other;

        default:
          return val;
      }
    }

    onTap(int id) {
      switch (id) {
        case 1:
          Get.toNamed(
            Routes.browse_product,
            arguments: BrowseProductArgument(
              label: AppLocalizations.of(context)!.all_dress,
              itemCount: LocalList.allProductList(),
            ),
          );
          break;
        case 2:
          Get.toNamed(
            Routes.browse_product,
            arguments: BrowseProductArgument(
              label: AppLocalizations.of(context)!.all_shoes,
              itemCount: LocalList.allProductList(),
            ),
          );
          break;
        case 3:
          Get.toNamed(
            Routes.browse_product,
            arguments: BrowseProductArgument(
              label: AppLocalizations.of(context)!.all_bag,
              itemCount: LocalList.allProductList(),
            ),
          );
          break;
        case 4:
          Get.toNamed(Routes.category);
          break;
        default:
          Get.toNamed(Routes.category);
      }
    }

    /* return Container(
      width: Screens.width(context),
      height: 90.0,
      margin: EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: LocalList.topCategoryList()
            .map((e) => Expanded(
                  child: _BuildCategoryCircleCard(
                    onTap: () => onTap(e.id!),
                    icon: e.icon!,
                    label: label(e.label!),
                  ),
                ))
            .toList(),
      ),
    ); */
    Container _categoryView(List<TacoCategoryModel> data, context) {
      return Container(
        width: Screens.width(context),
        height: 102.0,
        margin: EdgeInsets.only(bottom: 15.0),
        child: Row(
          children: data
              .map((e) => Expanded(
                    child: _BuildCategoryCircleCard(
                      onTap: () => onTap(e.id!),
                      icon: imageUri(e.name!),
                      label: label(e.name!),
                    ),
                  ))
              .toList(),
        ),
      );
    }


    return FutureBuilder<List<TacoCategoryModel>>(
      future: _fetchCategory(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<TacoCategoryModel>? data = snapshot.data;

          return _categoryView(data!.take(4).toList(), context);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
