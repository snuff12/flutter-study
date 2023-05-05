import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: order % 2 == 0 ? Colors.white : const Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: order % 2 == 0
                            ? const Color(0xFF1F2123)
                            : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: order % 2 == 0
                              ? const Color(0xFF1F2123)
                              : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: order % 2 == 0
                              ? const Color(0xFF1F2123)
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 12),
                  child: Icon(
                    icon,
                    color:
                        order % 2 == 0 ? const Color(0xFF1F2123) : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
