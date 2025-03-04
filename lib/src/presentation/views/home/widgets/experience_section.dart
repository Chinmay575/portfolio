import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:portfolio/src/domain/models/experience.dart';
import 'package:timeline_list/timeline_list.dart';

class ExperienceSection extends StatelessWidget {
  ExperienceSection({super.key});

  final List<Experience> experiences = [
    Experience(
      role: "B.Tech",
      organization: "Gurukul Kangri",
      range: DateTimeRange(
        start: DateTime(2020),
        end: DateTime(2024),
      ),
      description: "",
    ),
    Experience(
      role: "Flutter Trainee",
      organization: "Isourse Technologies",
      range: DateTimeRange(
        start: DateTime(2024, 05, 27),
        end: DateTime(2024, 11, 27),
      ),
      description: "",
    ),
    Experience(
      role: "Flutter Developer",
      organization: "Isourse Technologies",
      range: DateTimeRange(
        start: DateTime(2024, 11, 27),
        end: DateTime.now(),
      ),
      isCurrent: true,
      description: "",
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, size) {
        // print(size);
        return Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: (size.maxWidth < 1000) ? 50 : 100,
                vertical: 10,
              ),
              child: NeuContainer(
                height: 100,
                width: double.maxFinite,
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade800,
                child: Center(
                  child: Text(
                    "Journey",
                    style: GoogleFonts.poppins(
                      fontSize: 50,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: (size.maxWidth < 1000) ? 50 : 100,
                vertical: 10,
              ),
              child: (size.maxWidth < 650)
                  ? ListView.separated(
                      separatorBuilder: (_, i) => const SizedBox(
                        height: 20,
                        width: 20,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: experiences.length,
                      shrinkWrap: true,
                      itemBuilder: (_, i) {
                        Experience experience = experiences[i];
                        return NeuCard(
                          cardHeight: 200,
                          cardWidth: 400,
                          borderRadius: BorderRadius.circular(10),
                          cardColor: Colors.grey.shade800,
                          paddingData: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                experience.role,
                                style: GoogleFonts.poppins(
                                  fontSize: (size.maxWidth < 500) ? 20 : 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                experience.organization,
                                style: GoogleFonts.poppins(
                                  fontSize: (size.maxWidth < 500) ? 15 : 20,
                                  fontWeight: FontWeight.w400,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                "${DateFormat("MMM yyyy").format(experience.range.start)} - ${experience.range.end.isSameDate(DateTime.now()) ? "Present" : DateFormat("MMM yyyy").format(experience.range.end)}",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                experience.range.duration.inDays.toXp(),
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                softWrap: true,
                              )
                            ],
                          ),
                        );
                      },
                    )
                  : Timeline.builder(
                      context: context,
                      markerCount: experiences.length,
                      markerBuilder: (_, i) {
                        Experience experience = experiences[i];
                        return Marker(
                          position: (size.maxWidth < 1000)
                              ? MarkerPosition.left
                              : (i % 2 == 0)
                                  ? MarkerPosition.right
                                  : MarkerPosition.left,
                          icon: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                DateFormat("yyyy")
                                    .format(experience.range.start),
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          iconAlignment: MarkerIconAlignment.center,
                          child: NeuCard(
                            cardHeight: 200,
                            cardWidth: 400,
                            borderRadius: BorderRadius.circular(10),
                            cardColor: Colors.grey.shade800,
                            paddingData: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  experience.role,
                                  style: GoogleFonts.poppins(
                                    fontSize: (size.maxWidth < 500) ? 20 : 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  softWrap: true,
                                ),
                                Text(
                                  experience.organization,
                                  style: GoogleFonts.poppins(
                                    fontSize: (size.maxWidth < 500) ? 15 : 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  softWrap: true,
                                ),
                                Text(
                                  "${DateFormat("MMM yyyy").format(experience.range.start)} - ${experience.range.end.isSameDate(DateTime.now()) ? "Present" : DateFormat("MMM yyyy").format(experience.range.end)}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  softWrap: true,
                                ),
                                Text(
                                  experience.range.duration.inDays.toXp(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  softWrap: true,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      properties: TimelineProperties(
                        iconSize: 100,
                        iconAlignment: MarkerIconAlignment.center,
                        lineWidth: 10,
                        markerGap: 100,
                        lineColor: Colors.white,
                        timelinePosition: (size.maxWidth < 1000)
                            ? TimelinePosition.start
                            : TimelinePosition.center,
                      ),
                      shrinkWrap: true,
                    ),
            ),
          ],
        );
      },
    );
  }
}

extension DaysConverter on int {
  String toXp() {
    const int daysInYear = 365;
    const int daysInMonth = 30; // Approximate value

    int years = this ~/ daysInYear;
    int remainingDays = this % daysInYear;
    int months = remainingDays ~/ daysInMonth;

    List<String> parts = [];

    if (years > 0) parts.add("$years year${years > 1 ? 's' : ''}");
    if (months > 0) parts.add("$months month${months > 1 ? 's' : ''}");

    return parts.join(", ");
  }
}

extension DateOnlyCompare on DateTime {
  /// Compares only the day, month, and year of two DateTime objects.
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
