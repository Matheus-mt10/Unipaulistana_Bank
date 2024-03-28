import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/icon_text_button.dart';
import 'package:unipaulistana_bank/components/title_text.dart';

class PixTransferScreen extends StatefulWidget {
  const PixTransferScreen({super.key});

  @override
  State<PixTransferScreen> createState() => _PixTransferScreenState();
}

class _PixTransferScreenState extends State<PixTransferScreen> {
  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(text: "Tranferência Pix", fontSize: 24),
          Row(
            children: [
              IconTextButton(
                  icon: FontAwesomeIcons.a,
                  primaryText: TitleText(text: "Transferir", fontSize: 24)),
              IconTextButton(
                  icon: FontAwesomeIcons.qrcode,
                  primaryText: TitleText(text: "QR code", fontSize: 24)),
            ],
          ),
        ],
      ),
    );
  }
}
