Blockly.Python['import_edupy'] = function(block) {
  var code = 'from edupy import *\n';
  return code;
};

Blockly.Python['break'] = function(block) {
  var code = 'break\n';
  return code;
};

Blockly.Python['pass'] = function(block) {
  var code = 'pass \n';
  return code;
};

Blockly.Python['ehimport'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'import explorerhat\n';
  return code;
};

Blockly.Python['ehtouch'] = function(block) {
  var dropdown_padnumber = block.getFieldValue('padnumber');
  var dropdown_event = block.getFieldValue('event');
  var text_bracket = block.getFieldValue('bracket');
  // TODO: Assemble Python into code variable.
  var code = 'explorerhat.touch.' +dropdown_padnumber+'.' +dropdown_event+'(' +text_bracket+')\n';
  return code;
};

Blockly.Python['ehoutput'] = function(block) {
  var dropdown_outputnumber = block.getFieldValue('outputnumber');
  var dropdown_outputevent = block.getFieldValue('outputevent');
  var text_bracketout = block.getFieldValue('bracketout');
  // TODO: Assemble Python into code variable.
  var code = 'explorerhat.output.' +dropdown_outputnumber+'.' +dropdown_outputevent+'(' +text_bracketout+')\n';
  return code;
};

Blockly.Python['ehinput'] = function(block) {
  var dropdown_inputnumber = block.getFieldValue('inputnumber');
  var dropdown_inputevent = block.getFieldValue('inputevent');
  var text_bracketin = block.getFieldValue('bracketin');
  // TODO: Assemble Python into code variable.
  var code = 'explorerhat.input.' +dropdown_inputnumber+'.' +dropdown_inputevent+'(' +text_bracketin+')\n';
  return code;
};

Blockly.Python['ehlights'] = function(block) {
  var dropdown_lightnumber = block.getFieldValue('lightnumber');
  var dropdown_lightevent = block.getFieldValue('lightevent');
  var text_bracketlight = block.getFieldValue('bracketlight');
  // TODO: Assemble Python into code variable.
  var code = 'explorerhat.light.' +dropdown_lightnumber+'.' +dropdown_lightevent+'(' +text_bracketlight+')\n';
  return code;
};

Blockly.Python['ehanalog'] = function(block) {
  var dropdown_analognumber = block.getFieldValue('analognumber');
  var dropdown_analogevent = block.getFieldValue('analogevent');
  var text_bracketanalog = block.getFieldValue('bracketanalog');
  // TODO: Assemble Python into code variable.
  var code = 'explorerhat.analog.' +dropdown_analognumber+'.' +dropdown_analogevent+'(' +text_bracketanalog+')\n';
  return code;
};

Blockly.Python['ehmotor'] = function(block) {
  var dropdown_motornumber = block.getFieldValue('motornumber');
  var dropdown_motorevent = block.getFieldValue('motorevent');
  var text_bracketmotor = block.getFieldValue('bracketmotor');
  // TODO: Assemble Python into code variable.
  var code = 'explorerhat.motor.' +dropdown_motornumber+'.' +dropdown_motorevent+'(' +text_bracketmotor+')\n';
  return code;
};

Blockly.Python['blinktimport'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'from blinkt import *\n';
  return code;
};

Blockly.Python['blinktsetpixel'] = function(block) {
  var text_pixelno = block.getFieldValue('pixelno');
  var text_r = block.getFieldValue('r');
  var text_g = block.getFieldValue('g');
  var text_b = block.getFieldValue('b');
  // TODO: Assemble Python into code variable.
  var code = 'set_pixel(' +text_pixelno+ ', ' +text_r+', ' +text_g+ ', ' +text_b+ ')\n';
  return code;
};

Blockly.Python['blinktshow'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'show()\n';
  return code;
};

Blockly.Python['blinktsetbrightness'] = function(block) {
  var text_number = block.getFieldValue('number');
  // TODO: Assemble Python into code variable.
  var code = 'set_brightness(' +text_number+ ')\n';
  return code;
};

