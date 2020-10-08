

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class LoadingProgressProvider with ChangeNotifier, DiagnosticableTreeMixin {
  bool _loadingProgress = false;
  bool get loadingProgress => _loadingProgress;

  void startLoadingProgress() {
    _loadingProgress = true;
    notifyListeners();
  }

  void stopLoadingProgress() {
    _loadingProgress = false;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add( MessageProperty('count', loadingProgress.toString()));
  }
}
