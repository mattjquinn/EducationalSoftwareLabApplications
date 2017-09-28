Blockly.Blocks['import_edupy'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("from edupy import *");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(336);
    this.setTooltip('Imports the edupy library.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['for'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("for")
        .appendField(new Blockly.FieldTextInput(""), "item")
        .appendField("in")
        .appendField(new Blockly.FieldTextInput(""), "seq")
        .appendField(":")
    this.appendStatementInput("stmts")
        .setCheck(null);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#3366ff');
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ifequals'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("if")
        .appendField(new Blockly.FieldTextInput("this"), "this")
        .appendField("==")
        .appendField(new Blockly.FieldTextInput("that"), "that");
    this.appendStatementInput("DO")
        .setCheck(null);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#3366ff');
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['importinputs'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("import inputs");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(336);
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['return'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("return")
        .appendField(new Blockly.FieldTextInput(""), "expr");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#e10303');
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['pass'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("pass");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(336);
    this.setTooltip('Pass to the next command');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['df'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldTextInput("fn"), "def")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "args")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#57e3ff');
    this.setTooltip('Trigger a define function');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['import'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("import")
        .appendField(new Blockly.FieldTextInput(""), "libname");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('Imports any library specified.');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ehimport'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("import explorerhat");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(240);
    this.setTooltip('Import the Explorer Hat library');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ehtouch'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("explorerhat.touch.")
        .appendField(new Blockly.FieldDropdown([["one","one"], ["two","two"], ["three","three"], ["four","four"], ["five","five"], ["six","six"], ["seven","seven"], ["eight","eight"]]), "padnumber")
        .appendField(".")
        .appendField(new Blockly.FieldDropdown([["is_pressed","is_pressed"], ["is_held","is_held"], ["pressed","pressed"], ["held","held"], ["released","released"]]), "event")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "bracket")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(240);
    this.setTooltip('Control the eight cap touch buttons on Explorer Hat');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ehinput'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("explorerhat.input.")
        .appendField(new Blockly.FieldDropdown([["one","one"], ["two","two"], ["three","three"], ["four","four"]]), "inputnumber")
        .appendField(".")
        .appendField(new Blockly.FieldDropdown([["read","read"], ["has_changed","has_changed"], ["on_changed","on_changed"], ["on_low","on_low"], ["on_high","on_high"], ["clear_events","clear_events"]]), "inputevent")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "bracketin")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(240);
    this.setTooltip('Control the 4 inputs on Explorer Hat');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ehoutput'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("explorerhat.output.")
        .appendField(new Blockly.FieldDropdown([["one","one"], ["two","two"], ["three","three"], ["four","four"]]), "outputnumber")
        .appendField(".")
        .appendField(new Blockly.FieldDropdown([["on","on"], ["off","off"], ["toggle","toggle"], ["write","write"], ["blink","blink"], ["pulse","pulse"], ["fade","fade"], ["stop","stop"]]), "outputevent")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "bracketout")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(240);
    this.setTooltip('Contol the 4 outputs on Explorer Hat');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ehlights'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("explorerhat.light.")
        .appendField(new Blockly.FieldDropdown([["yellow","yellow"], ["blue","blue"], ["red","red"], ["green","green"]]), "lightnumber")
        .appendField(".")
        .appendField(new Blockly.FieldDropdown([["on","on"], ["off","off"], ["toggle","toggle"], ["write","write"], ["blink","blink"], ["pulse","pulse"], ["fade","fade"], ["stop","stop"]]), "lightevent")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "bracketlight")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(240);
    this.setTooltip('Control the 4 lights on Explorer Hat');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ehanalog'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("explorerhat.analog.")
        .appendField(new Blockly.FieldDropdown([["one","one"], ["two","two"], ["three","three"], ["four","four"]]), "analognumber")
        .appendField(".")
        .appendField(new Blockly.FieldDropdown([["read","read"], ["changed","changed"]]), "analogevent")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "bracketanalog")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(240);
    this.setTooltip('Control the 4 Analog Inputs on Explorer Hat');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['ehmotor'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("explorerhat.motor.")
        .appendField(new Blockly.FieldDropdown([["one","one"], ["two","two"]]), "motornumber")
        .appendField(".")
        .appendField(new Blockly.FieldDropdown([["forwards","forwards"], ["backwards","backwards"], ["invert","invert"], ["speed","speed"], ["stop","stop"]]), "motorevent")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "bracketmotor")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(240);
    this.setTooltip('Control the 2 motor outputs on Explorer Hat');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktimport'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("from blinkt import *");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Import the Blinkt! library.');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktsetpixel'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("set_pixel(")
        .appendField(new Blockly.FieldTextInput("pixelno"), "pixelno")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("r"), "r")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("g"), "g")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("b"), "b")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Set a pixel on the Blinkt!');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktshow'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("show()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Update the Blinkt! to show your code');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktsetbrightness'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("set_brightness(")
        .appendField(new Blockly.FieldTextInput("number"), "number")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Set the brightness of your Blinkt!');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktsetpixelbright'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("set_pixel(")
        .appendField(new Blockly.FieldTextInput("pixelno"), "pixelno")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("r"), "r")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("g"), "g")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("b"), "b")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("brightness"), "bright")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Set a pixel on your Blinkt! with individual brightness control');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktsetallbright'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("set_all(")
        .appendField(new Blockly.FieldTextInput("r"), "r")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("g"), "g")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("b"), "b")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("brightness"), "bright")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Set all the pixels on your Blinkt! with brightness control');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktsetall'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("set_all(")
        .appendField(new Blockly.FieldTextInput("r"), "r")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("g"), "g")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("b"), "b")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Set all the pixels on your Blinkt!');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['blinktclear'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("clear()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(90);
    this.setTooltip('Clear all pixels on your Blinkt!');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['play'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("play(")
        .appendField(new Blockly.FieldTextInput("0"), "value")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
    this.setTooltip('Play a single note');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['sleep1'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sleep(")
        .appendField(new Blockly.FieldTextInput("0"), "value")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
    this.setTooltip('Play a single note');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['import_block'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("from mcpi import block");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(270);
    this.setTooltip('Imports the mcpi block library.');
    this.setHelpUrl('http://www.example.com/');
  }
};



Blockly.Blocks['random'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("import random");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#000000');
    this.setTooltip('Imports the random library.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['build'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("buildPumpkin(")
        .appendField(new Blockly.FieldTextInput("0"), "x")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "y")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['import_math'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("import math");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#000000');
    this.setTooltip('Imports the math library.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['time'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("import time");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#000000');
    this.setTooltip('Imports the time library.');
    this.setHelpUrl('http://www.example.com/');
  }
};


Blockly.Blocks['varstore'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldTextInput(""), "1")
        .appendField("=")
        .appendField(new Blockly.FieldTextInput(""), "2");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['sleep'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("time.sleep(")
        .appendField(new Blockly.FieldTextInput("sekunde"), "sekunde")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('Wait for a given amount of seconds.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['exit'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sys.exit()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('Exit the program.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['led_on'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([["red", "red"], ["yellow", "yellow"], ["green", "green"], ["blue", "blue"]]), "led_colour")
        .appendField("_led_on()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Turns the chosen LED on.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['led_off'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([["red", "red"], ["yellow", "yellow"], ["green", "green"], ["blue", "blue"]]), "led_colour")
        .appendField("_led_off()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Turns the chosen LED off.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['button_pressed'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("button_pressed()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('When the button is pressed do:');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['get_reading'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("get_reading()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Get the distance between the wall and robot.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['stop'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("stop()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Stop the motors.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['forward'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("forward()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Make the robot go forward.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['backward'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("backward()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Make the robot go backward.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['turn_left'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("turn_left()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Turn the robot left.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['turn_right'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("turn_right()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Turn the robot right.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['line_test'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("line_test()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Test the line sensor.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['all_on'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("all_on()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Turn all 3 LEDs on.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['else'] = {
  init: function() {
    this.appendDummyInput()
        .appendField('else:');
    this.appendStatementInput('DO')
        .appendField('');
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour('#3366ff');
    this.setTooltip('Else statement');
    this.setHelpUrl('https://t.co/PCZC5EFe4D');
  }
};

Blockly.Blocks['if'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("if")
        .appendField(new Blockly.FieldTextInput(""), "expr")
        .appendField(":");
    this.appendStatementInput("stmts")
        .appendField("");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true);
    this.setColour('#3366ff');
    this.setTooltip('If Statement.');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['elif'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("elif")
        .appendField(new Blockly.FieldTextInput(""), "expr")
        .appendField(":");
    this.appendStatementInput("stmts")
        .appendField("");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true);
    this.setColour('#3366ff');
    this.setTooltip('Elif Statement.');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['greater'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("while")
        .appendField(new Blockly.FieldTextInput(""), "1")
        .appendField(">")
        .appendField(new Blockly.FieldTextInput(""), "v")
        .appendField(":");
    this.appendStatementInput("DO")
        .appendField('');
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#3366ff');
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['while'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("while")
        .appendField(new Blockly.FieldTextInput(""), "expr")
        .appendField(":");
    this.appendStatementInput("stmts")
        .appendField('');
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#3366ff');
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['def'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("def ")
        .appendField(new Blockly.FieldTextInput(""), "funcname")
        .appendField("(")
        .appendField(new Blockly.FieldTextInput(""), "funcargs")
        .appendField("):");
    this.appendStatementInput("funcbody")
        .setCheck(null);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#e10303');
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['liveloop'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("live_loop_")
        .appendField(new Blockly.FieldDropdown([["1","1"], ["2","2"], ["3","3"], ["4","4"]]), "num");
    this.appendStatementInput("DO")
        .setCheck(null);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
    this.setTooltip('Create a live loop with Sonic Pi');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['all_off'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("all_off()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Turn all 3 LEDs off.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['all_blink'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("all_blink()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Make all 3 LEDs blink.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['button'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("button_test()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Print the button status.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['buzzer'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("buzzer_")
        .appendField(new Blockly.FieldDropdown([["on", "on"], ["off", "off"]]), "NAME")
        .appendField("()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Turns the buzzer on or off');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['blink'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([["red", "red"], ["yellow", "yellow"], ["green", "green"]]), "NAME")
        .appendField("_led_blink()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Make a chosen LED blink');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['user_input'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("user_input()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Blink the LED to  a user given amount. Use the output box.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['key_control'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("key_control()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Control the robot using arrow keys. Use the output box.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['line_follower'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("line_follower()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Follow a line.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['avoid'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("avoid()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
    this.setTooltip('Avoid obstacles.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['2led_on'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([["red", "red"], ["blue", "blue"]]), "led_colour")
        .appendField("_led_on()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Turns the chosen LED on.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['2led_off'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([["red", "red"], ["blue", "blue"]]), "led_colour")
        .appendField("_led_off()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Turns the chosen LED off.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['temperature'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("temperature()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Prints the temperature in °C and °F. Use the output box.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['ldr'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("ldr()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Charges up a capacitor using light. Use output box.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['capacitor'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("capacitor_drain()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Drain the capacitor.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['motion'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("motion_reading()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Get a reading from the motion sensor.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['crossing'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([["green", "green"], ["amber", "amber"], ["red", "red"], ["red amber", "ramber"], ["flash amber", "flamber"], ["beep", "beep"]]), "NAME")
        .appendField("()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Commands to create a traffic light.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['alarm'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("alarm()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Create a motion alarm.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['dot'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("dot()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Dot in morse code.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['dash'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("dash()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Dash in morse code.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['letter'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("letter_space()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Letter space in morse code.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['word'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("word_space()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(196);
    this.setTooltip('Word space in morse code.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['sen'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sen_gui()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(336);
    this.setTooltip('Use this to run the SEN Corntrol GUI.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['mcimport'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("from mcpi.minecraft import Minecraft");
    this.setPreviousStatement(true, null);
    this.setPreviousStatement(false, null);
    this.setNextStatement(true, null);
    this.setColour(270);
    this.setTooltip('Use this to import minecraft.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['mccreate'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc = Minecraft.create()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(270);
    this.setTooltip('Use this to connect to minecraft. ALWAYS REQUIRED.');
    this.setHelpUrl('http://www.example.com/');
  }
};


Blockly.Blocks['mcpostchat'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.postToChat(\"")
        .appendField(new Blockly.FieldTextInput(""), "chat")
        .appendField("\")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to send a message to the Minecraft chat.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['mcsetting'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.world.setting(")
        .appendField(new Blockly.FieldTextInput(""), "key")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput(""), "value")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to change a setting in Minecraft.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['print'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("print(\"")
        .appendField(new Blockly.FieldTextInput(""), "print")
        .appendField("\")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('Use this to print to the output box.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['getpos'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("pos = mc.player.getPos()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this set a variable of the players position.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['gettilepos'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("pos = mc.player.getTilePos()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this set a variable of the players position.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['varprint'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("print(")
        .appendField(new Blockly.FieldTextInput(""), "var")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('Use this to print a variable.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['ifcroc'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("if")
        .appendField(new Blockly.FieldTextInput("this"), "this")
        .appendField(new Blockly.FieldDropdown([[">",">"], ["<","<"]]), "crocsigns")
        .appendField(new Blockly.FieldTextInput("that"), "that")
        .appendField(":");
    this.appendStatementInput("DO")
        .setCheck(null);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#3366ff');
    this.setTooltip('If statement with greater and less than');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['varplus'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldTextInput(""), "lhs")
        .appendField("+=")
        .appendField(new Blockly.FieldTextInput(""), "rhs");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('Increment a variable.');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['varminus'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldTextInput("0"), "1")
        .appendField("-=")
        .appendField(new Blockly.FieldTextInput("0"), "2");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#00cc00');
    this.setTooltip('Decrement a variable.');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['printwall'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("PrintWall(PixelArt(");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "11")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "12")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "13")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "14")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "15")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "16")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "17")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "18")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "21")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "22")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "23")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "24")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "25")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "26")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "27")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "28")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "31")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "32")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "33")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "34")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "35")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "36")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "37")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "38")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "41")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "42")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "43")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "44")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "45")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "46")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "47")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "48")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "51")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "52")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "53")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "54")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "55")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "56")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "57")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "58")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "61")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "62")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "63")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "64")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "65")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "66")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "67")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "68")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "71")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "72")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "73")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "74")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "75")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "76")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "77")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "78")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField(new Blockly.FieldTextInput(""), "81")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "82")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "83")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "84")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "85")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "86")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "87")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput(""), "88")
        .appendField(", ");
    this.appendDummyInput()
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField("))");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['setpos'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.player.setPos(")
        .appendField(new Blockly.FieldNumber(0.0), "x")
        .appendField(",")
        .appendField(new Blockly.FieldNumber(0.0), "y")
        .appendField(",")
        .appendField(new Blockly.FieldNumber(0.0), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to set the players position');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['settilepos'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.player.setTilePos(")
        .appendField(new Blockly.FieldTextInput("x"), "x")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("y"), "y")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("z"), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to set the players position');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['campos'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.camera.setPos(")
        .appendField(new Blockly.FieldNumber(0, 0), "x")
        .appendField(",")
        .appendField(new Blockly.FieldNumber(0, 0), "y")
        .appendField(",")
        .appendField(new Blockly.FieldNumber(0, 0), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to set the cameras position');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['getblock'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("blockType = mc.getBlock(")
        .appendField(new Blockly.FieldNumber(0, 0), "x")
        .appendField(",")
        .appendField(new Blockly.FieldNumber(0, 0), "y")
        .appendField(",")
        .appendField(new Blockly.FieldNumber(0, 0), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to get a block type.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['mcvar'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("x, y, z = mc.player.getPos()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this set a variable of the players position.');
    this.setHelpUrl('http://www.example.com/');
  }
};


Blockly.Blocks['setblock'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.setBlock(")
        .appendField(new Blockly.FieldTextInput("x"), "x")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("y"), "y")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("z"), "z")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("blockType"), "blockType")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to set a block type with text');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['mctext2'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.setBlock(")
        .appendField(new Blockly.FieldTextInput("x"), "x")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("y"), "y")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("z"), "z")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("i"), "i")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('Use this to set a block type with text');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['mctext5'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.setBlock(")
        .appendField(new Blockly.FieldTextInput("x"), "x")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("y"), "y")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("z"), "z")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("p"), "p")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("i"), "i")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('Use this to set a block type with text');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['setblocks'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.setBlocks(")
        .appendField(new Blockly.FieldTextInput("x1"), "x1")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("y1"), "y1")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("z1"), "z1")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("x2"), "x2")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("y2"), "y2")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("z2"), "z2")
        .appendField(", ")
        .appendField(new Blockly.FieldTextInput("blockType"), "blockType")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Use this to set numerous blocks');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['mcblocks8'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.setBlocks(")
        .appendField(new Blockly.FieldTextInput("0"), "x")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "y")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "z")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "q")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "w")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "e")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "r")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "t")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['2buzzer'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("buzzer_")
        .appendField(new Blockly.FieldDropdown([["on", "on"], ["off", "off"]]), "NAME")
        .appendField("()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
    this.setTooltip('Turns the buzzer on or off');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['jengaTaa'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("jengaTaa(")
        .appendField(new Blockly.FieldTextInput("pos"), "pos")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("urefu"), "urefu")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour("#ffa533");
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};


Blockly.Blocks['buildpumpkin'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("buildPumpkin(")
        .appendField(new Blockly.FieldNumber(0), "x")
        .appendField(", ")
        .appendField(new Blockly.FieldNumber(0), "y")
        .appendField(", ")
        .appendField(new Blockly.FieldNumber(0), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};


Blockly.Blocks['getdist'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("distance_to_player(")
        .appendField(new Blockly.FieldNumber(0), "x")
        .appendField(", ")
        .appendField(new Blockly.FieldNumber(0), "y")
        .appendField(", ")
        .appendField(new Blockly.FieldNumber(0), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['find'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("findObject(")
        .appendField(new Blockly.FieldNumber(0), "x")
        .appendField(", ")
        .appendField(new Blockly.FieldNumber(0), "y")
        .appendField(", ")
        .appendField(new Blockly.FieldNumber(0), "z")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['import_emine'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("from eduminecraft import *");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
    this.setTooltip('Imports the eduminecraft library.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['cameraset'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mc.camera.set")
        .appendField(new Blockly.FieldDropdown([["Fixed","Fixed"], ["Normal","Normal"]]), "drop")
        .appendField("()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour('#cc00cc');
    this.setTooltip('Set camera mode.');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['import_sonic'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("from psonic import *");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['sampleson'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sample(")
        .appendField(new Blockly.FieldTextInput("name"), "name")
        .appendField(")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['senseshow'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sense.show_message(\"")
        .appendField(new Blockly.FieldTextInput("Text Here"), "text")
        .appendField("\")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
    this.setTooltip('Imports the Sense Hat library');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['senseinit'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sense = SenseHat()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
    this.setTooltip('Detects the sense hat');
    this.setHelpUrl('');
  }
};

//*******************************
// Added by andrew pye
// 15/04/2017
// Http.client
//*******************************

Blockly.Blocks['http_client_import_rest'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("import http.client");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Imports the http client library.');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['https_client_create_connection'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("conn = http.client.HTTPSConnection(\"")
		.appendField(new Blockly.FieldTextInput("www.edublocks.org"), "URL")
		.appendField("\")")
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Created a connection');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};

Blockly.Blocks['http_client_create_connection'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("conn = http.client.HTTPConnection(\"")
		.appendField(new Blockly.FieldTextInput("www.edublocks.org"), "URL")
		.appendField(",")
		.appendField(new Blockly.FieldTextInput("80"), "PORT")
		.appendField("\")");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Created a connection');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};

Blockly.Blocks['http_client_request'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("conn.request(")
		.appendField(new Blockly.FieldDropdown([["GET","GET"], ["POST","POST"], ["PUT","PUT"], ["DELETE","DELETE"]]), "method")
		.appendField(",\"")
		.appendField(new Blockly.FieldTextInput("/"), "request")
		.appendField("\",\"")
		.appendField(new Blockly.FieldTextInput(""), "body")
		.appendField("\",{")
		.appendField(new Blockly.FieldTextInput(""), "headers")
		.appendField("})");

    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Create a request text_headers(method,request,body,headers)');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};

Blockly.Blocks['http_client_responce'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("r1 = conn.getresponse()");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Get the responce.');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};

Blockly.Blocks['http_client_status'] = {
  init: function() {
	this.appendDummyInput()
        .appendField("r1.status");
	this.setOutput(true, 'Number');
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Get the responce.');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};

Blockly.Blocks['http_client_reason'] = {
  init: function() {
	this.appendDummyInput()
        .appendField("r1.reason");
	this.setOutput(true, 'Number');
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Get the responce.');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};

Blockly.Blocks['http_client_read'] = {
  init: function() {
	this.appendDummyInput()
        .appendField("r1.read");
	this.setOutput(true, 'Number');
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(70);
    this.setTooltip('Get the responce.');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};

Blockly.Blocks['inline_print'] = {
  init: function() {
	  this.appendValueInput('VALUE')
        .setCheck(['String', 'Number'])
        .appendField('print');
		this.setInputsInline(true);
		this.setPreviousStatement(true, null);
		this.setNextStatement(true, null);
		this.setColour(70);
		this.setTooltip('Use this to print to the output box.');
		this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['http_client_header'] = {
  init: function() {
	this.appendDummyInput()
		.appendField("")
		.appendField(new Blockly.FieldDropdown([["Authorization","Authorization"], ["Content-Type","Content-Type"], ["Accept-Charset","Accept-Charset"], ["Cache-Control","Cache-Control"]]), "key")
		.appendField(",\"")
		.appendField(new Blockly.FieldTextInput(""), "value")
		.appendField("\"");
	this.setOutput(true, 'String');
	this.setIput(true, 'String');
    this.setPreviousStatement(false, null);
    this.setNextStatement(false, null);
    this.setColour(70);
    this.setTooltip('Get the responce.');
    this.setHelpUrl('https://docs.python.org/3/library/http.client.html');
  }
};