Blockly.Python['blinktsetpixelbright'] = function(block) {
  var text_pixelno = block.getFieldValue('pixelno');
  var text_r = block.getFieldValue('r');
  var text_g = block.getFieldValue('g');
  var text_b = block.getFieldValue('b');
  var text_bright = block.getFieldValue('bright');
  // TODO: Assemble Python into code variable.
  var code = 'set_pixel(' +text_pixelno+ ', ' +text_r+', ' +text_g+ ', ' +text_b+ ',' +text_bright+ ')\n';
  return code;
};

Blockly.Python['blinktsetall'] = function(block) {
  var text_r = block.getFieldValue('r');
  var text_g = block.getFieldValue('g');
  var text_b = block.getFieldValue('b');
  // TODO: Assemble Python into code variable.
  var code = 'set_all(' +text_r+', ' +text_g+ ', ' +text_b+ ')\n';
  return code;
};

Blockly.Python['blinktsetallbright'] = function(block) {
  var text_pixelno = block.getFieldValue('pixelno');
  var text_r = block.getFieldValue('r');
  var text_g = block.getFieldValue('g');
  var text_b = block.getFieldValue('b');
  var text_bright = block.getFieldValue('bright');
  // TODO: Assemble Python into code variable.
  var code = 'set_all(' +text_r+', ' +text_g+ ', ' +text_b+ ',' +text_bright+ ')\n';
  return code;
};

Blockly.Python['blinktclear'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'clear()\n';
  return code;
};




Blockly.Python['import_sonic'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'from psonic import *\n';
  return code;
};

Blockly.Python['play'] = function(block) {
  var text_value = block.getFieldValue('value');
  // TODO: Assemble Python into code variable.
  var code = 'play(' + text_value + ')\n';
  return code;
};

Blockly.Python['sleep1'] = function(block) {
  var text_value = block.getFieldValue('value');
  // TODO: Assemble Python into code variable.
  var code = 'sleep(' + text_value + ')\n';
  return code;
};

Blockly.Python['sampleson'] = function(block) {
  var text_name = block.getFieldValue('name');
  // TODO: Assemble Python into code variable.
  var code = 'sample(' + text_name + ')\n';
  return code;
};


Blockly.Python['senseinit'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'sense = SenseHat()\n';
  return code;
};

Blockly.Python['senseshow'] = function(block) {
  var text_text = block.getFieldValue('text');
  // TODO: Assemble Python into code variable.
  var code = 'sense.show_message("' +text_text+ '")\n';
  return code;
};

Blockly.Python['import_block'] = function(block) {
  var code = 'from mcpi import block\n';
  return code;
};

Blockly.Python['random'] = function(block) {
  var code = 'import random\n';
  return code;
};

Blockly.Python['import_math'] = function(block) {
  var code = 'import math\n';
  return code;
};

Blockly.Python['varstore'] = function(block) {
  var text_1 = block.getFieldValue('1');
  var text_2 = block.getFieldValue('2');
  // TODO: Assemble Python into code variable.
  var code = text_1 + '=' + text_2 +'\n';
  return code;
};

Blockly.Python['import_emine'] = function(block) {
  var code = 'from eduminecraft import *\n';
  return code;
};

Blockly.Python['sleep'] = function(block) {
  var sekunde = block.getFieldValue('sekunde');
  var code = 'time.sleep(' + sekunde + ')\n';
  return code;
};

Blockly.Python['exit'] = function(block) {
  var code = 'sys.exit()\n';
  return code;
};


Blockly.Python['led_on'] = function(block) {
  var dropdown_led_colour = block.getFieldValue('led_colour');
  // TODO: Assemble Python into code variable.
  var code = dropdown_led_colour + '_led_on()\n';
  return code;
};


