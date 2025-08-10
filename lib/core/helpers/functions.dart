import 'package:flutter/material.dart';

typedef FromJson<T> = T Function(Map<String, dynamic>);

T parseData<T>(Map<String, dynamic> json, FromJson<T> fromJson) {
  return fromJson(json);
}

Widget buildList<T>({
  required List<T> items,
  required Widget Function(T item) builder,
}) {
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (_, index) => builder(items[index]),
  );
}
