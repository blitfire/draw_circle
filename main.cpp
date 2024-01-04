#include <iostream>
#include "Display.h"
#include "Circle.h"

const float BACKGROUND_COLOUR[3] = {0.0f, 0.0f, 0.0f};

int main() {
    Display screen {300, 300};

    float testCentre[2] = {0.0f, 0.0f};
    float testColour[3] = {0.3f, 0.1f, 0.7f};
    Circle test {testCentre, 0.5f, testColour};

    while (screen.isOpen()) {
        Display::fill(BACKGROUND_COLOUR);
        test.draw();
        screen.update();
    }
    return 0;
}
