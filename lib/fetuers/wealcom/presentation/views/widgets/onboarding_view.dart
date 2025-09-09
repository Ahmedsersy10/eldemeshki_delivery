import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': AssetsData.findFood1,
      'title': 'Find Food You Love',
      'subtitle': 'Discover the best foods from over 1,000 restaurants...',
    },
    {
      'image': AssetsData.deliveryVector2,
      'title': 'Fast Delivery',
      'subtitle': 'Fast food delivery to your home, office wherever you are',
    },
    {
      'image': AssetsData.liveTracking3,
      'title': 'Live Tracking',
      'subtitle': 'Real time tracking of your food once you placed the order',
    },
  ];

  void _completeOnboarding() async {
     final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_seen', true);
    context.go(AppRouter.kWelcomView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (index) => setState(() => _currentIndex = index),
              itemBuilder: (context, index) {
                final data = onboardingData[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: _completeOnboarding,
                          child: Container(
                            padding: Styels.padding24.copyWith(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Text('Skip', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Image.asset(data['image']!, height: 300),
                      const SizedBox(height: 32),
                      Text(
                        data['title']!,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        data['subtitle']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(onboardingData.length, (index) {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: _currentIndex == index ? 12 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: _currentIndex == index ? Colors.deepOrange : Colors.grey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              onPressed: () {
                if (_currentIndex == onboardingData.length - 1) {
                  _completeOnboarding();
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Text(
                _currentIndex == onboardingData.length - 1 ? 'Get Started' : 'Next',
                style: Styels.textStyle18.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
