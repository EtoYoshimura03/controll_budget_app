// ignore: file_names
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  // final List<ListTileData> one = [
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ListTileData(Icons.radar, 'Другое', 'Операция'),
  // ];
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Анализ финасов'),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 93, 47, 221),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
              child: Center(
                  child: Text('Категории',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            SizedBox(
              height: 400,
              child: ListView(shrinkWrap: true, children: const [
                _OperTile(
                    icon: Icons.extension,
                    title: 'Игры',
                    subtitle: '1 операция'),
                _OperTile(
                    icon: Icons.event_available,
                    title: 'Подписки',
                    subtitle: '1 операция'),
                _OperTile(
                    icon: Icons.checkroom,
                    title: 'Одежда и аксессуары',
                    subtitle: '1 операция'),
                _OperTile(
                    icon: Icons.store,
                    title: 'Продукты',
                    subtitle: '1 операция'),
                _OperTile(
                    icon: Icons.home,
                    title: 'ЖКХ, связь, интернет',
                    subtitle: '1 операция'),
                _OperTile(
                    icon: Icons.restaurant,
                    title: 'Рестораны и кафе',
                    subtitle: '1 операция'),
                _OperTile(
                    icon: Icons.bus_alert,
                    title: 'Транспорт',
                    subtitle: '1 операция'),
                _OperTile(
                    icon: Icons.currency_ruble,
                    title: 'Другое',
                    subtitle: '1 операция'),
              ]),
            ),
            Container(
              height: 163.42,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class _OperTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const _OperTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      leading: CircleAvatar(
        backgroundColor: Colors.deepOrange,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.white38,
        ),
      ),
      textColor: Colors.white,
      trailing: const Text('amount ₽'),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Введите сумму'),
                content: TextField(
                  onChanged: (String value) {
                    // ___ = value; Добавить метод
                  },
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        // Добавление в ДБ
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Добавить',
                        style: TextStyle(color: Colors.deepOrangeAccent),
                      ))
                ],
              );
            });
      },
    );
  }
}
