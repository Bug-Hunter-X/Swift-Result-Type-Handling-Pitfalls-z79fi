func fetchData(completion: @escaping (Result<[Data], Error>) -> Void) {
    // ... network request code ...
    if let error = error {
        completion(.failure(error))
    } else if let data = data {
        completion(.success(data))
    }
}