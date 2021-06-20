part of '../checkout_page.dart';

class _BodySection extends StatelessWidget {
  final int totalPrice;
  final int shippingCost;
  final int total;
  final VoidCallback onCheckoutTap;

  const _BodySection(
      {Key? key,
      required this.totalPrice,
      required this.shippingCost,
      required this.total,
      required this.onCheckoutTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: Const.margin),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomShakeTransition(
                  child: _BuildPriceItem(
                label: AppLocalizations.of(context)!.total_price,
                value: totalPrice,
              )),
              SizedBox(height: Const.space12),
              CustomShakeTransition(
                  child: _BuildPriceItem(
                label: AppLocalizations.of(context)!.shipping_costs,
                value: shippingCost,
              )),
              SizedBox(height: Const.space12),
              CustomShakeTransition(
                  child: _BuildPriceItem(
                label: AppLocalizations.of(context)!.total,
                value: total,
              )),
            ],
          ),
        ),
        SizedBox(height: Const.space15),
        CustomElevatedButton(
          label: AppLocalizations.of(context)!.checkout_now,
          onTap: onCheckoutTap,
        ),
        SizedBox(height: Const.margin),
      ],
    );
  }
}
