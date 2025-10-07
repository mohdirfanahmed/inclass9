
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'dart:math';

// void main() {
//   runApp(SpookyHalloweenGame());
// }

// class SpookyHalloweenGame extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Spooky Halloween Game',
//       theme: ThemeData.dark(),
//       home: GameScreen(),
//     );
//   }
// }

// class GameScreen extends StatefulWidget {
//   @override
//   _GameScreenState createState() => _GameScreenState();
// }

// class _GameScreenState extends State<GameScreen> with TickerProviderStateMixin {
//   late AudioPlayer _audioPlayer;
//   late AnimationController _controller;
//   bool _hasWon = false;

//   @override
//   void initState() {
//     super.initState();
//     _audioPlayer = AudioPlayer();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 2),
//     )..repeat(reverse: true);
//     _playBackgroundMusic();
//   }

//   // Play background music in a loop
//   void _playBackgroundMusic() async {
//     await _audioPlayer.setReleaseMode(ReleaseMode.loop);
//     await _audioPlayer.play(AssetSource('spooky_halloween.mp3'));
//   }

//   // Play sound effect based on the asset path
//   void _playSoundEffect(String path) async {
//     await _audioPlayer.play(AssetSource(path));
//   }

//   // Handle click events to trigger traps or winning item
//   void _handleClick({bool isTrap = false}) {
//     if (isTrap) {
//       _playSoundEffect('jump_scare.mp3');
//     } else {
//       _playSoundEffect('success.mp3');
//       _showSuccessMessage();
//       setState(() {
//         _hasWon = true;
//       });
//     }
//   }

