import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({Key? key}) : super(key: key);

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  Razorpay razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
    razorpay = Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    // razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  void openCheckout() {
    var options = {
      "key": 'rzp_test_JWLbP0qS34pEQX',
      "amount": 200 * 100,
      "name": "TeleCeta",
      "description": "Payment for consulting Doctor",
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    FlushbarHelper.createSuccess(
            message: "Payment Successfully Done. ${response.paymentId}")
        .show(context);
  }

  void handlePaymentError(PaymentFailureResponse response) {
    FlushbarHelper.createError(message: "Payment Failed. ${response.message}")
        .show(context);
  }

  @override
  void dispose() {
    razorpay.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: const Color.fromRGBO(0, 119, 182, 1),
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                const Text(
                  'Rs.200',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'NunitoBold',
                      fontSize: 18),
                ),
                const SizedBox(width: 150),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5,
                          alignment: Alignment.center),
                      onPressed: () {
                        openCheckout();
                      },
                      child: const Text('Pay and Consult',
                          style: TextStyle(
                              fontFamily: 'NunitoSemiBold',
                              fontSize: 14,
                              color: Color.fromRGBO(3, 4, 94, 1)))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
