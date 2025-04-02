import 'package:eClassify/utils/helper_utils.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PaymentGateway {
  final String name;
  final String key;
  final String currency;
  final int status;
  final String type;

  PaymentGateway({
    required this.name,
    required this.key,
    required this.currency,
    required this.status,
    required this.type,
  });
}

class AppSettings {
  /// Basic Settings
  static const String applicationName = 'Qofona';
  static const String androidPackageName = 'com.qofona.app';
  static const String shareAppText = "Share this App";

  static const String hostUrl = "https://qofona.com";

  ///API Setting

  static const int apiDataLoadLimit = 20;
  static const int maxCategoryShowLengthInHomeScreen = 5;

  static final String baseUrl = "${HelperUtils.checkHost(hostUrl)}api/";

  static const int hiddenAPIProcessDelay = 1;

  ///Set type here
  static const DeepLinkType deepLinkingType = DeepLinkType.native;

  static const String shareNavigationWebUrl = "qofona.com";

  static const MapType googleMapType = MapType.normal;

  static const int otpResendSecond = 60 * 2;
  static const int otpTimeOutSecond = 60 * 2;

  static const String defaultCountryCode = "91";
  static const bool disableCountrySelection = false;

  static const String successLoadingLottieFile = "loading_success.json";
  static const String successCheckLottieFile = "success_check.json";
  static const String progressLottieFileWhite = "loading_white.json";

  static const String maintenanceModeLottieFile = "maintenancemode.json";

  static const bool useLottieProgress = true;

  static const String notificationChannel = "basic_channel";
  static int uploadImageQuality = 50;
  static const Set additionalRTLlanguages = {};

  static const String riveAnimationFile = "rive_animation.riv";

  static const Map<String, dynamic> riveAnimationConfigurations = {
    "add_button": {
      "artboard_name": "Add",
      "state_machine": "click",
      "boolean_name": "isReverse",
      "boolean_initial_value": true,
      "add_button_shape_name": "shape",
    },
  };

  static List<PaymentGateway> paymentGateways = [];

  static void updatePaymentGateways() {
    paymentGateways = [
      PaymentGateway(
        name: "Stripe",
        key: stripePublishableKey,
        currency: stripeCurrency,
        status: stripeStatus,
        type: "stripe",
      ),
      PaymentGateway(
        name: "Paystack",
        key: payStackKey,
        currency: payStackCurrency,
        status: payStackStatus,
        type: "paystack",
      ),
      PaymentGateway(
        name: "Razorpay",
        key: razorpayKey,
        currency: razorpayCurrency,
        status: razorpayStatus,
        type: "razorpay",
      ),
      PaymentGateway(
        name: "PhonePe",
        key: phonePeKey,
        currency: phonePeCurrency,
        status: phonePeStatus,
        type: "phonepe",
      ),
      PaymentGateway(
        name: "Flutterwave",
        key: flutterwaveKey,
        currency: flutterwaveCurrency,
        status: flutterwaveStatus,
        type: "flutterwave",
      ),
    ];
  }

  static String enabledPaymentGateway = "";
  static String razorpayKey = "";
  static int razorpayStatus = 1;
  static String razorpayCurrency = "";
  static String payStackKey = "";
  static String payStackCurrency = "";
  static int payStackStatus = 1;
  static String paypalClientId = "";
  static String paypalServerKey = "";
  static bool isSandBoxMode = true;
  static String paypalCancelURL = "";
  static String paypalReturnURL = "";
  static String stripeCurrency = "";
  static String stripePublishableKey = "";
  static int stripeStatus = 1;
  static int phonePeStatus = 1;
  static String phonePeKey = "";
  static String phonePeCurrency = "";
  static int flutterwaveStatus = 1;
  static String flutterwaveKey = "";
  static String flutterwaveCurrency = "";

  static List<PaymentGateway> getEnabledPaymentGateways() {
    return paymentGateways.where((gateway) => gateway.status == 1).toList();
  }
}

enum DeepLinkType { native }
