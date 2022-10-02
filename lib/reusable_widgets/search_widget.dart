import 'package:flutter/cupertino.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 0),
          child: CupertinoSearchTextField(
            controller: textController,
            placeholder: 'Search',
          ),
        ),
      ),
    );
  }
}
