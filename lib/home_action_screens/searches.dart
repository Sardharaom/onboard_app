import 'package:flutter/material.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFFF67952);
    const double defaultPadding = 16.0;

    return Form(
      child: TextFormField(
        onSaved: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search items...",
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: SizedBox(
            width: 48,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    color: Colors.white,
                    height: 450,
                    width: 450,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Clear",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Text(
                              "Filters",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Icon(
                              Icons.circle,
                              color: Colors.white10,
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: const [
                            Text(
                              "Category",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Image.asset("assets/icons/filter.png"),
            ),
          ),
        ),
      ),
    );
  }
}
