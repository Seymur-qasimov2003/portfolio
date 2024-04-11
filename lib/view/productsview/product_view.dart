import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/constants.dart';
import '../../view model/getx_controllers/projects_controller.dart';
import '../../view model/responsive.dart';
import '../projects/components/projects_grid.dart';
import '../projects/components/title_text.dart';


class ProductsView extends StatelessWidget {
  ProductsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Latest', title: 'Prducts Production'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: ProductGrid(
                    crossAxisCount: 3,
                  ),
                  extraLargeScreen: ProductGrid(
                    crossAxisCount: 4,
                  ),
                  largeMobile: ProductGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: ProductGrid(crossAxisCount: 1, ratio: 1.5),
                  tablet: ProductGrid(
                    ratio: 1.4,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
}
