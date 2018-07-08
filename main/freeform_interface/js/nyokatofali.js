window.addEventListener("load", initBlockly);
window.addEventListener("load", initWebsocket);
window.addEventListener("load", initEditor);
window.addEventListener("resize", onresize, false);

document.addEventListener("keydown", onkeypress);

var term = document.getElementById("term");
var inp = document.getElementById("inp");

term.parentNode.addEventListener("click", ontermclick);
inp.addEventListener("keyup", oninputkeyup);

var blockly = document.getElementById("blockly");
var python = document.getElementById("python");

var workspace;
var ws;
var editor;
var terminalOpen = false;

function initBlockly() {
  workspace = Blockly.inject(blockly, {
    media: "blockly/media/",
    toolbox: document.getElementById("toolbox")
  });

  onresize();
}

function changeTab(mode) {
  if (mode === "blockly") {
    blockly.style.display = "block";
    python.style.display = "none";
    document.getElementById("filecmds").style.visibility = "hidden";
  }

  if (mode === "python") {
    blockly.style.display = "none";
    python.style.display = "block";
    document.getElementById("filecmds").style.visibility = "visible";
  }
}

function showPython() {
  var code = Blockly.Python.workspaceToCode();

  // python.innerText = code || 'No code';
  editor.setValue(code);

  changeTab("python");
}

function downloadPython() {
  var code = Blockly.Python.workspaceToCode();

  const io = getIo();
  io.saveFile(code, "py", "Python Script");
}

function onresize(e) {
  Blockly.svgResize(workspace);
}

function onkeypress(e) {
  e = e || window.event;
  var key = e.which || e.keyCode;
  var ctrl = e.ctrlKey ? e.ctrlKey : ((key === 17) ? true : false);

  if (key === 27) {
    toggleTerminal();
  }

  // If Ctrl+C is pressed, send interrupt signal to back-end.
  if (key === 67 && ctrl) {
    ws.send("NT_INPUT:" + String.fromCharCode(3));
  }
}

function ontermclick(e) {
  inp.focus();
}

var preLineTerm = null;

function oninputkeyup(e) {
  if (preLineTerm === null) {
    preLineTerm = term.value;
  }

  if (e.keyCode === 13) {
    preLineTerm = null; // term.value;
    ws.send("NT_INPUT:" + inp.value + '\n');
    inp.value = "";
    term.value += '\n';
    return;
  }

  term.value = preLineTerm + inp.value;
}

function initWebsocket() {
  console.log("Opening WebSocket to NyokaTofali back-end...");
  ws = new WebSocket("ws://" + getHost());

  ws.onopen = function(evt) {
    console.log("WebSocket opened successfully.");
    document.getElementById("websocket-status-bar").classList.add("connected");
  };

  ws.onmessage = function(evt) {
    console.log("Received message on WebSocket: " + evt.data);
    term.value += evt.data;
    term.scrollTop = term.scrollHeight;
  };

  ws.onclose = function() {
    document.getElementById("websocket-status-bar").classList.remove("connected");
    console.log("WebSocket closed; will reopen after timeout.");
    setTimeout(initWebsocket, 5000);
  };
};

function initEditor() {
  editor = ace.edit("editor");
  editor.setReadOnly(true);
  editor.setTheme("ace/theme/monokai");
  editor.getSession().setMode("ace/mode/python");
};

function toggleTerminal(show) {
  if (typeof show === "undefined") {
    show = !terminalOpen;
  }

  var terminal = document.getElementById("terminal");

  terminal.style.display = show ? "block" : "none";
  terminalOpen = show;

  inp.focus();
}

function changeTheme(themeName) {
  var header = document.getElementById("header");
  var classNames = header.className.replace(/[a-z]+\-header\ /, "");
  header.className = classNames + " " + themeName + "-header";
}

function openCode() {
  var fileInput = document.createElement("input");
  fileInput.type = "file";
  fileInput.accept = ".xml";
  fileInput.addEventListener("change", readSingleFile, false);
  fileInput.click();

  function readSingleFile(e) {
    var file = e.target.files[0];
    if (!file) return;

    var reader = new FileReader();
    reader.onload = function(e) {
      var contents = e.target.result;
      gotContents(contents);
    };
    reader.readAsText(file);
  }

  function gotContents(text) {
    var textToDom = Blockly.Xml.textToDom(text);
    Blockly.Xml.domToWorkspace(Blockly.mainWorkspace, textToDom);
    var code = Blockly.Python.workspaceToCode();
    editor.setValue(code);
  }
}

function saveCode() {
  var xml = Blockly.Xml.workspaceToDom(Blockly.mainWorkspace);
  var text = Blockly.Xml.domToPrettyText(xml);
  const io = getIo();
  io.saveFile(text, "xml", "EduBlocks XML");
}

function clearTerminal() {
  preLineTerm = null;
  term.value = "";
  // MQUINN: Also clear the input line for the terminal.
  inp.value = "";
};

var jengaTaaFuncDef = "def jengaTaa(pos, urefu):\n"
+ "    if not isinstance(urefu, int):\n"
+ "        raise Exception('Niliomba namba kwa urefu, lakini ulinipata: ' + str(urefu))\n"
+ "    urefu = int(urefu)\n"
+ "    if urefu < 1 or urefu > 3:\n"
+ "        raise Exception('Ninaomba urefu katikati 1 na 3; ulinipata: ' + str(urefu))\n"
+ "    mc.setBlock(pos.x + 1, pos.y, pos.z, 69, 5)\n"
+ "    mc.setBlocks(pos.x + 2, pos.y, pos.z, pos.x + 3, pos.y, pos.z, 55)\n"
+ "    mc.setBlocks(pos.x + 4, pos.y, pos.z, pos.x + 4, pos.y + urefu - 1, pos.z, 124)\n"
+ "    mc.setBlock(pos.x + 4, pos.y + urefu, pos.z, 75)\n"
+ "    print('Taa yenye urefu %d ilijengwa karibu na wewe.' % urefu)\n\n";

var jaribuNambaYaSiriFuncDef = "def jaribuNambaYaSiri(name, pwd):\n"
+ "     m = {'matt' : '134'}\n"
+ "     return m[name] == pwd\n";

function sendCode() {
  toggleTerminal(true);
  clearTerminal();
  var code = Blockly.Python.workspaceToCode();
  if (code.indexOf("jengaTaa(") != -1) {
    code = jengaTaaFuncDef + code;
  }
  if (code.indexOf("jaribuNambaYaSiri(") != -1) {
    code = jaribuNambaYaSiriFuncDef + code;
  }
  ws.send("NT_CODE:" + code);
};

function getHost() {
  // MQUINN : No matter what URL the front-end has been mapped
  // to in Nginx, we assume the user has a local NyokaTofali back-end
  // running on their machine at the following address:
  return "127.0.0.1:8081";
};
