# ModalController

Читать на других языках: [English](README.md), [Русский](README.ru.md).

## Описание

ModalPanel - компонент для отображения модальных окон.

ModalController - контроллер для управления ModalPanel. Как и все контроллеры создаётся и инициализируется во время
старта приложения. Вызывается через глобальную переменную modalController.

## Использование

При инициализации добавляется на страницу в тег body. При вызове метода showComponentModal(Component) отображается на
странице.

## Пример

```   
    modalController.init();
    Dialog dialog  = ...;
    modalController.showComponentModal(dialog);
```

