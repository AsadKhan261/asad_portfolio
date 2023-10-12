import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS4Experience extends StatelessWidget {
  const MS4Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.experienceKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.experienceTitle,
                description: DataValues.experienceDescription),
            const SizedBox(height: 30.0),
            ContainerCard().type3(
              image: 'logo.JPG',
              title: DataValues.experienceOrg1Title,
              role: DataValues.experienceOrg1Role,
              years: DataValues.experienceOrg1Years,
              values: DataValues.experienceOrg1Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'infusible.png',
              title: DataValues.experienceOrg2Title,
              role: DataValues.experienceOrg2Role,
              years: DataValues.experienceOrg2Years,
              values: DataValues.experienceOrg2Vales,
              message: DataValues.infusibleCoderUrl.toString(),
              url: DataValues.infusibleCoderUrl,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 40.0),
            ContainerCard().type3(
              image: 'sponjobs.png',
              title: DataValues.sponJobs,
              role: DataValues.sponJobsRole,
              years: DataValues.sponJobsYears,
              values: DataValues.experienceOrg2,
              message: DataValues.sponJobUrl.toString(),
              url: DataValues.sponJobUrl,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 40.0),
            ContainerCard().type3(
              image: 'dotCoder.jpeg',
              title: DataValues.dotCoder,
              role: DataValues.dotCoderRole,
              years: DataValues.dotYear,
              values: DataValues.dotExp,
              message: DataValues.dotUrl.toString(),
              url: DataValues.dotUrl,
              isButtonEnabled: true,
            ),

          ],
        ),
      ),
    );
  }
}