//   // Show success message when the player wins
//   void _showSuccessMessage() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Text("You Found It!", style: TextStyle(fontSize: 24)),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Close"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Spooky Halloween Game'),
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: Text(
//               _hasWon ? "You Won!" : "Find the hidden item!",
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//           // Spooky ghost that floats
//           Positioned(
//             top: Random().nextDouble() * MediaQuery.of(context).size.height,
//             left: Random().nextDouble() * MediaQuery.of(context).size.width,
//             child: GestureDetector(
//               onTap: () => _handleClick(isTrap: true),
//               child: AnimatedBuilder(
//                 animation: _controller,
//                 builder: (context, child) {
//                   return Transform.translate(
//                     offset: Offset(0, 10 * sin(_controller.value * 2 * pi)),
//                     child: child,
//                   );
//                 },
//                 child: Image.asset('assets/ghost.png', width: 100, height: 100),
//               ),
//             ),
//           ),
//           // Spooky pumpkin (winning item)
//           Positioned(
//             top: Random().nextDouble() * MediaQuery.of(context).size.height,
//             left: Random().nextDouble() * MediaQuery.of(context).size.width,
//             child: GestureDetector(
//               onTap: () => _handleClick(isTrap: false),
//               child: Image.asset('assets/pumpkin.png', width: 100, height: 100),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'dart:math';

// void main() {
//   runApp(SpookyHalloweenGame());
// }

// class SpookyHalloweenGame extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Spooky Halloween Game',
//       theme: ThemeData.dark(),
//       home: GameScreen(),
//     );
//   }
// }

// class GameScreen extends StatefulWidget {
//   @override
//   _GameScreenState createState() => _GameScreenState();
// }

// class _GameScreenState extends State<GameScreen> with TickerProviderStateMixin {
//   late AudioPlayer _audioPlayer;
//   late AnimationController _controllerGhost, _controllerBat, _controllerPumpkin;
//   bool _hasWon = false;

//   @override
//   void initState() {
//     super.initState();
//     _audioPlayer = AudioPlayer();

//     // Create animation controllers for different spooky objects
//     _controllerGhost = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 4),
//     )..repeat(reverse: true);

//     _controllerBat = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 3),
//     )..repeat(reverse: true);

//     _controllerPumpkin = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 5),
//     )..repeat(reverse: true);

//     _playBackgroundMusic(); // Play looping background music
//   }

//   // Play background music in a loop
//   void _playBackgroundMusic() async {
//     await _audioPlayer.setReleaseMode(ReleaseMode.loop);
//     await _audioPlayer.play(AssetSource('spooky_halloween.mp3'));
//   }

//   // Play sound effect based on the asset path
//   void _playSoundEffect(String path) async {
//     await _audioPlayer.play(AssetSource(path));
//   }

//   // Handle click events to trigger traps or winning item
//   void _handleClick({bool isTrap = false}) {
//     if (isTrap) {
//       _playSoundEffect('jump_scare.mp3');
//     } else {
//       _playSoundEffect('success.mp3');
//       _showSuccessMessage();
//       setState(() {
//         _hasWon = true;
//       });
//     }
//   }

//   // Show success message when the player wins
//   void _showSuccessMessage() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Text("You Found It!", style: TextStyle(fontSize: 24)),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Close"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     _controllerGhost.dispose();
//     _controllerBat.dispose();
//     _controllerPumpkin.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Spooky Halloween Game'),
//       ),
//       body: Stack(
//         children: [
//           // Display status message (won or not)
//           Center(
//             child: Text(
//               _hasWon ? "You Won!" : "Find the hidden item!",
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
          
//           // Ghost character (a trap)
//           Positioned(
//             top: Random().nextDouble() * MediaQuery.of(context).size.height,
//             left: Random().nextDouble() * MediaQuery.of(context).size.width,
//             child: GestureDetector(
//               onTap: () => _handleClick(isTrap: true),  // Trap click
//               child: AnimatedBuilder(
//                 animation: _controllerGhost,
//                 builder: (context, child) {
//                   return Transform.translate(
//                     offset: Offset(0, 20 * sin(_controllerGhost.value * 2 * pi)),  // Floating effect
//                     child: child,
//                   );
//                 },
//                 child: Image.asset('assets/ghost.png', width: 100, height: 100),
//               ),
//             ),
//           ),
          
//           // Bat character (a trap)
//           Positioned(
//             top: Random().nextDouble() * MediaQuery.of(context).size.height,
//             left: Random().nextDouble() * MediaQuery.of(context).size.width,
//             child: GestureDetector(
//               onTap: () => _handleClick(isTrap: true),  // Trap click
//               child: AnimatedBuilder(
//                 animation: _controllerBat,
//                 builder: (context, child) {
//                   return Transform.translate(
//                     offset: Offset(0, 15 * sin(_controllerBat.value * 2 * pi)),  // Flying effect
//                     child: child,
//                   );
//                 },
//                 child: Image.asset('assets/bat.png', width: 100, height: 100),
//               ),
//             ),
//           ),
          
//           // Pumpkin character (winning item)
//           Positioned(
//             top: Random().nextDouble() * MediaQuery.of(context).size.height,
//             left: Random().nextDouble() * MediaQuery.of(context).size.width,
//             child: GestureDetector(
//               onTap: () => _handleClick(isTrap: false),  // Winning item
//               child: AnimatedBuilder(
//                 animation: _controllerPumpkin,
//                 builder: (context, child) {
//                   return Transform.translate(
//                     offset: Offset(0, 10 * sin(_controllerPumpkin.value * 2 * pi)),  // Moving effect
//                     child: child,
//                   );
//                 },
//                 child: Image.asset('assets/pumpkin.png', width: 100, height: 100),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Old code

// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'dart:math';

// void main() {
//   runApp(SpookyHalloweenGame());
// }

// class SpookyHalloweenGame extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Spooky Halloween Game',
//       theme: ThemeData.dark(),
//       home: GameScreen(),
//     );
//   }
// }

// class GameScreen extends StatefulWidget {
//   @override
//   _GameScreenState createState() => _GameScreenState();
// }

// class _GameScreenState extends State<GameScreen> with TickerProviderStateMixin {
//   late AudioPlayer _audioPlayer;
//   late AnimationController _controllerGhost, _controllerPumpkin;
//   List<AnimationController> _controllerDuplicates = [];
//   bool _hasWon = false;

//   @override
//   void initState() {
//     super.initState();
//     _audioPlayer = AudioPlayer();

//     // Controller for ghost animation (trap)
//     _controllerGhost = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 4),
//     )..repeat(reverse: true);

//     // Controller for the hidden winning pumpkin item
//     _controllerPumpkin = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 5),
//     )..repeat(reverse: true);

//     // Create controllers for the 5 duplicate items
//     for (int i = 0; i < 5; i++) {
//       _controllerDuplicates.add(AnimationController(
//         vsync: this,
//         duration: Duration(seconds: Random().nextInt(3) + 2),
//       )..repeat(reverse: true));
//     }

//     _playBackgroundMusic(); // Play looping background music
//   }

//   // Play background music in a loop
//   void _playBackgroundMusic() async {
//     await _audioPlayer.setReleaseMode(ReleaseMode.loop);
//     await _audioPlayer.play(AssetSource('spooky_halloween.mp3'));
//   }

//   // Play sound effect based on the asset path
//   void _playSoundEffect(String path) async {
//     await _audioPlayer.play(AssetSource(path));
//   }

//   // Handle click events to trigger traps or winning item
//   void _handleClick({bool isTrap = false}) {
//     if (isTrap) {
//       _playSoundEffect('jump_scare.mp3');
//     } else {
//       _playSoundEffect('success.mp3');
//       _showSuccessMessage();
//       setState(() {
//         _hasWon = true;
//       });
//     }
//   }

//   // Show success message when the player wins
//   void _showSuccessMessage() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Text("You Found It!", style: TextStyle(fontSize: 24)),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Close"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     _controllerGhost.dispose();
//     _controllerPumpkin.dispose();
//     _controllerDuplicates.forEach((controller) => controller.dispose());
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Spooky Halloween Game'),
//       ),
//       body: Stack(
//         children: [
//           // Display status message (won or not)
//           Center(
//             child: Text(
//               _hasWon ? "You Won!" : "Find the hidden item!",
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
          
//           // Ghost character (a trap)
//           _buildMovingItem(
//             controller: _controllerGhost,
//             imagePath: 'assets/ghost.png',
//             glowColor: Colors.blueAccent,
//             isTrap: true,
//           ),
          
//           // Winning pumpkin character
//           _buildMovingItem(
//             controller: _controllerPumpkin,
//             imagePath: 'assets/pumpkin.png',
//             glowColor: Colors.orangeAccent,
//             isTrap: false,  // This is the winning item
//           ),

//           // 5 Duplicate pumpkins (traps)
//           for (int i = 0; i < 5; i++)
//             _buildMovingItem(
//               controller: _controllerDuplicates[i],
//               imagePath: 'assets/pumpkin.png',
//               glowColor: Colors.redAccent,
//               isTrap: true,  // All duplicates are traps
//             ),
//         ],
//       ),
//     );
//   }

//   // Function to create animated moving items with a glow effect
//   Widget _buildMovingItem({
//     required AnimationController controller,
//     required String imagePath,
//     required Color glowColor,
//     required bool isTrap,
//   }) {
//     return Positioned(
//       top: Random().nextDouble() * MediaQuery.of(context).size.height,
//       left: Random().nextDouble() * MediaQuery.of(context).size.width,
//       child: GestureDetector(
//         onTap: () => _handleClick(isTrap: isTrap),
//         child: AnimatedBuilder(
//           animation: controller,
//           builder: (context, child) {
//             return Transform.translate(
//               offset: Offset(0, 20 * sin(controller.value * 2 * pi)),  // Floating effect
//               child: Container(
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: glowColor.withOpacity(0.8),
//                       blurRadius: 20,
//                       spreadRadius: 5,
//                     ),
//                   ],
//                 ),
//                 child: Image.asset(imagePath, width: 100, height: 100),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(SpookyHalloweenGame());
}

class SpookyHalloweenGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spooky Halloween Game',
      theme: ThemeData.dark(),
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> with TickerProviderStateMixin {
  late AudioPlayer _audioPlayer;
  List<AnimationController> _controllerGhosts = [];
  List<AnimationController> _controllerPumpkins = [];
  List<AnimationController> _controllerBats = [];
  bool _hasWon = false;
  int _totalItems = 15;  // Total number of items: 5 ghosts, 5 pumpkins, 5 bats

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    // Create controllers for the 5 ghosts
    for (int i = 0; i < 5; i++) {
      _controllerGhosts.add(AnimationController(
        vsync: this,
        duration: Duration(seconds: Random().nextInt(3) + 2),
      )..repeat(reverse: true));
    }

    // Create controllers for the 5 pumpkins
    for (int i = 0; i < 5; i++) {
      _controllerPumpkins.add(AnimationController(
        vsync: this,
        duration: Duration(seconds: Random().nextInt(3) + 2),
      )..repeat(reverse: true));
    }

    // Create controllers for the 5 bats
    for (int i = 0; i < 5; i++) {
      _controllerBats.add(AnimationController(
        vsync: this,
        duration: Duration(seconds: Random().nextInt(3) + 2),
      )..repeat(reverse: true));
    }

    _playBackgroundMusic(); // Play looping background music
  }

  // Play background music in a loop
  void _playBackgroundMusic() async {
    await _audioPlayer.setReleaseMode(ReleaseMode.loop);
    await _audioPlayer.play(AssetSource('spooky_halloween.mp3'));
  }

  // Play sound effect based on the asset path
  void _playSoundEffect(String path) async {
    await _audioPlayer.play(AssetSource(path));
  }

  // Handle click events to trigger traps or winning item
  void _handleClick({bool isTrap = false}) {
    if (isTrap) {
      _playSoundEffect('jump_scare.mp3');
    } else {
      _playSoundEffect('success.mp3');
      _showSuccessMessage();
      setState(() {
        _hasWon = true;
      });
    }
  }

  // Show success message when the player wins
  void _showSuccessMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text("You Found It!", style: TextStyle(fontSize: 24)),
          actions: <Widget>[
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _controllerGhosts.forEach((controller) => controller.dispose());
    _controllerPumpkins.forEach((controller) => controller.dispose());
    _controllerBats.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spooky Halloween Game'),
      ),
      body: Stack(
        children: [
          // Display status message (won or not)
          Center(
            child: Text(
              _hasWon ? "You Won!" : "Find the hidden item!",
              style: TextStyle(fontSize: 24),
            ),
          ),

          // 5 Ghosts (trap items)
          for (int i = 0; i < 5; i++)
            _buildMovingItem(
              controller: _controllerGhosts[i],
              imagePath: 'assets/ghost.png',
              glowColor: Colors.blueAccent,
              isTrap: true,
            ),

          // 5 Pumpkins (one of them is the hidden item)
          for (int i = 0; i < 5; i++)
            _buildMovingItem(
              controller: _controllerPumpkins[i],
              imagePath: 'assets/pumpkin.png',
              glowColor: Colors.orangeAccent,
              isTrap: i != 2,  // The third pumpkin is the winning item
            ),

          // 5 Bats (trap items)
          for (int i = 0; i < 5; i++)
            _buildMovingItem(
              controller: _controllerBats[i],
              imagePath: 'assets/bat.png',
              glowColor: Colors.purpleAccent,
              isTrap: true,
            ),
        ],
      ),
    );
  }

  // Function to create animated moving items with a glow effect
}
