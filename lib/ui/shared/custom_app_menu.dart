import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints) => (constraints.maxWidth >= 520)
            ? _TabletDesktopMenu()
            : _MobileMenu());
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              color: Colors.black,
              onPressed: () {
                //Navigator.pushNamed(context, '/stateful');
                //navigationService.navigateTo('/stateful');
                locator<NavigationService>().navigateTo('/stateful');
              }),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador con Provider',
            onPressed: () {
              //Navigator.pushNamed(context, '/provider');
              //navigationService.navigateTo('/provider');
              locator<NavigationService>().navigateTo('/provider');
            },
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: () {
              //Navigator.pushNamed(context, '/cualquiera');
              //navigationService.navigateTo('/cualquiera');
              locator<NavigationService>().navigateTo('/cualquiera');
            },
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              color: Colors.black,
              onPressed: () {
                //Navigator.pushNamed(context, '/stateful');
                //navigationService.navigateTo('/stateful');
                locator<NavigationService>().navigateTo('/stateful');
              }),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador con Provider',
            onPressed: () {
              //Navigator.pushNamed(context, '/provider');
              //navigationService.navigateTo('/provider');
              locator<NavigationService>().navigateTo('/provider');
            },
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: () {
              //Navigator.pushNamed(context, '/cualquiera');
              //navigationService.navigateTo('/cualquiera');
              locator<NavigationService>().navigateTo('/cualquiera');
            },
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
