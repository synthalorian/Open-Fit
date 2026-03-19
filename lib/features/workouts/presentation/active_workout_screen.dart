import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/synthwave_theme.dart';
import '../../../ui/widgets/shared_widgets.dart';

class ActiveWorkoutScreen extends ConsumerStatefulWidget {
  const ActiveWorkoutScreen({super.key});

  @override
  ConsumerState<ActiveWorkoutScreen> createState() => _ActiveWorkoutScreenState();
}

class _ActiveWorkoutScreenState extends ConsumerState<ActiveWorkoutScreen> {
  final _stopwatch = Stopwatch();
  late final Stream<Duration> _timerStream;

  @override
  void initState() {
    super.initState();
    _stopwatch.start();
    _timerStream = Stream.periodic(const Duration(seconds: 1), (_) => _stopwatch.elapsed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SynthwaveColors.background,
      appBar: AppBar(
        title: StreamBuilder<Duration>(
          stream: _timerStream,
          builder: (context, snapshot) {
            final duration = snapshot.data ?? Duration.zero;
            return Text(_formatDuration(duration));
          },
        ),
        actions: [
          TextButton(
            onPressed: () => _finishWorkout(context),
            child: const Text('FINISH', style: TextStyle(color: SynthwaveColors.neonGreen)),
          ),
        ],
      ),
      body: Column(
        children: [
          // Workout Title & Stats
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('PUSH DAY', style: SynthwaveTextStyles.displaySmall(context)),
                    Text('Chest, Shoulders, Triceps', style: SynthwaveTextStyles.bodySmall(context)),
                  ],
                ),
                const Icon(Icons.timer_outlined, color: SynthwaveColors.neonPink),
              ],
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: 3, // Dummy count
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => _buildExerciseCard(context, index),
            ),
          ),
          
          // Bottom Controls
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: SynthwaveColors.surface,
              border: const Border(top: BorderSide(color: SynthwaveColors.gridLine)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text('ADD EXERCISE'),
                  ),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: NeonButton(
                    label: 'REST TIMER',
                    icon: Icons.hourglass_empty,
                    color: SynthwaveColors.neonBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseCard(BuildContext context, int index) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bench Press (Barbell)', style: SynthwaveTextStyles.bodyLarge(context).copyWith(color: SynthwaveColors.neonCyan)),
                const Icon(Icons.more_horiz, color: SynthwaveColors.chrome),
              ],
            ),
            const SizedBox(height: 12),
            _buildSetHeader(),
            const Divider(color: SynthwaveColors.gridLine),
            _buildSetRow(1, '80', '10', true),
            _buildSetRow(2, '80', '8', false),
            _buildSetRow(3, '', '', false),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add, size: 16),
              label: const Text('ADD SET'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSetHeader() {
    return Row(
      children: [
        const SizedBox(width: 30, child: Text('SET', style: TextStyle(fontSize: 10, color: Colors.grey))),
        const Expanded(child: Center(child: Text('PREVIOUS', style: TextStyle(fontSize: 10, color: Colors.grey)))),
        const Expanded(child: Center(child: Text('KG', style: TextStyle(fontSize: 10, color: Colors.grey)))),
        const Expanded(child: Center(child: Text('REPS', style: TextStyle(fontSize: 10, color: Colors.grey)))),
        const SizedBox(width: 40),
      ],
    );
  }

  Widget _buildSetRow(int setNum, String kg, String reps, bool isDone) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(width: 30, child: Text('$setNum', style: const TextStyle(fontWeight: FontWeight.bold))),
          const Expanded(child: Center(child: Text('75kg x 10', style: TextStyle(fontSize: 12, color: Colors.grey)))),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 30,
              decoration: BoxDecoration(
                color: SynthwaveColors.surfaceLight,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(child: Text(kg)),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 30,
              decoration: BoxDecoration(
                color: SynthwaveColors.surfaceLight,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(child: Text(reps)),
            ),
          ),
          SizedBox(
            width: 40,
            child: Checkbox(
              value: isDone,
              onChanged: (val) {},
              activeColor: SynthwaveColors.neonGreen,
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    return "${twoDigits(d.inHours)}:$minutes:$seconds";
  }

  void _finishWorkout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('FINISH WORKOUT?'),
        content: const Text('All completed sets will be saved to your history.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Close dialog
              Navigator.pop(context); // Exit active workout
            },
            child: const Text('FINISH'),
          ),
        ],
      ),
    );
  }
}