Blockly.Python['led_off'] = function(block) {
  var dropdown_led_colour = block.getFieldValue('led_colour');
  // TODO: Assemble Python into code variable.
  var code = dropdown_led_colour + '_led_off()\n';
  return code;
};

Blockly.Python['button_pressed'] = function(block) {
  var code = 'button_pressed()\n';
  return code;
};

Blockly.Python['get_reading'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'get_reading()\n';
  return code;
};

Blockly.Python['stop'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'stop()\n';
  return code;
};

Blockly.Python['forward'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'forward()\n';
  return code;
};

Blockly.Python['backward'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'backward()\n';
  return code;
};

Blockly.Python['turn_left'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'turn_left()\n';
  return code;
};

Blockly.Python['turn_right'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'turn_right()\n';
  return code;
};

Blockly.Python['line_test'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'line_test()\n';
  return code;
};

Blockly.Python['all_on'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'all_on()\n';
  return code;
};

Blockly.Python['all_off'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'all_off()\n';
  return code;
};

Blockly.Python['else'] = function(block) {
  var branch = Blockly.Python.statementToCode(block, 'DO');
  branch = Blockly.Python.addLoopTrap(branch, block.id) ||
      Blockly.Python.PASS;
  return 'else:\n' + branch;
};

Blockly.Python['df'] = function(block) {
  var text_def = block.getFieldValue('def');
  var args = block.getFieldValue('args');
  var code = text_def + '(' + args + ')\n';
  return code;
};

Blockly.Python['if'] = function(block) {
  var expr = block.getFieldValue('expr');
  var stmts = Blockly.Python.statementToCode(block, 'stmts');
  branch = Blockly.Python.addLoopTrap(stmts, block.id) ||
      Blockly.Python.PASS;
  return 'if ' + expr + ':\n' + branch;
};

Blockly.Python['elif'] = function(block) {
  var expr = block.getFieldValue('expr');
  var stmts = Blockly.Python.statementToCode(block, 'stmts');
  branch = Blockly.Python.addLoopTrap(stmts, block.id) ||
      Blockly.Python.PASS;
  return 'elif ' + expr + ':\n' + branch;
};

Blockly.Python['def'] = function(block) {
  var funcname = block.getFieldValue('funcname');
  var funcargs = block.getFieldValue('funcargs');
  var branch = Blockly.Python.statementToCode(block, 'funcbody');
  branch = Blockly.Python.addLoopTrap(branch, block.id) ||
      Blockly.Python.PASS;
  var statements_name = Blockly.Python.statementToCode(block, 'NAME');
  var code = 'def ' + funcname + '(' + funcargs + '):\n' + branch;
  return code;
};

