# ModalController

Read in other languages: [English](README.md), [Русский](README.ru.md).

## Description

ModalPanel - a component for displaying modal windows.

ModalController - controller is control ModalPanel. Like all controllers, it is created and initialized during
application start. Called via the modalController global variable.

## Usage

When initialized, it is added to the page in the body tag. When the showComponentModal(Component) method is called, it
is displayed on the page.

## Example

```   
    modalController.init();
    Dialog dialog  = ...;
    modalController.showComponentModal(dialog);
```

