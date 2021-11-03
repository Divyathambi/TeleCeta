import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/injection.config.dart';

final GetIt getIt = GetIt.instance; 

@InjectableInit(
  initializerName: r'$InitGetIt', 
  preferRelativeImports: true, 
  asExtension: false
)

void configureDependencies() => $InitGetIt(getIt);