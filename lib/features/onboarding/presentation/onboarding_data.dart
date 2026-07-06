class OnboardingData {
  final String title;
  final String description;
  final String image;

  const OnboardingData({
    required this.title,
    required this.description,
    required this.image,
  });
}

final List<OnboardingData> onboardingPages = [
  const OnboardingData(
    title: "Study Smarter",
    description:
        "Organize your study sessions, track your progress, and achieve your goals.",
    image: "assets/images/study.png",
  ),
  const OnboardingData(
    title: "Build Powerful Habits",
    description:
        "Small daily habits create extraordinary success every single day.",
    image: "assets/images/habits.png",
  ),
  const OnboardingData(
    title: "Stop Scrolling.\nStart Winning.",
    description:
        "Everything you need to become your best version in one powerful app.",
    image: "assets/images/winning.png",
  ),
];
