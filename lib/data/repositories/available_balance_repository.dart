import '../services/mock_service.dart';

class AvailableBalanceRepository {
  final MockService mockService;

  AvailableBalanceRepository(this.mockService);

  Stream<List<double>> getNumbers() {
    return mockService.getStreamItems();
  }
}

//future maybe: usare l'annotazione @riverpod così potrà essere direttamente consumato da un ConsumerWidget tramite ref.watch(qualcosaProvider);
