// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  const Category(this.name, this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Container(
      child: InkWell(
        highlightColor: this.color,
        onTap: () {print('tapped');},
        child: Row(
          children: <Widget>[
            Icon(
              this.icon,
              size: 60.0,
            ),
            Text(
              this.name,
              style: TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
