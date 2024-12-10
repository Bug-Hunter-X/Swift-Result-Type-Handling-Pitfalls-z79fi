func fetchData(completion: @escaping (Result<[Data], Error>) -> Void) {
    // ... network request code ...
    if let error = error {
        completion(.failure(error))
    } else {
        if let data = data {
            completion(.success(data))
        } else {
            completion(.failure(NSError(domain: "com.example.app", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received."]))) 
        }
    }
}

//More robust error handling is recommended for real applications, perhaps via a custom error type.