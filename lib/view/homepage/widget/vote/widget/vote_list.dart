import 'package:flutter/material.dart';
import 'package:gatherly/view/homepage/widget/vote/widget/vote_Cart.dart';

class VotesList extends StatelessWidget {
  const VotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          const VoteCart(nuVote: 4, option: "option1"),
    );
  }
}
