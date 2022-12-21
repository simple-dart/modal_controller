import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

import '../simple_dart_modal_controller.dart';

class ModalPanel extends PanelComponent {
  ModalPanel() : super('ModalPanel') {
    visible = false;
    hAlign = Align.center;
    vAlign = Align.center;
    vertical = true;
    element.onClick.listen((e) {
      if (e.target == element) {
        modalController.fireModalClick(e);
      }
    });
  }
}
