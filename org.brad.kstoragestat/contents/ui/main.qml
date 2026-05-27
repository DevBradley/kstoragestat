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

        // Use a sensor to get the available space of the root partition
        Sensors.Sensor {
            id: diskSensor
            sensorId: "disk/all/free" // Standard sensor for overall free space
        }

        PlasmaComponents.Label {
            text: diskSensor.formattedValue
        }
    }
}
