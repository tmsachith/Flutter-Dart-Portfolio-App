import 'package:flutter/material.dart';

class SkillLine extends StatelessWidget {
  final String skill;
  final double percentage;

  const SkillLine({required this.skill, required this.percentage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Text(
            skill,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey,
              color: Colors.green,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '${(percentage * 100).toStringAsFixed(1)}%',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