Blockly.Python['printwall'] = function(block) {
  var text_11 = block.getFieldValue('11');
  var text_12 = block.getFieldValue('12');
  var text_13 = block.getFieldValue('13');
  var text_14 = block.getFieldValue('14');
  var text_15 = block.getFieldValue('15');
  var text_16 = block.getFieldValue('16');
  var text_17 = block.getFieldValue('17');
  var text_18 = block.getFieldValue('18');
  var text_21 = block.getFieldValue('21');
  var text_22 = block.getFieldValue('22');
  var text_23 = block.getFieldValue('23');
  var text_24 = block.getFieldValue('24');
  var text_25 = block.getFieldValue('25');
  var text_26 = block.getFieldValue('26');
  var text_27 = block.getFieldValue('27');
  var text_28 = block.getFieldValue('28');
  var text_31 = block.getFieldValue('31');
  var text_32 = block.getFieldValue('32');
  var text_33 = block.getFieldValue('33');
  var text_34 = block.getFieldValue('34');
  var text_35 = block.getFieldValue('35');
  var text_36 = block.getFieldValue('36');
  var text_37 = block.getFieldValue('37');
  var text_38 = block.getFieldValue('38');
  var text_41 = block.getFieldValue('41');
  var text_42 = block.getFieldValue('42');
  var text_43 = block.getFieldValue('43');
  var text_44 = block.getFieldValue('44');
  var text_45 = block.getFieldValue('45');
  var text_46 = block.getFieldValue('46');
  var text_47 = block.getFieldValue('47');
  var text_48 = block.getFieldValue('48');
  var text_51 = block.getFieldValue('51');
  var text_52 = block.getFieldValue('52');
  var text_53 = block.getFieldValue('53');
  var text_54 = block.getFieldValue('54');
  var text_55 = block.getFieldValue('55');
  var text_56 = block.getFieldValue('56');
  var text_57 = block.getFieldValue('57');
  var text_58 = block.getFieldValue('58');
  var text_61 = block.getFieldValue('61');
  var text_62 = block.getFieldValue('62');
  var text_63 = block.getFieldValue('63');
  var text_64 = block.getFieldValue('64');
  var text_65 = block.getFieldValue('65');
  var text_66 = block.getFieldValue('66');
  var text_67 = block.getFieldValue('67');
  var text_68 = block.getFieldValue('68');
  var text_71 = block.getFieldValue('71');
  var text_72 = block.getFieldValue('72');
  var text_73 = block.getFieldValue('73');
  var text_74 = block.getFieldValue('74');
  var text_75 = block.getFieldValue('75');
  var text_76 = block.getFieldValue('76');
  var text_77 = block.getFieldValue('77');
  var text_78 = block.getFieldValue('78');
  var text_81 = block.getFieldValue('81');
  var text_82 = block.getFieldValue('82');
  var text_83 = block.getFieldValue('83');
  var text_84 = block.getFieldValue('84');
  var text_85 = block.getFieldValue('85');
  var text_86 = block.getFieldValue('86');
  var text_87 = block.getFieldValue('87');
  var text_88 = block.getFieldValue('88');
  // TODO: Assemble Python into code variable.
  var start = 'PrintWall(PixelArt(\n';
  var line1 = ' '+text_11+ ', ' +text_12+ ', '+text_13+', '+text_14+', '+text_15+', '+text_16+', '+text_17+', '+text_18+', \n'
  var line2 = ' '+text_21+', ' +text_22+', '+text_23+', '+text_24+', '+text_25+', '+text_26+', '+text_27+', '+text_28+', \n'
  var line3 = ' '+text_31+', ' +text_32+', '+text_33+', '+text_34+', '+text_35+', '+text_36+', '+text_37+', '+text_38+', \n'
  var line4 = ' '+text_41+', ' +text_42+', '+text_43+', '+text_44+', '+text_45+', '+text_46+', '+text_47+', '+text_48+', \n'
  var line5 = ' '+text_51+ ', '+text_52+', '+text_53+', '+text_54+', '+text_55+', '+text_56+', '+text_57+', '+text_58+', \n'
  var line6 = ' '+text_61+ ', '+text_62+', '+text_63+', '+text_64+', '+text_65+', '+text_66+', '+text_67+', '+text_68+', \n'
  var line7 = ' '+text_71+', ' +text_72+', '+text_73+', '+text_74+', '+text_75+', '+text_76+', '+text_77+', '+text_78+', \n'
  var line8 = ' '+text_81+', ' +text_82+', '+text_83+', '+text_84+', '+text_85+', '+text_86+', '+text_87+', '+text_88+', \n'  
  var end = '))\n'
  var code = start+line1+line2+line3+line4+line5+line6+line7+line8+end+'\n'
  return code;
};


Blockly.Python['liveloop'] = function(block) {
  var branch = Blockly.Python.statementToCode(block, 'DO');
  branch = Blockly.Python.addLoopTrap(branch, block.id) ||
      Blockly.Python.PASS;
  var dropdown_num = block.getFieldValue('num');
  var statements_do = Blockly.Python.statementToCode(block, 'DO');
  // TODO: Assemble Python into code variable.
  var code = '\ndef live_loop_' +dropdown_num+ '():\n' + branch;
  code = code + '\nlive_thread_' + dropdown_num + '.start()\n';
  return code;
};

