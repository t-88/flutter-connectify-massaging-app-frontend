import 'package:connectify/consts.dart';
import 'package:flutter/material.dart';

class NoContactsHalfPage extends StatelessWidget {
  final onSearch;
  const NoContactsHalfPage({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 530,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage(
                "assets\\imgs\\no_contacts.png",
              ),
              width: 320,
            ),
            Column(
              children: [
                Text(
                  "No  Contacts",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 150,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.purple,
                      ),
                      onPressed: onSearch,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            "Find Some",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
