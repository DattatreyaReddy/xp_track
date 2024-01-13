import '../dto/currency_info/currency_info_dto.dart';

final List<String> supportedCurrencyCodes = supportedCurrencyMap.keys.toList();

final Map<String, CurrencyInfoDto> supportedCurrencyMap = {
  "AFN": CurrencyInfoDto(code: "AFN", name: "Afghanistan Afghani", symbol: "؋"),
  "ALL": CurrencyInfoDto(code: "ALL", name: "Albanian Lek", symbol: "Lek"),
  "DZD": CurrencyInfoDto(code: "DZD", name: "Algerian dinar", symbol: "دج"),
  "ARS": CurrencyInfoDto(code: "ARS", name: "Argentine Peso", symbol: "\$"),
  "AMD": CurrencyInfoDto(code: "AMD", name: "Armenian Dram", symbol: "֏"),
  "AUD": CurrencyInfoDto(code: "AUD", name: "Australian Dollar", symbol: "\$"),
  "AZN": CurrencyInfoDto(code: "AZN", name: "Azerbaijani Manat", symbol: "₼"),
  "BHD": CurrencyInfoDto(code: "BHD", name: "Bahraini Dinar", symbol: "BD"),
  "BDT": CurrencyInfoDto(code: "BDT", name: "Bangladeshi Taka", symbol: "৳"),
  "BBD": CurrencyInfoDto(code: "BBD", name: "Barbados Dollar", symbol: "\$"),
  "BZD": CurrencyInfoDto(code: "BZD", name: "Belize Dollar", symbol: "BZ\$"),
  "BMD": CurrencyInfoDto(code: "BMD", name: "Bermuda Dollar", symbol: "\$"),
  "BTN":
      CurrencyInfoDto(code: "BTN", name: "Bhutanese Ngultrum", symbol: "Nu."),
  "BOB": CurrencyInfoDto(code: "BOB", name: "Bolivia Bolíviano", symbol: "\$b"),
  "BAM": CurrencyInfoDto(
      code: "BAM",
      name: "Bosnia and Herzegovina convertible mark",
      symbol: "KM"),
  "BWP": CurrencyInfoDto(code: "BWP", name: "Botswanan Pula", symbol: "P"),
  "BRL": CurrencyInfoDto(code: "BRL", name: "Brazilian Real", symbol: "R\$"),
  "GBP": CurrencyInfoDto(code: "GBP", name: "British Pound", symbol: "£"),
  "BND": CurrencyInfoDto(
      code: "BND", name: "Brunei Darussalam Dollar", symbol: "\$"),
  "BGN": CurrencyInfoDto(code: "BGN", name: "Bulgarian Lev", symbol: "лв"),
  "BIF": CurrencyInfoDto(code: "BIF", name: "Burundian Franc", symbol: "FBu"),
  "KHR": CurrencyInfoDto(code: "KHR", name: "Cambodian riel", symbol: "៛"),
  "CAD": CurrencyInfoDto(code: "CAD", name: "Canadian Dollar", symbol: "\$"),
  "KYD":
      CurrencyInfoDto(code: "KYD", name: "Cayman Islands Dollar", symbol: "\$"),
  "XAF": CurrencyInfoDto(
      code: "XAF", name: "Central African CFA franc", symbol: "FCFA"),
  "CLP": CurrencyInfoDto(code: "CLP", name: "Chile Peso", symbol: "\$"),
  "CNY": CurrencyInfoDto(code: "CNY", name: "China Yuan Renminbi", symbol: "¥"),
  "COP": CurrencyInfoDto(code: "COP", name: "Colombia Peso", symbol: "\$"),
  "CDF": CurrencyInfoDto(code: "CDF", name: "Congolese franc", symbol: "FC"),
  "CRC": CurrencyInfoDto(code: "CRC", name: "Costa Rica Colon", symbol: "₡"),
  "CZK": CurrencyInfoDto(code: "CZK", name: "Czech Koruna", symbol: "Kč"),
  "DKK": CurrencyInfoDto(code: "DKK", name: "Denmark Krone", symbol: "kr"),
  "DOP": CurrencyInfoDto(
      code: "DOP", name: "Dominican Republic Peso", symbol: "RD\$"),
  "EGP": CurrencyInfoDto(code: "EGP", name: "Egypt Pound", symbol: "£"),
  "AED": CurrencyInfoDto(code: "AED", name: "Emirati Dirham", symbol: "د.إ"),
  "ETB": CurrencyInfoDto(code: "ETB", name: "Ethiopian Birr", symbol: "Br"),
  "EUR": CurrencyInfoDto(code: "EUR", name: "Euro", symbol: "€"),
  "GMD": CurrencyInfoDto(code: "GMD", name: "Gambian dalasi", symbol: "D"),
  "GEL": CurrencyInfoDto(code: "GEL", name: "Georgian Lari", symbol: "₾"),
  "GHS": CurrencyInfoDto(code: "GHS", name: "Ghana Cedi", symbol: "₵"),
  "GTQ": CurrencyInfoDto(code: "GTQ", name: "Guatemalan quetzal", symbol: "Q"),
  "GYD": CurrencyInfoDto(code: "GYD", name: "Guyana Dollar", symbol: "\$"),
  "HTG": CurrencyInfoDto(code: "HTG", name: "Haitian gourde", symbol: "G"),
  "HKD": CurrencyInfoDto(code: "HKD", name: "Hong Kong Dollar", symbol: "\$"),
  "HUF": CurrencyInfoDto(code: "HUF", name: "Hungary Forint", symbol: "Ft"),
  "ISK": CurrencyInfoDto(code: "ISK", name: "Iceland Krona", symbol: "kr"),
  "INR": CurrencyInfoDto(code: "INR", name: "Indian Rupee", symbol: "₹"),
  "IDR": CurrencyInfoDto(code: "IDR", name: "Indonesia Rupiah", symbol: "Rp"),
  "IQD": CurrencyInfoDto(code: "IQD", name: "Iraqi Dinar", symbol: "د.ع"),
  "ILS": CurrencyInfoDto(code: "ILS", name: "Israel Shekel", symbol: "₪"),
  "JMD": CurrencyInfoDto(code: "JMD", name: "Jamaica Dollar", symbol: "J\$"),
  "JPY": CurrencyInfoDto(code: "JPY", name: "Japanese Yen", symbol: "¥"),
  "JOD": CurrencyInfoDto(code: "JOD", name: "Jordanian dinar", symbol: "د.أ"),
  "KZT": CurrencyInfoDto(code: "KZT", name: "Kazakhstan Tenge", symbol: "〒"),
  "KES": CurrencyInfoDto(code: "KES", name: "Kenyan Shilling", symbol: "KSh"),
  "KWD": CurrencyInfoDto(code: "KWD", name: "Kuwaiti Dinar", symbol: "د.ك"),
  "KGS": CurrencyInfoDto(code: "KGS", name: "Kyrgyzstani som", symbol: "с"),
  "LAK": CurrencyInfoDto(code: "LAK", name: "Laos Kip", symbol: "₭"),
  "LRD": CurrencyInfoDto(code: "LRD", name: "Liberia Dollar", symbol: "\$"),
  "MKD": CurrencyInfoDto(code: "MKD", name: "Macedonia Denar", symbol: "ден"),
  "MWK": CurrencyInfoDto(code: "MWK", name: "Malawian Kwacha", symbol: "MK"),
  "MYR": CurrencyInfoDto(code: "MYR", name: "Malaysia Ringgit", symbol: "RM"),
  "MVR": CurrencyInfoDto(code: "MVR", name: "Maldivian Rufiyaa", symbol: "/-"),
  "MUR": CurrencyInfoDto(code: "MUR", name: "Mauritius Rupee", symbol: "₨"),
  "MXN": CurrencyInfoDto(code: "MXN", name: "Mexico Peso", symbol: "\$"),
  "MDL": CurrencyInfoDto(code: "MDL", name: "Moldovan Leu", symbol: "L"),
  "MNT": CurrencyInfoDto(code: "MNT", name: "Mongolia Tughrik", symbol: "₮"),
  "MAD": CurrencyInfoDto(code: "MAD", name: "Moroccan Dirham", symbol: "MAD"),
  "MZN": CurrencyInfoDto(code: "MZN", name: "Mozambique Metical", symbol: "MT"),
  "MMK": CurrencyInfoDto(code: "MMK", name: "Myanmar Kyat", symbol: "Ks"),
  "NAD": CurrencyInfoDto(code: "NAD", name: "Namibia Dollar", symbol: "\$"),
  "NPR": CurrencyInfoDto(code: "NPR", name: "Nepal Rupee", symbol: "₨"),
  "NZD": CurrencyInfoDto(code: "NZD", name: "New Zealand Dollar", symbol: "\$"),
  "NIO": CurrencyInfoDto(code: "NIO", name: "Nicaragua Cordoba", symbol: "C\$"),
  "NGN": CurrencyInfoDto(code: "NGN", name: "Nigeria Naira", symbol: "₦"),
  "NOK": CurrencyInfoDto(code: "NOK", name: "Norway Krone", symbol: "kr"),
  "OMR": CurrencyInfoDto(code: "OMR", name: "Oman Rial", symbol: "﷼"),
  "PKR": CurrencyInfoDto(code: "PKR", name: "Pakistan Rupee", symbol: "₨"),
  "PGK":
      CurrencyInfoDto(code: "PGK", name: "Papua New Guinean Kina", symbol: "K"),
  "PYG": CurrencyInfoDto(code: "PYG", name: "Paraguay Guarani", symbol: "₲"),
  "PEN": CurrencyInfoDto(code: "PEN", name: "Peru Sol", symbol: "S/."),
  "PHP": CurrencyInfoDto(code: "PHP", name: "Philippines Peso", symbol: "₱"),
  "PLN": CurrencyInfoDto(code: "PLN", name: "Poland Zloty", symbol: "zł"),
  "QAR": CurrencyInfoDto(code: "QAR", name: "Qatar Riyal", symbol: "﷼"),
  "RON": CurrencyInfoDto(code: "RON", name: "Romania Leu", symbol: "L"),
  "RUB": CurrencyInfoDto(code: "RUB", name: "Russia Ruble", symbol: "₽"),
  "RWF": CurrencyInfoDto(code: "RWF", name: "Rwandan franc", symbol: "FRw"),
  "SAR": CurrencyInfoDto(code: "SAR", name: "Saudi Arabia Riyal", symbol: "﷼"),
  "RSD": CurrencyInfoDto(code: "RSD", name: "Serbia Dinar", symbol: "Дин."),
  "SCR": CurrencyInfoDto(code: "SCR", name: "Seychellois rupee", symbol: "₨"),
  "SGD": CurrencyInfoDto(code: "SGD", name: "Singapore Dollar", symbol: "\$"),
  "SOS": CurrencyInfoDto(code: "SOS", name: "Somalia Shilling", symbol: "S"),
  "ZAR": CurrencyInfoDto(code: "ZAR", name: "South Africa Rand", symbol: "R"),
  "KRW": CurrencyInfoDto(code: "KRW", name: "South Korea Won", symbol: "₩"),
  "LKR": CurrencyInfoDto(code: "LKR", name: "Sri Lanka Rupee", symbol: "₨"),
  "SRD": CurrencyInfoDto(code: "SRD", name: "Suriname Dollar", symbol: "\$"),
  "SEK": CurrencyInfoDto(code: "SEK", name: "Sweden Krona", symbol: "kr"),
  "CHF": CurrencyInfoDto(code: "CHF", name: "Switzerland Franc", symbol: "CHF"),
  "SYP": CurrencyInfoDto(code: "SYP", name: "Syrian Lira", symbol: "LS"),
  "TWD":
      CurrencyInfoDto(code: "TWD", name: "Taiwan New Dollar", symbol: "NT\$"),
  "TZS":
      CurrencyInfoDto(code: "TZS", name: "Tanzanian Shilling", symbol: "TSh"),
  "THB": CurrencyInfoDto(code: "THB", name: "Thailand Baht", symbol: "฿"),
  "TTD": CurrencyInfoDto(
      code: "TTD", name: "Trinidad and Tobago Dollar", symbol: "TT\$"),
  "TND": CurrencyInfoDto(code: "TND", name: "Tunisian dinar", symbol: "د.ت"),
  "TRY": CurrencyInfoDto(code: "TRY", name: "Turkish Lira", symbol: "₺"),
  "XOF": CurrencyInfoDto(code: "XOF", name: "UEMOA CFA franc", symbol: "FCFA"),
  "UGX": CurrencyInfoDto(code: "UGX", name: "Ugandan Shilling", symbol: "USh"),
  "UAH": CurrencyInfoDto(code: "UAH", name: "Ukraine Hryvnia", symbol: "₴"),
  "USD":
      CurrencyInfoDto(code: "USD", name: "United States Dollar", symbol: "\$"),
  "UYU": CurrencyInfoDto(code: "UYU", name: "Uruguay Peso", symbol: "\$U"),
  "VEF": CurrencyInfoDto(code: "VEF", name: "Venezuela Bolívar", symbol: "Bs"),
  "VND": CurrencyInfoDto(code: "VND", name: "Vietnamese Dong", symbol: "₫"),
  "YER": CurrencyInfoDto(code: "YER", name: "Yemen Rial", symbol: "﷼"),
  "ZMW": CurrencyInfoDto(code: "ZMW", name: "Zambian kwacha", symbol: "ZK"),
};
