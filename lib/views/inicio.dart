import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Hotel extends StatelessWidget {
  Hotel({super.key});

  Image img = Image.asset('assets/bochalema.jpg');
  Image img2 = Image.asset('assets/cacota.jpg');
  Image img3 = Image.asset('assets/durania.jpg');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: <Widget>[
                Container(
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: img.image, fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Abiansemal, Indonesia',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.87',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  )
                ],
              ),
              const Text(
                '1,669 kilometers',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              const Text('Jul 2 - 7',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
              const Row(
                children: [
                  Text(r'$360 ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  Text('night',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: <Widget>[
                Container(
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image:
                        DecorationImage(image: img2.image, fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Santorini, Greece',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.84',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  )
                ],
              ),
              const Text(
                '1,669 kilometers away',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              const Text('April 20 - 25',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
              const Row(
                children: [
                  Text(r'$285 ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  Text('night',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: <Widget>[
                Container(
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image:
                        DecorationImage(image: img3.image, fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lake Arrowhead, California, US',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.93',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  )
                ],
              ),
              const Text(
                'Visited 4,008 times last week',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              const Text('April 20 - 25',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
              const Row(
                children: [
                  Text(r'$261 ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  Text('night',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