Blockly.Python['ifcroc'] = function(block) {
  var branch = Blockly.Python.statementToCode(block, 'DO');
  branch = Blockly.Python.addLoopTrap(branch, block.id) ||
      Blockly.Python.PASS;
  var text_this = block.getFieldValue('this');
  var dropdown_crocsigns = block.getFieldValue('crocsigns');
  var text_that = block.getFieldValue('that');
  var statements_name = Blockly.Python.statementToCode(block, 'DO');
  // TODO: Assemble Python into code variable.
  var code = 'if ' +text_this+ ' ' +dropdown_crocsigns+ ' ' +text_that+ ':\n' +branch;
  return code;
};

Blockly.Python['varplus'] = function(block) {
  var lhs = block.getFieldValue('lhs');
  var rhs = block.getFieldValue('rhs');
  var code = lhs + ' += ' + rhs + '\n';
  return code;
};

Blockly.Python['varminus'] = function(block) {
  var text_1 = block.getFieldValue('1');
  var text_2 = block.getFieldValue('2');
  // TODO: Assemble Python into code variable.
  var code = text_1 + ' -= ' +text_2+ '\n';
  return code;
};

Blockly.Python['for'] = function(block) {
  var item = block.getFieldValue('item');
  var seq = block.getFieldValue('seq');
  var branch = Blockly.Python.statementToCode(block, 'stmts');
  branch = Blockly.Python.addLoopTrap(branch, block.id) ||
      Blockly.Python.PASS;
  var code = 'for ' + item + ' in ' + seq +  ':\n' +branch;
  return code;
};

Blockly.Python['ifequals'] = function(block) {
  var branch = Blockly.Python.statementToCode(block, 'DO');
  branch = Blockly.Python.addLoopTrap(branch, block.id) ||
      Blockly.Python.PASS;
  var text_this = block.getFieldValue('this');
  var text_that = block.getFieldValue('that');
  var statements_do = Blockly.Python.statementToCode(block, 'DO');
  // TODO: Assemble Python into code variable.
  var code = 'if ' +text_this+ ' == ' +text_that+ ':\n' +branch;
  return code;
};

Blockly.Python['importinputs'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'import inputs\n';
  return code;
};

Blockly.Python['return'] = function(block) {
  var text_return = block.getFieldValue('expr');
  var code = 'return ' +text_return+ '\n';
  return code;
};

Blockly.Python['funcall'] = function(block) {
  var funcname = block.getFieldValue('funcname');
  var funcargs = block.getFieldValue('funcargs');
  var code = funcname + '(' + funcargs + ')\n';
  return code;
};

Blockly.Python['greater'] = function(block) {
  var text_1 = block.getFieldValue('1');
  var text_v = block.getFieldValue('v');
  var branch = Blockly.Python.statementToCode(block, 'DO');
  branch = Blockly.Python.addLoopTrap(branch, block.id) ||
      Blockly.Python.PASS;
  // TODO: Assemble Python into code variable.
  var code = 'while ' + text_1 + ' > ' + text_v + ':\n' + branch;
  return code;
};

Blockly.Python['while'] = function(block) {
  var expr = block.getFieldValue('expr');
  var stmts = Blockly.Python.statementToCode(block, 'stmts');
  branch = Blockly.Python.addLoopTrap(stmts, block.id) || Blockly.Python.PASS;
  var code = 'while ' + expr + ':\n' + stmts;
  return code;
};

Blockly.Python['all_blink'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'all_blink()\n';
  return code;
};

Blockly.Python['button'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'button_test()\n';
  return code;
};

Blockly.Python['buzzer'] = function(block) {
  var dropdown_name = block.getFieldValue('NAME');
  // TODO: Assemble Python into code variable.
  var code = 'buzzer_' + dropdown_name + '()\n';
  return code;
};

