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
    media: "/static/main/matofali/blockly/media/",
    toolbox: document.getElementById("toolbox")
  });

  onresize();

  // Load the student's latest progress.
  //var blockly_xml = document.getElementById("latest-code").innerHTML;
  //console.log(blockly_xml);
  //var textToDom = Blockly.Xml.textToDom(blockly_xml);
  //console.log(textToDom);
  Blockly.Xml.domToWorkspace(document.getElementById("latest-code"), workspace);
  //var xml = Blockly.Xml.workspaceToDom(Blockly.mainWorkspace);
  //console.log(Blockly.Xml.domToPrettyText(xml));
  
  // Show the problem desc when page first loads.
  $('#problem-description').modal('show');
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
    if (evt.data.startsWith('NT_VERIFIER_RESULTS:')) {
	var parts = evt.data.split(':');
	var testsPassed = parseInt(parts[1].trim());
	var testsTotal = parseInt(parts[2].trim());
	var latestCodeDom = Blockly.Xml.workspaceToDom(workspace);
	var latestCode = Blockly.Xml.domToPrettyText(latestCodeDom);
	latestCode = $(latestCode).html();
	console.log('PASSED TESTS: ' + testsPassed);
	console.log('TOTAL TESTS: ' + testsTotal);
	console.log('LATEST CODE: ' + latestCode);
	s_id = $("#student_id").text();
	p_id = $("#problem_id").text();
	$.post( "/verifier_update", {
		student_id: s_id,
		problem_id: p_id,
		tests_passed: testsPassed,
		total_tests: testsTotal,
		submitted_code: latestCode
	}
	).done(function(data) {
	  console.log('/verifier_update suceeded with msg: ' + data)
	  if (testsPassed == testsTotal) {
	    window.location = "/hongera/" + s_id + "/" + p_id;
	  }
	})
	.fail(function(xhr, status, err) {
	  console.log('/verifier_update failed with msg: ' + err)
	});
    } else {
      term.value += evt.data;
      term.scrollTop = term.scrollHeight;
    }
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
  // Load the student's latest proress.
  editor.setValue(Blockly.Python.workspaceToCode());
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

function clearTerminal() {
  preLineTerm = null;
  term.value = "";
  // MQUINN: Also clear the input line for the terminal.
  inp.value = "";
};

function sendCode() {
  toggleTerminal(true);
  clearTerminal();
  var student_code = Blockly.Python.workspaceToCode();
  var verify_code = document.getElementById("verify-code").innerText; 
  var code = student_code + "\n\n" + verify_code;
  ws.send("NT_CODE:" + code);
};

function getHost() {
  // MQUINN : Always access local NT backend, none
  // on server.
  return "127.0.0.1:8081";
  /*if (location.host == 'tssslabfileserver') {
    return "127.0.0.1:8081";
  }

  if (location.protocol === "file:") {
    return "127.0.0.1:8081";
  }

  if (location.protocol === "http:") {
    return location.host;
  }*/
};
