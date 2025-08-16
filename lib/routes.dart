import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/record_page.dart';
import 'pages/trend_page.dart';
import 'pages/reminder_page.dart';
import 'pages/game_page.dart';
import 'pages/emergency_page.dart';
import 'pages/family_overview.dart';
import 'pages/history_page.dart';
import 'pages/notification_page.dart';
import 'pages/settings_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const DashboardPage(),
  '/record': (context) => const RecordPage(),
  '/trend': (context) => const TrendPage(),
  '/reminder': (context) => const ReminderPage(),
  '/game': (context) => const GamePage(),
  '/emergency': (context) => const EmergencyPage(),
  '/family': (context) => const FamilyOverviewPage(),
  '/history': (context) => const HistoryPage(),
  '/notification': (context) => const NotificationPage(),
  '/settings': (context) => const SettingsPage(),
};
