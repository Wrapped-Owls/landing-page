import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/core/models/social.links.dart';
import 'package:wrappedowls_landing_page/core/models/value/people.info.dart';

abstract class PeopleData {
  static final people = <String, PeopleInfo>{
    'Jictyvoo': PeopleInfo(
      name: 'Jictyvoo',
      description: '📜 Graduating in Computer Engineering at the '
          'Universidade Estadual de Feira de Santana (UEFS)\n\n'
          '🔧 Computer technician with focusing on System Development by the '
          'Serviço Nacional de Aprendizagem Industrial (SENAI)',
      image: Image.asset(
        'assets/images/persons/21112095.jpg',
      ),
      links: SocialLinksValue(
        github: 'jictyvoo',
        linkedin: 'jictyvoo',
      ),
    ),
    'IgorGCSS': PeopleInfo(
      name: 'Igor Garcia Costa',
      description:
          'Computer Engineering - UEFS.\n\nI like to draw...sometimes\n\n'
          'Black belt in judo',
      image: Image.asset(
        'assets/images/persons/49907083_310872826226829_979369766030409728_n.jpg',
      ),
      links: SocialLinksValue(
        github: 'IgorGarciaCosta',
        instagram: 'igorgccs',
      ),
    ),
    'Lima.KRT': PeopleInfo(
      name: 'Lucas Silva Lima',
      description: 'Ô, a desilusão. Ô, a decepção',
      image: Image.asset(
        'assets/images/persons/166096347_172860711326908_2531234240470099110_n.jpg',
      ),
      links: SocialLinksValue(
        github: 'lslima13',
        instagram: 'llima.krt',
      ),
    ),
    'Abelarvão': PeopleInfo(
      name: 'Abel Galvão',
      description: 'Graduating in Computer Engineering at the'
          ' Universidade Estadual de Feira de Santana (UEFS)',
      image: Image.asset(
        'assets/images/persons/32915303.jpg',
      ),
      links: SocialLinksValue(
        github: 'argalvao',
        instagram: 'galvao_abel',
      ),
    ),
  };
}
