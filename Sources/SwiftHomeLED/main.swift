import Foundation
import SwiftyGPIO
let gpios = SwiftyGPIO.GPIOs(for: .RaspberryPi4)
let ledGpio = gpios[.P16]!
ledGpio.direction = .OUT

while(true) {
    Thread.sleep(forTimeInterval: 0.2)
    ledGpio.value = ledGpio.value == 0 ? 1 : 0  // If 1, LED will turn on. If 0, LED will turn off.
}
