import 'package:flutter/material.dart';
import 'package:proyecto_ubb/style/text_styles.dart';
import 'package:proyecto_ubb/utils/string_utils.dart';
import 'package:proyecto_ubb/utils/url_utils.dart';

class BlankPopUp extends StatelessWidget {
  const BlankPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    double alto = MediaQuery.of(context).size.height;
    return SizedBox(
      height: alto * 0.7,
      child: ListView(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        children: [
          // Titulo
          ListTile(
            title: const Text(""),
            titleTextStyle: PopUpTextStyle.mainTitle,
            textColor: DefaultTextStyle.of(context).style.color,
          ),
          // Parrafo Común
          const ListTile(
            leading: Icon(
              Icons.circle,
              size: 12,
            ),
            title: Text(
              "",
              style: PopUpTextStyle.content,
            ),
          ),
          // Parrafo con richText
          ListTile(
            leading: const Icon(
              Icons.circle,
              size: 12,
            ),
            title: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context)
                    .style
                    .merge(PopUpTextStyle.content),
                children: textEvidencia(""),
              ),
            ),
          ),
          // divider
          const Divider(
            endIndent: 15,
            indent: 15,
          ),
          // Link a web
          ListTile(
            leading: const Icon(
              Icons.public,
            ),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text(""),
            onTap: () {
              urlDialog(context, Uri.parse(""));
            },
          ),
        ],
      ),
    );
  }
}
