import 'package:flutter/material.dart';
import '../models/sneaker.dart';
import '../widgets/sneaker_card.dart';
import 'sneaker_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Sneaker> sneakers = [
    Sneaker(
      id: '1',
      name: 'Мужские кроссовки New Balance 2002R',
      brand: 'New Balance',
      imagePath: 'assets/images/nb2002.jpg',
      price: 100.0,
      description: 'Модель New Balance 2002R доказывает, что «классика» может быть удобной. Верх пары изготовлен из сетчатого текстиля и кожи. Силуэт вдохновлен беговыми кроссовками 2000-х годов. Промежуточная подошва ABZORB и специальная амортизационная вставка на пятке ABZORB SBS создают особый комфорт, смягчая каждый шаг. Подошва Stability Web и N-ergy обеспечивают поддержку свода и отвечают за уверенное сцепление с поверхностью. Настоящая ретро-эстетика, которую можно носить каждый день.',
    ),
    Sneaker(
      id: '2',
      name: 'Кроссовки PUMA Palermo Leather',
      brand: 'Puma',
      imagePath: 'assets/images/puma.jpg',
      price: 200.0,
      description: 'Кроссовки PUMA Palermo Leather дебютировали в 80-х годах, став частью дресс-кода британских болельщиков. Верх модели имеет T-образную конструкцию, дополнен прямой шнуровкой и вставками из натуральной замши для большей мягкости и комфорта. Резиновая подошва с протектором и точкой стабилизации создает надежное сцепление с поверхностью.',
    ),
    Sneaker(
      id: '3',
      name: 'Кроссовки adidas Ozelia',
      brand: 'Adidas',
      imagePath: 'assets/images/ozelia.jpg',
      price: 150.0,
      description: 'Смелый силуэт кроссовок adidas Ozelia, вдохновленный бунтарскими 90-ми, идеально вписывается в современный гардероб. Верх пары создан из текстиля и искусственной кожи. Материал хорошо облегает стопы и пропускает воздух. Шнуровка с разноформатными люверсами обеспечивает плотную посадку. Технология adiPRENE® отвечает за амортизацию, активно поглощая ударные нагрузки и придавая каждому шагу особый комфорт.',
    ),
    Sneaker(
      id: '4',
      name: 'Мужские кроссовки Nike Full Force Lo Cob',
      brand: 'Nike',
      imagePath: 'assets/images/nike.jpg',
      price: 180.0,
      description: 'Кроссовки Nike Full Force Lo Cob отсылают нас к классической модели AF1 с добавлением стиля 80-х и ретро-отстрочкой, которая делает пару актуальной во все времена. Верх модели выполнен из сочетания натуральной и искусственной кожи. Перфорированный мысок создает дополнительную циркуляцию воздуха. Промежуточная подошва из пеноматериала обеспечивает мягкость и отзывчивость каждого шага. Подметка из резины отвечает за надежное сцепление на любой поверхности.',
    ),
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: const Text('Магазин кроссовок')),
      ),
      body: ListView.builder(
        itemCount: sneakers.length,
        itemBuilder: (context, index) {
          return SneakerCard(
            sneaker: sneakers[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SneakerDetailScreen(sneaker: sneakers[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}