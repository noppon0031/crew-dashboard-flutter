// ignore_for_file: await_only_futures

import 'package:dashboard_application_by_noppon/controller/dashboard_controller.dart';
import 'package:dashboard_application_by_noppon/widgets/bottom_nav.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/card/roster_card.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/card/sign_on_card.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/loading/airplane_loading.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/loading/airplane_refresh.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/header/header_section.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/header/home_quick_actions_section.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/duty_scetion/today_duties_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final controller = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFFF6F7F9),
      extendBodyBehindAppBar: true,
      body: Obx(() {
        if (controller.isLoading.value) {
          return const AirplaneLoading();
        }

        if (controller.error.isNotEmpty) {
          return Center(child: Text(controller.error.value));
        }

        final data = controller.dashboardData!;

        return Column(
          children: [
            HeaderSection(
              notificationCount: data.notificationsCount,
              dateLabel: data.todayDuty.date,
              crewRole: data.todayDuty.crew.role,
              crewName: data.todayDuty.crew.name,
              staffId: data.todayDuty.crew.staffId,
            ),
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  CupertinoSliverRefreshControl(
                    refreshTriggerPullDistance: 130,
                    refreshIndicatorExtent: 130,
                    onRefresh: () async {
                      await Future.delayed(const Duration(milliseconds: 800));
                      await controller.loadDashboard();
                    },
                    builder:
                        (
                          context,
                          refreshState,
                          pulledExtent,
                          refreshTriggerPullDistance,
                          refreshIndicatorExtent,
                        ) {
                          return AirplaneRefresh(pulledExtent: pulledExtent);
                        },
                  ),

                  SliverToBoxAdapter(
                    child: HomeQuickActionsSection(
                      notificationCount: data.notificationsCount,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: TodayDutiesSection(
                      todayDuty: data.todayDuty,
                      upcomingDuties: data.upcomingDuties,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Transform.translate(
                      offset: const Offset(0, -72),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 120,
                        ),
                        child: Row(
                          children: const [
                            Expanded(child: RosterCard()),
                            SizedBox(width: 12),
                            Expanded(child: SignOnCard()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
      bottomNavigationBar: const DashboardBottomNav(),
    );
  }
}
