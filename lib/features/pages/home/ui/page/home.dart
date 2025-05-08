import 'package:begd/core/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _greeting = '';

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  void _updateGreeting() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) {
      _greeting = 'صباح الخير!';
    } else if (hour >= 12 && hour < 15) {
      _greeting = 'نهارك سعيد!';
    } else if (hour >= 15 && hour < 17) {
      _greeting = 'عصر طيب!';
    } else if (hour >= 17 && hour < 20) {
      _greeting = 'مساء الخير!';
    } else {
      _greeting = 'مساء هادئ!';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' بجد ولا هبد '),
        leading: IconButton(
          onPressed: () {
            HapticFeedback.vibrate();
          },
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedMenu11,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),

        actions: [
          IconButton.filledTonal(
            onPressed: () {},
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedAccountSetting03,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _greeting,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'أمرني .. أساعدك ازاي النهاردة؟',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withAlpha(0x80),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: Constants.padding.w),
                child: Wrap(
                  spacing: 8.w,
                  children: [
                    ActionChip(
                      mouseCursor: SystemMouseCursors.click,
                      avatar: Icon(Icons.group),
                      label: Text(
                        'أكثر الأشخاص هبدآ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.question_answer),
                      label: Text(
                        'أحسن الإجابات',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.calendar_today),
                      label: Text(
                        'أحدث السؤال',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surfaceContainer,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Constants.outBorderRadius),
                      topRight: Radius.circular(Constants.outBorderRadius),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'ماذا تريد أن تعرف؟ أو الصق رابط صورة...',
                ),
              ),
              Container(
                color: Theme.of(context).colorScheme.surfaceContainer,
                padding: EdgeInsets.only(
                  left: Constants.padding.w,
                  right: Constants.padding.w,
                  bottom: Constants.padding.h,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: HugeIcon(
                              icon: HugeIcons.strokeRoundedImage03,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: HugeIcon(
                              icon: HugeIcons.strokeRoundedSettings04,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: HugeIcon(
                            icon: HugeIcons.strokeRoundedMic01,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          onPressed: () {},
                        ),
                        IconButton.filled(
                          icon: HugeIcon(
                            icon: HugeIcons.strokeRoundedSent02,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
