import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FTIK USM',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.network(
              'data:image/png;base64,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'),
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: const <Widget>[
              MenuTile(title: 'Beranda'),
              MenuTile(title: 'Tentang Kami'),
              MenuTile(title: 'Program Studi'),
              MenuTile(title: 'Akreditasi'),
              MenuTile(title: 'Berita'),
              MenuTile(title: 'Download'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(
                'data:image/png;base64,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',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'LOGIN',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Lupa Password?',
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(decoration: TextDecoration.underline),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isPressed ? Colors.orangeAccent : Colors.deepOrange),
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Divider(
                      color: Colors.black,
                    ),
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        color: Colors.white,
                        child: Text(
                          'atau',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.grey,
                ),
                label: Text(
                  'Masuk dengan Google',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
                label: Text(
                  'Masuk dengan Facebook',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Belum punya akun? Ayo ',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: 'daftar',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan melakukan login, Anda setuju dengan ',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: 'syarat & ketentuan FTIK USM',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;

  const MenuTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        Icons.navigate_next,
        color: Colors.black,
      ),
    );
  }
}
