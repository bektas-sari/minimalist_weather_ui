import 'package:flutter/material.dart';

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  String _selectedCity = 'İstanbul';

  final Map<String, Map<String, dynamic>> fakeWeatherData = {
    'İstanbul': {
      'icon': Icons.wb_sunny,
      'desc': 'Güneşli',
      'temp': '25°C',
      'color': Colors.orange,
    },
    'Ankara': {
      'icon': Icons.cloud,
      'desc': 'Bulutlu',
      'temp': '18°C',
      'color': Colors.grey,
    },
    'İzmir': {
      'icon': Icons.wb_cloudy,
      'desc': 'Parçalı Bulutlu',
      'temp': '22°C',
      'color': Colors.blueGrey,
    },
    'Antalya': {
      'icon': Icons.wb_sunny_outlined,
      'desc': 'Sıcak',
      'temp': '30°C',
      'color': Colors.deepOrange,
    },
  };

  @override
  Widget build(BuildContext context) {
    final data = fakeWeatherData[_selectedCity]!;

    return Scaffold(
      body: Stack(
        children: [
          // Arka plan görseli
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/weather_bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Saydam üst katman
          Container(color: Colors.black.withOpacity(0.4)),
          // İçerik
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white.withOpacity(0.85),
                width: 300,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(data['icon'], size: 64, color: data['color']),
                    const SizedBox(height: 10),
                    DropdownButton<String>(
                      value: _selectedCity,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      underline: Container(height: 2, color: Colors.blueAccent),
                      onChanged: (String? newCity) {
                        setState(() {
                          _selectedCity = newCity!;
                        });
                      },
                      items:
                          fakeWeatherData.keys.map<DropdownMenuItem<String>>((
                            String city,
                          ) {
                            return DropdownMenuItem<String>(
                              value: city,
                              child: Text(city),
                            );
                          }).toList(),
                    ),
                    const SizedBox(height: 10),
                    Text(data['desc'], style: const TextStyle(fontSize: 20)),
                    Text(
                      data['temp'],
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
