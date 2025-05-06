import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvType { dev, prod }

class EnvVariables {
  EnvVariables._();

  static final EnvVariables instance = EnvVariables._();
  String _envType = '';
  Future<void> init(EnvType envType) async {
    switch (envType) {
      case EnvType.dev:
        await dotenv.load(fileName: '.env.dev');
        break;
      case EnvType.prod:
        await dotenv.load(fileName: '.env.prod');
        break;
    }
    _envType = dotenv.get( 'ENV_TYPE');
  }
  String get envType => _envType;
}
