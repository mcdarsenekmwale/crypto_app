
import 'package:flutter/material.dart';


class PaymentMethod extends StatelessWidget {

  static List<Map<String, String>> paymentOptions = [
    {
      "title":'Visa / MasterCard',
      "icon": "mastercard.png"
    },
    {
      "title":'PayPal',
      "icon": "paypal.png"
    },
    {
      "title":'Credit Card',
      "icon": "visa.png"
    },
    {
      "title":'Wechat Pay',
      "icon": "wechat.png"
    },
  ];

  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Text('Choose payment method',
            style: TextStyle(
                fontSize: 13.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade700
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric( horizontal: 2.0),
          margin: const EdgeInsets.only(right: 20),
          height: 58,
          decoration: const BoxDecoration(
              color: Colors.transparent
          ),
          child: DropdownButtonFormField(
              elevation: 0,
              style:  const TextStyle(
                fontSize: 14.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              value: "Visa / MasterCard",
              icon: const Icon(
                Icons.arrow_drop_down,
                color:  Color(0xFF18181a),
              ),
              iconSize: 30,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              items:paymentOptions
                  .map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                    value: value['title'],
                    child: Padding(padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Image.asset("assets/images/"+value['icon']!,
                            height: 30.0,
                            width: 30.0,
                          ),
                          const SizedBox(width: 12.0,),
                          Text(value['title']!,
                            style: const TextStyle(
                                color:  Color(0xFF18181a),
                                fontFamily: "Poppins",
                                fontSize: 16.0
                            ),
                          ),
                        ],
                      ),
                    )
                );
              }).toList(),
              validator: (value)=>(value.toString().isEmpty)?'':null,
              onChanged: (value){

              }
          ),
        ),
        const Divider(
          height: 1.2,
          thickness: 1.2,
        )
      ],
    );
  }


}
