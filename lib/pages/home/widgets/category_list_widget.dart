import 'dart:math';

import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      itemCount: 8,
      itemBuilder: (BuildContext context, int idx) {
        return Column(
          children: [
            // const SizedBox(height: 8),
            Material(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: InkWell(
                customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                onTap: () => {},
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            // todo 添加图表标识
                            SizedBox(
                              width: 16,
                              height: 16,
                              child: CircleAvatar(
                                backgroundColor:
                                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '商品分类 $idx',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '¥ ${Random().nextInt(99999999).toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.w400,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Text(
                              '${Random().nextInt(9999)} 件',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
