import 'package:flutter/material.dart';

class ScanNewScreen extends StatefulWidget {
  const ScanNewScreen({super.key});

  @override
  State<ScanNewScreen> createState() => _ScanNewScreenState();
}

class _ScanNewScreenState extends State<ScanNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("Scan New Screen"));
  }
}
