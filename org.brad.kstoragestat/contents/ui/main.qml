import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.components as PlasmaComponents
import org.kde.ksysguard.sensors as Sensors

PlasmoidItem {
    id: root

    width: 150
    height: 50

    fullRepresentation: RowLayout {
        anchors.fill: parent
        spacing: 5

        PlasmaComponents.Label {
            text: "Home Free:"
            font.bold: true
        }

        // Target the specific mount point sensor for /home
        Sensors.Sensor {
            id: diskSensor
            // Explicitly targeting the /home mount point sensor
            sensorId: "disk/home/free" 
            
            // Fallback alternative if your system nests home under root partition:
            // sensorId: "disk/root/free" 
        }

        PlasmaComponents.Label {
            text: diskSensor.formattedValue ? diskSensor.formattedValue : "Loading..."
        }
    }
}
