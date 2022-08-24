import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/avatar1.png'),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amanda',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: kYellowColor,
                        size: 12,
                      ),
                      SizedBox(width: 1),
                      Icon(
                        Icons.star,
                        color: kYellowColor,
                        size: 12,
                      ),
                      SizedBox(width: 1),
                      Icon(
                        Icons.star,
                        color: kYellowColor,
                        size: 12,
                      ),
                      SizedBox(width: 1),
                      Icon(
                        Icons.star,
                        color: kYellowColor,
                        size: 12,
                      ),
                      SizedBox(width: 1),
                      Icon(
                        Icons.star,
                        color: kYellowColor,
                        size: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here,',
                    style: blackTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.thumb_up,
            color: kGreyColor,
            size: 16,
          ),
        ],
      ),
    );
  }
}
