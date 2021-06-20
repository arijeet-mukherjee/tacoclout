part of '../payment_page.dart';

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFadeTransition(
              duration: Duration(milliseconds: 300),
              axis: Axis.vertical,
              child: Image.asset(
                Images.done,
                width: Screens.width(context) / 3,
                height: Screens.width(context) / 3,
              ),
            ),
            SizedBox(height: Const.space25),
            CustomShakeTransition(
              duration: Duration(milliseconds: 1100),
              child: Text(
                AppLocalizations.of(context)!.your_payment_is_successfull,
                style: theme.textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Const.space15),
            CustomShakeTransition(
              duration: Duration(milliseconds: 1200),
              child: Text(
                AppLocalizations.of(context)!
                    .payment_is_successful_please_wait_until_your_order_arrives_at_home_thank_you_for_shopping,
                style: theme.textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Const.space25),
            CustomShakeTransition(
              duration: Duration(milliseconds: 1300),
              axis: Axis.vertical,
              child: CustomElevatedButton(
                label: AppLocalizations.of(context)!.see_my_orders,
                onTap: () {
                  Get.toNamed(
                    Routes.order_history,
                    arguments: true,
                  );
                },
              ),
            ),
            SizedBox(height: Const.space12),
            CustomShakeTransition(
              duration: Duration(milliseconds: 1400),
              axis: Axis.vertical,
              child: SizedBox(
                width: double.infinity,
                height: 45.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    side: BorderSide(
                      color: theme.primaryColor,
                    ),
                  ),
                  onPressed: () {
                    Get.offAllNamed(Routes.home);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.shop_again,
                    style: theme.textTheme.bodyText2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
