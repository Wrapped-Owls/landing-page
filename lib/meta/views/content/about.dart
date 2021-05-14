import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';
import 'package:wrappedowls_landing_page/app/shared/wrappedowls.icons.dart';
import 'package:wrappedowls_landing_page/core/data/about.data.dart';
import 'package:wrappedowls_landing_page/meta/widgets/cards/info.card.dart';
import 'package:wrappedowls_landing_page/meta/widgets/layout/grid.wowls.dart';

class WowlsAbout extends StatelessWidget {
  final double height;

  const WowlsAbout({Key? key, this.height = 200}) : super(key: key);

  Widget _buildCard(IconData icon, String title, String objective) {
    return InfoCard(icon: icon, title: title, objective: objective);
  }

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(minHeight: height),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AboutData.title,
            style: TextStyle(
              color: UuuUhuThemes.currentPalette(UuuUhuComponents.APPBAR_TEXT),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          Divider(
            indent: ctxSize.width * 0.20,
            endIndent: ctxSize.width * 0.20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: ctxSize.width > 1000 ? 800 : (ctxSize.width * 0.8),
            ),
            child: Text(
              AboutData.objective,
              style: TextStyle(fontSize: 16),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          WowlsCustomGrid(
            children: [
              _buildCard(Icons.wysiwyg, 'Open Source', AboutData.openSource),
              _buildCard(
                Icons.assignment_ind,
                'User Experience',
                AboutData.userExperience,
              ),
              _buildCard(
                Icons.videogame_asset,
                'Game focus',
                AboutData.gameSystems,
              ),
              _buildCard(
                WrappedOwlsIcons.friggraynd_cvheip,
                'Our games',
                AboutData.ourGames,
              ),
              _buildCard(
                Icons.assignment_ind_outlined,
                'Custom Experience',
                AboutData.customExperience,
              ),
              _buildCard(
                Icons.fingerprint,
                'Privacy',
                AboutData.privacy,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
