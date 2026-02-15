import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final bool isLoggedIn;
  final String? userName;
  final Function(String) onLogin;
  final VoidCallback onLogout;

  const ProfileScreen({
    super.key,
    required this.isLoggedIn,
    this.userName,
    required this.onLogin,
    required this.onLogout,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkMode = false;
  bool notificationsEnabled = true;

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Store"),
        centerTitle: true,
        backgroundColor: Colors.orange.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Icon(Icons.account_circle, size: 80, color: Colors.orangeAccent),
            const SizedBox(height: 10),
            Text(
              widget.isLoggedIn ? "Welcome, ${widget.userName}!" : "Welcome!",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            if (!widget.isLoggedIn) ...[
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],

            const Divider(),
            SwitchListTile(
              title: const Text("Dark Mode"),
              secondary: const Icon(Icons.dark_mode),
              value: isDarkMode,
              onChanged: (value) {
                setState(() => isDarkMode = value);
              },
            ),
            SwitchListTile(
              title: const Text("Notifications"),
              secondary: const Icon(Icons.notifications),
              value: notificationsEnabled,
              onChanged: (value) {
                setState(() => notificationsEnabled = value);
              },
            ),
            const Divider(),
            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.isLoggedIn ? Colors.red : Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (widget.isLoggedIn) {
                    widget.onLogout();
                  } else {
                    if (_emailController.text.isNotEmpty) {
                      widget.onLogin(_emailController.text);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Please enter your name")),
                      );
                    }
                  }
                },
                child: Text(
                  widget.isLoggedIn ? "Logout" : "Login and Continue",
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}