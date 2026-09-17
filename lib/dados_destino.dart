Map<String, dynamic> buscarDestino(String cidade) {
  if (cidade == 'Curitiba') {
    return {
      'cidade': 'Curitiba',
      'estado': 'Paraná - Brasil',
      'desc': 'Curitiba reúne parques, jardins e atrações culturais '
          'em uma cidade conhecida pela organização e pelas áreas verdes. '
          'Entre os destaques estão o Jardim Botânico, o Parque Tanguá, '
          'a Ópera de Arame e o Museu Oscar Niemeyer.',
      'img': 'assets/images/curitiba.jpg',
      'clima': 'Ameno',
      'melhor_epoca': 'Mar a Mai',
      'tempo_medio': '2 a 3 dias',

      'atracoes': [
        'Jardim Botânico',
        'Ópera de Arame',
        'Parque Tanguá',
        'Museu Oscar Niemeyer',
      ],
    };
  } 
  
  else if (cidade == 'Florianópolis') {
    return {
      'cidade': 'Florianópolis',
      'estado': 'Santa Catarina - Brasil',
      'desc': 'Florianópolis combina praias, natureza e cultura em uma cidade '
          'formada por uma ilha e uma parte continental. O destino é conhecido '
          'pelas belas praias, trilhas e paisagens naturais.',
      'img': 'assets/images/florianopolis.jpg',
      'clima': 'Subtropical',
      'melhor_epoca': 'Dez a Mar',
      'tempo_medio': '3 a 5 dias',

      'atracoes': [
        'Praia da Joaquina',
        'Praia dos Ingleses',
        'Lagoa da Conceição',
        'Mercado Público',
      ],
    };
  } 
  
  else if (cidade == 'Campos do Jordão') {
    return {
      'cidade': 'Campos do Jordão',
      'estado': 'São Paulo - Brasil',
      'desc': 'Campos do Jordão é um destino conhecido pelo clima frio '
          'e pelas paisagens da Serra da Mantiqueira. '
          'A cidade oferece parques e atrações para diferentes épocas do ano.',
      'img': 'assets/images/campos_do_jordao.jpg',
      'clima': 'Frio',
      'melhor_epoca': 'Jun a Ago',
      'tempo_medio': '2 a 3 dias',

      'atracoes': [
        'Morro do Elefante',
        'Parque Amantikir',
        'Horto Florestal',
        'Vila Capivari',
      ],
    };
  }

  return {
    'cidade': 'Destino não encontrado',
    'estado': '',
    'desc': '',
    'img': '',
    'clima': '',
    'melhor_epoca': '',
    'tempo_medio': '',
    'atracoes': [],
  };
}