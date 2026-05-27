import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.components as PlasmaComponents
import org.kde.ksysguard.sensors as Sensors

PlasmoidItem {
    id: root

    // Set size constraints for the widget
    width: 150
    height: 50

    fullRepresentation: RowLayout {
        anchors.fill: parent
        spacing: 5

        PlasmaComponents.Label {
            text: "Free Space:"
            font.bold: true
        }

        Sensors.Sensor {
            id: diskSensor
            sensorId: "disk/home/free" 
        }

        PlasmaComponents.Label {
            text: diskSensor.formattedValue
        }
    }
}
