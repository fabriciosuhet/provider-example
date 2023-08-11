import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/produto_model.dart';

class ProdutoWidget extends StatelessWidget {
  const ProdutoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child:  Text(context.read<ProdutoModel>().nome),
    );
  }
}
