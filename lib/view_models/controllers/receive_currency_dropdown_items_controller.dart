import 'package:crypto_wallet_ui_template/models/receive_currency_dropdown_items.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ReceiveCurrencyDropdownItemsController {
  var selectedItem = Rxn<ReceiveCurrencyDropdownItems>();
  List<ReceiveCurrencyDropdownItems> items = [
    ReceiveCurrencyDropdownItems(text: "USD", image: "assets/images/usa.png"),
    ReceiveCurrencyDropdownItems(text: "EUR", image: "assets/images/euro.png"),
    ReceiveCurrencyDropdownItems(text: "JPY", image: "assets/images/japan.png"),
    ReceiveCurrencyDropdownItems(
        text: "BDT", image: "assets/images/bangladesh.png"),
    ReceiveCurrencyDropdownItems(text: "IND", image: "assets/images/india.png"),
  ];

  void setSelected(ReceiveCurrencyDropdownItems? item) {
    selectedItem.value = item;
  }
}
