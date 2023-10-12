import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS3Education extends StatelessWidget {
  const DS3Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.educationKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.educationTitle,
                description: DataValues.educationDescription),
            Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ContainerCard().type2(
                    image: 'mms',
                    title: DataValues.educationOrg1Title,
                    values: [
                      DataValues.educationOrg1Course1Name,
                      DataValues.educationOrg1Course1Grade,
                      DataValues.educationOrg1Course1Year,
                      DataValues.educationOrg1Course2Name,
                      DataValues.educationOrg1Course2Grade,
                      DataValues.educationOrg1Course2Year,
                      DataValues.educationOrg1Course3Name,
                      DataValues.educationOrg1Course3Year,
                      DataValues.educationOrg1Course3Year2,
                    ],
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ContainerCard().type2(
                    image: 'khyber',
                    title: DataValues.khyberInterCollege,
                    values: [
                      DataValues.khyberEdu,
                      DataValues.educationOrg2Course1Grade,
                      DataValues.khyberYear,
                      DataValues.educationOrg2Course2Name,
                      DataValues.educationOrg2Course2Grade,
                      DataValues.educationOrg2Course2Year,

                      DataValues.educationOrg2Course3Year,
                    ],
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ContainerCard().type2(
                    image: 'nibm',
                    title: DataValues.educationOrg2Title,
                    values: [
                      DataValues.educationOrg2Course1Name,
                      DataValues.educationOrg2Course1Grade,
                      DataValues.educationOrg2Course1Year,
                      DataValues.educationOrg2Course2Name,
                      DataValues.educationOrg2Course2Grade,
                      DataValues.educationOrg2Course2Year,

                      DataValues.educationOrg2Course3Year,
                    ],
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
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
