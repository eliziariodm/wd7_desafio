import 'package:flutter/material.dart';
import 'package:wd7_desafio/app/home/components/responsive_drawer/tile_big.dart';

class DrawerBig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: constraints.maxHeight * 0.2,
                width: constraints.maxWidth,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: Image.asset(
                      'assets/wd7.png',
                    ),
                  ),
                ),
              ),
              TileBig(
                iconConfig: Icons.share,
                textConfig: 'Compartilhar Aplicativo',
                onConfig: () {},
              ),
              Divider(
                color: Colors.black,
              ),
              TileBig(
                iconConfig: Icons.star,
                textConfig: 'Avaliar Aplicativo',
                onConfig: () {},
              ),
              Divider(
                color: Colors.black,
              ),
              TileBig(
                iconConfig: Icons.gavel,
                textConfig: 'Termos de Uso',
                onConfig: () {},
              ),
              Divider(
                color: Colors.black,
              ),
              TileBig(
                iconConfig: Icons.privacy_tip,
                textConfig: 'Política de Privacidade',
                onConfig: () {},
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        );
      },
    );
  }
}