Blockly.Python['blink'] = function(block) {
  var dropdown_name = block.getFieldValue('NAME');
  // TODO: Assemble Python into code variable.
  var code = dropdown_name + '_led_blink()\n';
  return code;
};

Blockly.Python['user_input'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'user_input()\n';
  return code;
};

Blockly.Python['key_control'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'key_control()\n';
  return code;
};

Blockly.Python['line_follower'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'line_follower()\n';
  return code;
};

Blockly.Python['avoid'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'avoid()\n';
  return code;
};

Blockly.Python['2led_on'] = function(block) {
  var dropdown_led_colour = block.getFieldValue('led_colour');
  // TODO: Assemble Python into code variable.
  var code = dropdown_led_colour + '_led_on()\n';
  return code;
};


Blockly.Python['2led_off'] = function(block) {
  var dropdown_led_colour = block.getFieldValue('led_colour');
  // TODO: Assemble Python into code variable.
  var code = dropdown_led_colour + '_led_off()\n';
  return code;
};

Blockly.Python['temperature'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'temperature()\n';
  return code;
};

Blockly.Python['ldr'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'ldr()\n';
  return code;
};

Blockly.Python['capacitor'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'capacitor_drain()\n';
  return code;
};

Blockly.Python['motion'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'motion_reading()\n';
  return code;
};

Blockly.Python['crossing'] = function(block) {
  var dropdown_name = block.getFieldValue('NAME');
  // TODO: Assemble Python into code variable.
  var code = dropdown_name + '()\n';
  return code;
};

Blockly.Python['alarm'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'alarm()\n';
  return code;
};

Blockly.Python['dot'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'dot()\n';
  return code;
};

Blockly.Python['dash'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'dash()\n';
  return code;
};

Blockly.Python['letter'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'letter_space()\n';
  return code;
};

Blockly.Python['word'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'word_space()\n';
  return code;
};

Blockly.Python['sen'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'sen_gui()\n';
  return code;
};

Blockly.Python['mcimport'] = function(block) {
  var code = 'from mcpi.minecraft import Minecraft \n';
  return code;
};

Blockly.Python['mccreate'] = function(block) {
  var code = 'mc = Minecraft.create() \n';
  return code;
};

Blockly.Python['mcpost2'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'mc.postToChat("Hello") \n';
  return code;
};

Blockly.Python['mcpostchat'] = function(block) {
  var text_chat = block.getFieldValue('chat');
  // TODO: Assemble Python into code variable.
  var code = 'mc.postToChat("' + text_chat + '")\n';
  return code;
};

Blockly.Python['mcsetting'] = function(block) {
  var key = block.getFieldValue('key');
  var value = block.getFieldValue('value');
  var code = 'mc.world.setting(' + key + ', ' + value + ')\n';
  return code;
};

Blockly.Python['print'] = function(block) {
  var text_print = block.getFieldValue('print');
  // TODO: Assemble Python into code variable.
  var code = 'print("' + text_print + '")\n';
  return code;
};

Blockly.Python['getpos'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'pos = mc.player.getPos() \n';
  return code;
};

Blockly.Python['gettilepos'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'pos = mc.player.getTilePos() \n';
  return code;
};

Blockly.Python['varprint'] = function(block) {
  var text_var = block.getFieldValue('var');
  // TODO: Assemble Python into code variable.
  var code = 'print(' + text_var + ')\n';
  return code;
};

Blockly.Python['setpos'] = function(block) {
  var number_x = block.getFieldValue('x');
  var number_y = block.getFieldValue('y');
  var number_z = block.getFieldValue('z');
  // TODO: Assemble Python into code variable.
  var code = 'mc.player.setPos(' + number_x + ', ' + number_y + ', ' + number_z + ')\n';
  return code;
};

Blockly.Python['settilepos'] = function(block) {
  var x = block.getFieldValue('x');
  var y = block.getFieldValue('y');
  var z = block.getFieldValue('z');
  var code = 'mc.player.setTilePos(' + x + ', ' + y + ', ' + z + ')\n';
  return code;
};

