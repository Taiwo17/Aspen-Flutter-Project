import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchFunctionality extends StatefulWidget {
  const SearchFunctionality({super.key});

  @override
  State<SearchFunctionality> createState() => _SearchFunctionalityState();
}

class _SearchFunctionalityState extends State<SearchFunctionality> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Color(0xffF3F8FE),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Color(0xffB8B8B8)),
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/search.svg'),
            SizedBox(width: 8),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Find things to do',
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
