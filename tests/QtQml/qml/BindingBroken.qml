import QtQuick 2.5

Item {
  property int targetValue: 0
  property alias sourceValue: sourceItem.value
  property bool when: false

  id: root

  Item {
    property int value: 0
    id: sourceItem
  }

  Binding {
    target: root; property: "targetValue"; when: root.when
  }
}