Blockly.Python['campos'] = function(block) {
  var number_x = block.getFieldValue('x');
  var number_y = block.getFieldValue('y');
  var number_z = block.getFieldValue('z');
  // TODO: Assemble Python into code variable.
  var code = 'mc.camera.setPos(' + number_x + ', ' + number_y + ', ' + number_z + ')\n';
  return code;
};

Blockly.Python['getblock'] = function(block) {
  var number_x = block.getFieldValue('x');
  var number_y = block.getFieldValue('y');
  var number_z = block.getFieldValue('z');
  // TODO: Assemble Python into code variable.
  var code = 'blockType = mc.getBlock(' + number_x + ', ' + number_y + ', ' + number_z + ')\n';
  return code;
};

Blockly.Python['mcvar'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'x, y, z = mc.player.getPos() \n';
  return code;
};

Blockly.Python['time'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'import time\n';
  return code;
};

Blockly.Python['import'] = function(block) {
  var code = 'import ' + block.getFieldValue('libname') + '\n';
  return code;
};

Blockly.Python['setblock'] = function(block) {
  var x = block.getFieldValue('x');
  var y = block.getFieldValue('y');
  var z = block.getFieldValue('z');
  var blockType = block.getFieldValue('blockType');
  var code = 'mc.setBlock(' + x + ', ' + y + ', ' + z + ', ' + blockType +  ')\n';
  return code;
};

Blockly.Python['mctext5'] = function(block) {
  var text_x = block.getFieldValue('x');
  var text_y = block.getFieldValue('y');
  var text_z = block.getFieldValue('z');
  var text_p = block.getFieldValue('p');
  var text_i = block.getFieldValue('i');
  // TODO: Assemble Python into code variable.
  var code = 'mc.setBlock(' + text_x + ', ' + text_y + ', ' + text_z + ', ' + text_i + ', ' + text_p + ')\n';
  return code;
};

Blockly.Python['mctext2'] = function(block) {
  var text_x = block.getFieldValue('x');
  var text_y = block.getFieldValue('y');
  var text_z = block.getFieldValue('z');
  var text_i = block.getFieldValue('i');
  // TODO: Assemble Python into code variable.
  var code = 'mc.setBlock(' + text_x + ', ' + text_y + ', ' + text_z + ', ' + text_i +  ')\n';
  return code;
};





Blockly.Python['2buzzer'] = function(block) {
  var dropdown_name = block.getFieldValue('NAME');
  // TODO: Assemble Python into code variable.
  var code = 'buzzer_' + dropdown_name + '()\n';
  return code;
};

Blockly.Python['setblocks'] = function(block) {
  var x1 = block.getFieldValue('x1');
  var y1 = block.getFieldValue('y1');
  var z1 = block.getFieldValue('z1');
  var x2 = block.getFieldValue('x2');
  var y2 = block.getFieldValue('y2');
  var z2 = block.getFieldValue('z2');
  var blockType = block.getFieldValue('blockType');
  var code = 'mc.setBlocks(' + x1 + ', ' + y1 + ', ' + z1 + ', ' + x2 + ', ' + y2 + ', ' + z2 + ', ' + blockType + ')\n';
  return code;
};

Blockly.Python['mcblocks8'] = function(block) {
  var text_x = block.getFieldValue('x');
  var text_y = block.getFieldValue('y');
  var text_z = block.getFieldValue('z');
  var text_q = block.getFieldValue('q');
  var text_w = block.getFieldValue('w');
  var text_e = block.getFieldValue('e');
  var text_r = block.getFieldValue('r');
  var text_t = block.getFieldValue('t');
  // TODO: Assemble Python into code variable.
  var code = 'mc.setBlocks(' + text_x + ', ' + text_y + ', ' + text_z + ', ' + text_q + ', ' + text_w + ', ' + text_e + ', ' + text_r + ', ' + text_t + ')\n';
  return code;
};

