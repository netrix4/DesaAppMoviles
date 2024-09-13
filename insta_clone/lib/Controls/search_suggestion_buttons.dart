import 'package:flutter/material.dart';

class SearchSuggestionButton extends StatelessWidget {
  const SearchSuggestionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(400),
        fixedSize: const WidgetStatePropertyAll(Size.fromWidth(110)),
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        shape:  WidgetStateProperty.all(const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
      onPressed: ()=>{},
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.tv, color: Colors.black,),
          Text("Reels", style: TextStyle(color: Colors.black),)
        ],
      )
    );
  }
}
