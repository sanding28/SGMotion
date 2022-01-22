import 'package:flutter/material.dart';
import 'package:login_page/customWidget/kategori.dart';
import 'package:login_page/customWidget/promoCard.dart';
import 'package:login_page/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget address() {
      return Container(
        width: double.infinity,
        height: 55,
        margin: EdgeInsets.only(top: 23, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(child: Icon(Icons.arrow_back)),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Alamatmu',
                            style: primTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Jl. Soekarno Hatta No. 4, Madiun',
                            style: primTextStyle.copyWith(
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 14,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/timer.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget searchColumn() {
      return Container(
        color: kSearchColor,
        width: 328,
        height: 45,
        margin: EdgeInsets.only(top: 16, right: 16),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: ksecondColor,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 13),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGreyColor),
                  borderRadius: BorderRadius.circular(2)),
              hintText: 'Mau Makan Apa Hari ini?',
              hintStyle: TextStyle(fontWeight: FontWeight.w400)),
        ),
      );
    }

    Widget popularPromo() {
      return Container(
        margin: EdgeInsets.only(top: 40, right: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 312,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/nasi.jpg'),
                        fit: BoxFit.fill)),
                child: Row(
                  children: [
                    Container(
                      width: 124,
                      height: 120,
                      decoration: BoxDecoration(
                          color: kRedColor,
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(250))),
                      child: Container(
                        margin: EdgeInsets.only(top: 6, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Promo\nTahun Baru',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Diskon 20%',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '#SemangatTahunBaru',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 312,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ketoprak.jpg'),
                        fit: BoxFit.cover)),
                child: Row(
                  children: [
                    Container(
                      width: 223,
                      height: 120,
                      decoration: BoxDecoration(
                          color: kRedColor,
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(50))),
                      child: Container(
                        margin: EdgeInsets.only(top: 6, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Promo\nTahun Baru',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Ambil promo dan nikmati\nmakanan dengan ongkir\nyang lebih hemat.",
                              style: whiteTextStyle.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 312,
                height: 120,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/burger3.jpg'),
                        fit: BoxFit.cover)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Text(
                        'Buy',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Text(
                        '1',
                        style: whiteTextStyle.copyWith(
                            fontSize: 54, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: Text(
                        'Get',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Text(
                        '1',
                        style: whiteTextStyle.copyWith(
                            fontSize: 54, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget pilihKategoriText() {
      return Container(
        margin: EdgeInsets.only(top: 36, right: 16),
        height: 22,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pilih Kategori',
                  style: primTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'lihat semua',
                  style: greenTextStyle.copyWith(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget pilihKategori() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        width: double.infinity,
        height: 71,
        child: Row(
          children: [
            Kategori(
              image: 'assets/mangkuk.png',
              name: 'Menu Sehat',
            ),
            Kategori(
              image: 'assets/promo.png',
              name: 'Promo',
            ),
            Kategori(
              image: 'assets/ayam.png',
              name: 'Menu Ayam',
            ),
            Kategori(
              image: 'assets/cepatsaji.png',
              name: 'Cepat Saji',
            ),
          ],
        ),
      );
    }

    Widget promoTeks() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: EdgeInsets.only(top: 25, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Voila Promo!',
                      style: primTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Ada promo apa ya di sini?',
                      style: primTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Text(
                  'lihat semua',
                  style: greenTextStyle.copyWith(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget promoImage() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        height: 170,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PromoCard(
                  foodName: 'Burger',
                  imagecard: 'assets/burger.jpg',
                  lineThroughPrice: '15.000',
                  price: '12.500'),
              PromoCard(
                  foodName: 'Egg',
                  imagecard: 'assets/egg.jpg',
                  lineThroughPrice: '10.000',
                  price: '9.500'),
              PromoCard(
                  foodName: 'Rendang',
                  imagecard: 'assets/rendang.jpg',
                  lineThroughPrice: '25.000',
                  price: '21.500'),
              PromoCard(
                  foodName: 'Salmon',
                  imagecard: 'assets/salmon.png',
                  lineThroughPrice: '35.000',
                  price: '32.500'),
            ],
          ),
        ),
      );
    }

    Widget popularResto() {
      return Container(
        height: 340,
        width: double.infinity,
        margin: EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wah ada resto enak, loh!',
              style: primTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              'Yuk cobain!',
              style: primTextStyle.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12, right: 16),
              height: 27,
              width: 328,
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Terbaru',
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Popular',
                          style: greenTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Rekomendasi',
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    child: Row(
                      children: [
                        Container(
                          height: 1,
                          width: 80,
                          color: kGreyColor,
                        ),
                        Container(
                          height: 3,
                          width: 108,
                          color: kGreenColor,
                        ),
                        Container(
                          height: 1,
                          width: 110,
                          color: kGreyColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buildNavbar(IconData icon) {
      return Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(color: Colors.white30),
        child: Icon(icon),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [buildNavbar(Icons.explore), buildNavbar(Icons.list_alt)],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16),
        children: [
          address(),
          searchColumn(),
          popularPromo(),
          pilihKategoriText(),
          pilihKategori(),
          promoTeks(),
          promoImage(),
          popularResto()
        ],
      ),
    );
  }
}