Blockly.Python['jengaTaa'] = function(block) {
  var pos = block.getFieldValue('pos');
  var urefu = block.getFieldValue('urefu');
  var code = 'jengaTaa(' + pos + ', ' + urefu + ')\n';
  return code;
};


Blockly.Python['build'] = function(block) {
  var number_x = block.getFieldValue('x');
  var number_y = block.getFieldValue('y');
  var number_z = block.getFieldValue('z');
  // TODO: Assemble Python into code variable.
  var code = 'buildPumpkin(' + number_x + ', ' + number_y + ', ' + number_z + ')\n';
  return code;
};

Blockly.Python['getdist'] = function(block) {
  var number_x = block.getFieldValue('x');
  var number_y = block.getFieldValue('y');
  var number_z = block.getFieldValue('z');
  // TODO: Assemble Python into code variable.
  var code = 'distance_to_player(' + number_x + ', ' + number_y + ', ' + number_z + ')\n';
  return code;
};


Blockly.Python['find'] = function(block) {
  var number_x = block.getFieldValue('x');
  var number_y = block.getFieldValue('y');
  var number_z = block.getFieldValue('z');
  // TODO: Assemble Python into code variable.
  var code = 'findObject(' + number_x + ', ' + number_y + ', ' + number_z + ')\n';
  return code;
};

Blockly.Python['cameraset'] = function(block) {
  var dropdown_drop = block.getFieldValue('drop');
  // TODO: Assemble Python into code variable.
  var code = 'mc.camera.set' + dropdown_drop + '()\n';
  return code;
};

//*******************************
// Added by andrew pye
// 15/04/2017
// Http.client
//*******************************

Blockly.Python['http_client_import_rest'] = function(block) {
  var code = 'import http.client \n';
  return code;
};

Blockly.Python['https_client_create_connection'] = function(block) {
  var text_url = block.getFieldValue('URL');
  var code = 'conn = http.client.HTTPSConnection("'+text_url+'") \n';
  return code;
};

Blockly.Python['http_client_create_connection'] = function(block) {
  var text_url = block.getFieldValue('URL');
  var text_port = block.getFieldValue('PORT');
  var code = 'conn = http.client.HTTPConnection("'+text_url+'",'+text_port+') \n';
  return code;
};

Blockly.Python['http_client_request'] = function(block) {
  var text_method = block.getFieldValue('method');
  var text_request = block.getFieldValue('request');
  var text_headers = block.getFieldValue('headers');
  var text_body = block.getFieldValue('body');
  var code="";
  code = 'conn.request("'+text_method+'", "'+text_request+'", body="'+text_body+'", headers={'+text_headers+'}) \n';
  return code;
};

Blockly.Python['http_client_responce'] = function(block) {
  var code = 'r1 = conn.getresponse() \n';
  return code;
};

Blockly.Python['http_client_responce'] = function(block) {
  var code = 'r1 = conn.getresponse() \n';
  return code;
};

Blockly.Python['inline_print'] = function(block) {
	var text_print2=Blockly.Python.statementToCode(block, 'VALUE');
	// TODO: Assemble Python into code variable.
	var code = 'print(' + text_print2 + ')\n';
	return code;
};

Blockly.Python['http_client_status'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'r1.status';
  return code;
};

Blockly.Python['http_client_reason'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'r1.reason';
  return code;
};

Blockly.Python['http_client_read'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'r1.read().decode()';
  return code;
};

Blockly.Python['code_block'] = function(block) {
  // TODO: Assemble Python into code variable.
  var text_method = block.getFieldValue('code');
  var code = text_method +'\n';
  return code;
};

Blockly.Python['comment_block'] = function(block) {
  // TODO: Assemble Python into code variable.
  var text_method = block.getFieldValue('comment');
  var code = '#' +text_method +'\n';
  return code;
};
