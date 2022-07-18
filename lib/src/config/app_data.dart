import 'package:app_loja_virtual/src/models/item_model.dart';

const tshirtUrl = 'assets/images/products/tshirts/';
ItemModel britishSteel = ItemModel(
    description:
        'British Steel é o sexto álbum de estúdio da banda de Heavy Metal britânica Judas Priest. Nos Estados Unidos, foram premiados com disco de ouro pela RIAA em 1982, e com disco de platina em 1989. Em 2017, foi eleito o 3º melhor álbum de metal de todos os tempos pela revista Rolling Stone.',
    imgUrl: '${tshirtUrl}jp_british_steel.jpg',
    itemName: 'Camiseta Judas Priest - British Steel',
    itemType: categories[1],
    price: 69.90);

ItemModel firepower = ItemModel(
    description:
        'Camiseta manga curta na cor preta, gola careca, malha 100% algodão 30.1 penteado com estampa em serigrafia.',
    imgUrl: '${tshirtUrl}jp_firepower.jpg',
    itemName: 'Camiseta Judas Priest - Firepower',
    itemType: categories[1],
    price: 69.90);

ItemModel peaceSells = ItemModel(
    description:
        'Camiseta manga curta na cor preta, gola careca, malha 100% algodão 30.1 penteado com estampa em serigrafia.',
    imgUrl: '${tshirtUrl}megadeth_peace_sells.jpg',
    itemName: 'Camiseta Megadeth - Peace Sells',
    itemType: categories[1],
    price: 69.90);

ItemModel rustInPiece = ItemModel(
    description:
        'Camiseta manga curta na cor preta, gola careca, malha 100% algodão 30.1 penteado com estampa em serigrafia.',
    imgUrl: '${tshirtUrl}megadeth_rust_in_piece.jpg',
    itemName: 'Camiseta Megadeth - Rust in Peace',
    itemType: categories[1],
    price: 69.90);

List<ItemModel> items = [
  britishSteel,
  firepower,
  rustInPiece,
  peaceSells,
];

List<String> categories = [
  'Tudo',
  'Camisetas',
  'Albums',
  'LPs',
  'Acessórios',
];
