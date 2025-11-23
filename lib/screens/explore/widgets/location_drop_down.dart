import 'package:aspen/commons/styles/text_styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationDropDown extends StatefulWidget {
  const LocationDropDown({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  @override
  State<LocationDropDown> createState() => _LocationDropDownState();
}

class _LocationDropDownState extends State<LocationDropDown> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/location.svg'),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              hint: const Row(children: [Text('Aspen, USA')]),
              iconStyleData: IconStyleData(
                icon: SvgPicture.asset(
                  'assets/icons/arrow_down.svg', // your custom icon
                  height: 18,
                  width: 18,
                ),
              ),
              items: widget.items
                  .map(
                    (String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: ASText.locationTextStyle,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                  .toList(),
              value: widget.selectedValue,
              onChanged: widget.onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
