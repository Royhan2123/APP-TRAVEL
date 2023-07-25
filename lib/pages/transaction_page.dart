import 'package:flutter/material.dart';

class TransactionPages extends StatefulWidget {
    
  const TransactionPages({super.key});

  @override
  State<TransactionPages> createState() => _TransactionPagesState();
}

class _TransactionPagesState extends State<TransactionPages> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Transaction"),
      ),
    );
  }
}
