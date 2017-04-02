motionsensor <- hardware.pin1

function motionDetect() {
    local state = motionsensor.read();
    if (state == 1) {
        // The button is released
        server.log("Motion On");
        agent.send("Motion", "1");
    } else {
        // The button is pressed
        server.log("Motion Off");
        agent.send("Motion", "0");
    }
}

motionsensor.configure(DIGITAL_IN_PULLDOWN, motionDetect);
