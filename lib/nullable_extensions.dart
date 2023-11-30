

/// Adds option like error handling to Dart nullable types.
const String _message = "This function is only included to override the nullable case. The type this was called on "
    "cannot be null. Therefore this usage is not needed, you can safely remove it.";

extension NullableGenerics<T extends Object> on T? {
  T or(T value){
    if(this == null) {
      return value;
    }
    return this!;
  }
}

extension NonNullableGenerics<T extends Object> on T {
  T or(T value){
    assert(false, _message);
    return this;
  }
}

// extension FutureNullableGenerics<T extends Object> on Future<T?> {
//   Future<T> or(T value){
//     return then((e)=> e.or(value));
//   }
// }
//
// extension FutureNonNullableGenerics<T extends Object> on Future<T> {
//   Future<T> or(T value){
//     assert(false, _message);
//     return this;
//   }
// }