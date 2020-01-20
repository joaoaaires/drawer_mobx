// class Activator {
//   static createInstance(Type type, [Symbol constructor, List
//       arguments, Map<Symbol, dynamic> namedArguments]) {
//     if (type == null) {
//       throw new ArgumentError("type: $type");
//     }

//     if (constructor == null) {
//       constructor = const Symbol("");
//     }

//     if (arguments == null) {
//       arguments = const [];
//     }

//     var typeMirror = reflectType(type);
//     if (typeMirror is ClassMirror) {
//       return typeMirror.newInstance(constructor, arguments,
//         namedArguments).reflectee;
//     } else {
//       throw new ArgumentError("Cannot create the instance of the type '$type'.");
//     }
//   }
// }
