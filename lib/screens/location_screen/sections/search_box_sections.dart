import 'package:ev_charge/components/searchBox.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';

class SearchBoxSection extends StatefulWidget {
  const SearchBoxSection({Key? key}) : super(key: key);

  @override
  State<SearchBoxSection> createState() => _SearchBoxSectionState();
}

class _SearchBoxSectionState extends State<SearchBoxSection> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 16,
            )),
        SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          height: kTextFieldHeight,
          child: TextField(
            decoration: InputDecoration(
              prefixIconConstraints: const BoxConstraints(),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  size: 18.0,
                ),
              ),
              contentPadding: const EdgeInsets.all(0),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: inputBorder,
              focusedBorder: inputBorder,
              hintText: "Serach",
            ),
          ),
        )
      ],
    );
  }
}
