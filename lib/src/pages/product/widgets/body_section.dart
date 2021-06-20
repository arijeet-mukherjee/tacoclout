part of '../product_page.dart';

class _BodySection extends StatelessWidget {
  final TacoProductModel product;

  const _BodySection({Key? key, required this.product}) : super(key: key);
  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(
        r"<[^>]*>",
        multiLine: true,
        caseSensitive: true
    );

    return htmlText.replaceAll(exp, '');
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned.fill(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: DraggableScrollableSheet(
        initialChildSize: .6,
        minChildSize: .6,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0),
              ),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              padding: EdgeInsets.symmetric(horizontal: Const.margin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.0),
                  Center(
                    child: Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: theme.unselectedWidgetColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: Const.space25),
                  CustomShakeTransition(
                    duration: Duration(milliseconds: 1000),
                    child: Text(product.name!,
                        style: theme.textTheme.headline3,
                        overflow: TextOverflow.clip,
                        maxLines: 2),
                  ),
                  SizedBox(height: Const.space12),
                  CustomShakeTransition(
                    duration: Duration(milliseconds: 1200),
                    child: Row(
                      children: [
                        //CustomStarRating(rating: product.rating!),
                        SizedBox(width: 5.0),
                        Text(
                          product.categories![0]["name"].toString(),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.subtitle2!
                              .copyWith(fontSize: 10.0),
                        ),
                        SizedBox(width: 5.0),
                        /* Text(
                          '0' + ' ' + AppLocalizations.of(context)!.review,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.subtitle2!
                              .copyWith(fontSize: 10.0),
                        ), */
                      ],
                    ),
                  ),
                  SizedBox(height: Const.space15),
                  CustomShakeTransition(
                    duration: Duration(milliseconds: 1300),
                    child: Text(
                      NumberFormat.simpleCurrency(
                        //symbol: "$",
                        
                        decimalDigits: 0,
                        //locale: 'en_US',
                      ).format(product.price),
                      style: theme.textTheme.headline2!
                          .copyWith(color: theme.primaryColor),
                    ),
                  ),
                  SizedBox(height: Const.space12),
                  CustomShakeTransition(
                    duration: Duration(milliseconds: 1400),
                    child: ReadMoreText(
                      removeAllHtmlTags(product.description!),
                      style: theme.textTheme.bodyText2,
                      trimLines: 5,
                      colorClickableText: theme.primaryColor,
                      trimMode: TrimMode.Line,
                      trimCollapsedText:
                          '... ' + AppLocalizations.of(context)!.more,
                      trimExpandedText:
                          ' ' + AppLocalizations.of(context)!.less,
                    ),
                  ),
                  SizedBox(height: Const.space25),
                  /* CustomShakeTransition(
                    duration: Duration(milliseconds: 1500),
                    child: _BuildLabelSection(
                      label: AppLocalizations.of(context)!.review,
                      onViewAllTap: () {
                        showToast(msg: AppLocalizations.of(context)!.see_all_review_clicked);
                      },
                    ),
                  ), */
                  SizedBox(height: 8.0),
                  /*EmptySection(
                    image: Illustrations.empty_rating,
                    title: AppLocalizations.of(context)!.does_not_have_a_rating_yet,                 ),*/
                  // ListView.builder(
                  //   itemCount: product!.reviews!.length,
                  //   physics: ScrollPhysics(),
                  //   shrinkWrap: true,
                  //   scrollDirection: Axis.vertical,
                  //   padding: EdgeInsets.all(0),
                  //   itemBuilder: (context, index) {
                  //     return ReviewCard(
                  //       review: product!.reviews![index],
                  //     );
                  //   },
                  // ),
                  SizedBox(height: 80.0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
