import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IndeksPrestasi extends StatelessWidget {
  const IndeksPrestasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Statistik Indeks Prestasi",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        AspectRatio(
          aspectRatio: 1.7,
          child: Stack(
            children: [
              LineChart(
                _buildLineChart(),
              ),
              const Positioned(
                left: 8,
                bottom: 8,
                child: Text(
                  "Semester",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  LineChartData _buildLineChart() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: true,
        horizontalInterval: 1.0,
        getDrawingHorizontalLine: (value) {
          if (value == 1 || value == 2 || value == 3 || value == 4) {
            return FlLine(
              // ignore: deprecated_member_use
              color: Colors.grey.withOpacity(0.2),
              strokeWidth: 1,
              dashArray: [5, 5],
            );
          }
          return const FlLine(
            color: Colors.transparent,
          );
        },
      ),
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            interval: 1,
            getTitlesWidget: (value, meta) {
              if (value == 0 || value == 1 || value == 2 || value == 2.5 || value == 3 || value == 3.5 || value == 4) {
                return Text(
                  value.toStringAsFixed(2),
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                );
              }
              return Container();
            },
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: (value, meta) {
              if (value >= 1 && value <= 5) {
                return Text(
                  value.toInt().toString(),
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                );
              }
              return Container();
            },
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 1,
      maxX: 5,
      minY: 0,
      maxY: 4.0,
      lineBarsData: [
        LineChartBarData(
          isCurved: true,
          color: Colors.blue,
          barWidth: 4,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                // ignore: deprecated_member_use
                Colors.blue.withOpacity(0.3),
                // ignore: deprecated_member_use
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          dotData: const FlDotData(
            show: false,
          ),
          spots: [
            const FlSpot(1, 2.8),
            const FlSpot(2, 3.0),
            const FlSpot(3, 2.5),
            const FlSpot(4, 2.47),
            const FlSpot(5, 3.21),
          ],
        ),
      ],
    );
  }
}