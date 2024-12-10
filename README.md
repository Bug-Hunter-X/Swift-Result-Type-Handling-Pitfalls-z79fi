# Swift Result Type Handling Pitfalls

This repository demonstrates a common error when using Swift's `Result` type in asynchronous operations. The example shows how improper handling of the `Result` can lead to unexpected behavior or crashes.  The solution shows how to safely and correctly handle both success and failure cases to prevent this.

**Problem:**  The original `fetchData` function attempts to handle success and failure cases, but it fails to account for the possibility that both `error` and `data` might be nil.  This could lead to unexpected behaviour.

**Solution:** The updated function thoroughly checks for nil values before using them and provides default or error handling in those cases. 