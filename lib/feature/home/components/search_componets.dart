import 'package:flutter/material.dart';

const _searchComponentHegiht = 150.0;

class SearchComponent extends StatefulWidget {
  const SearchComponent({
    super.key,
    required this.onSearchFromChanged,
    required this.onSearchToChanged,
  });

  final void Function(String) onSearchFromChanged;
  final void Function(String) onSearchToChanged;

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  final _searchFromFocusNode = FocusNode();
  final _searchToFocusNode = FocusNode();
  final _searchFromTextController = TextEditingController();
  final _searchToTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: _searchComponentHegiht,
      child: Column(
        children: [
          SearchText(
            controller: _searchFromTextController,
            focusNode: _searchFromFocusNode,
            onSearchPressed: () {
              widget.onSearchFromChanged(_searchFromTextController.text);
            },
          ),
          const SizedBox(height: 13),
          SearchText(
            controller: _searchToTextController,
            focusNode: _searchToFocusNode,
            onSearchPressed: () {
              widget.onSearchToChanged(_searchToTextController.text);
            },
          ),
        ],
      ),
    );
  }
}

class SearchText extends StatelessWidget {
  const SearchText({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.onSearchPressed,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onSearchPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black54,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: EditableText(
                controller: controller,
                focusNode: focusNode,
                style:
                    Theme.of(context).textTheme.bodyLarge ?? const TextStyle(),
                cursorColor: Theme.of(context).colorScheme.primary,
                backgroundCursorColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: onSearchPressed,
          ),
        ],
      ),
    );
  }
}
