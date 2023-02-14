import 'dart:async';
import 'dart:html';

import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

import 'modal_panel.dart';

ModalController modalController = ModalController();

class ModalController {
  ModalPanel modalPanel = ModalPanel();

  StreamController<MouseEvent> _onClick = StreamController<MouseEvent>.broadcast();

  Stream<MouseEvent> get onClick => _onClick.stream;

  void init({String selector = 'body'}) {
    querySelector(selector)!.children.add(modalPanel.element);
  }

  void fireModalClick(MouseEvent event) {
    _onClick.sink.add(event);
  }

  void showModal(Component component, {double? opacity, int? left, int? top}) {
    onClick.listen((event) {
      close();
    });
    component.element.style.position = 'absolute';
    if (opacity != null) {
      modalPanel.element.style.opacity = opacity.toString();
    } else {
      modalPanel.element.style.opacity = '';
    }
    if (left != null) {
      component.element.style.left = '${left}px';
    } else {
      component.element.style.left = '';
    }
    if (top != null) {
      component.element.style.top = '${top}px';
    } else {
      component.element.style.top = '';
    }
    modalPanel
      ..clear()
      ..add(component)
      ..visible = true;
  }

  void close() {
    _onClick.close();
    _onClick = StreamController<MouseEvent>.broadcast();
    modalPanel.visible = false;
  }
}
