function OnMotionChange(value)
{
    if (value == "1"){
        server.log("Motion on received.");
        local req = http.get("https://agent.electricimp.com/[AGENT ID OF SWITCH]?SwitchON=1");
        req.sendsync();
    } else {
        server.log("Motion off received.");
        local req = http.get("https://agent.electricimp.com/[AGENT ID OF SWITCH]?SwitchON=0");
        req.sendsync();
    }
}

device.on("Motion", OnMotionChange);
