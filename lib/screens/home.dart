import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_3b/screens/videoportfolio_updated.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //get width of the screen
    final width = MediaQuery.of(context).size.width;
    final statStyle = GoogleFonts.robotoCondensed(
      fontSize: 60,
      fontWeight: FontWeight.w700,
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Gap(22),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => VideoPortfolioScreen()),
                    );
                  },
                  child: CircleAvatar(
                    radius: width * 0.45,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: width * 0.45 - 5,
                      backgroundImage:
                          const AssetImage('assets/images/profile_pic.jpg'),
                    ),
                  ),
                ),
                Text(
                  'James Bond',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Actively looking',
                      textAlign: TextAlign.center,
                    ),
                    Gap(12),
                    FaIcon(
                      FontAwesomeIcons.solidCircleCheck,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Current Level'),
                        Text(
                          'A+',
                          style: statStyle,
                        ),
                      ],
                    ),
                    Column(children: [
                      Text('Projects'),
                      Text(
                        '30',
                        style: statStyle,
                      ),
                    ]),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.orange.shade200,
              child: Row(
                children: [
                  Text('View my complete profile'),
                  Spacer(),
                  IconButton(
                    onPressed: () async {
                      final Uri uri =
                          Uri.parse('https://www.facebook.com/PSUroars');
                      await launchUrl(uri);
                    },
                    icon: FaIcon(FontAwesomeIcons.arrowRightLong),
                  ),
                  const Gap(8),
                  IconButton(
                    onPressed: () async {
                      final Uri uri = Uri.parse('tel: +630991234567');
                      await launchUrl(uri);
                    },
                    icon: FaIcon(FontAwesomeIcons.phone),
                  ),
                  const Gap(8),
                  IconButton(
                    onPressed: () async {
                      final Uri uri = Uri.parse('sms: +639912345678');
                      await launchUrl(uri);
                    },
                    icon: FaIcon(FontAwesomeIcons.message),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
