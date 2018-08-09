"use strict";

function getIo() {
  if (typeof process !== 'undefined' && process.versions && process.versions.electron) {
    return getElectronIo();
  }

  return getWebIo();
}

function getElectronIo() {
  var electron = require('electron')
  var fs = require('fs');

  var dialog = electron.remote.dialog;

  /**
   * @param {string} text
   */
  function saveFile(text, ext, extName) {
    var path = dialog.showSaveDialog({ filters: [{ name: extName, extensions: [ext] }] });

    if (!path) {
      return;
    }

    var buffer = new Buffer(text, 'utf8');

    return new Promise(function(resolve, reject) {
      return fs.writeFile(path, buffer, function(err) {
        if (err) {
          return reject(err);
        }

        return resolve(null);
      });
    });
  }

  return {
    saveFile: saveFile
  }
}

function getWebIo() {
  /**
   * @param {string} text
   */
  function saveFile(text) {
    var path = 'export';

    // Pi 1 / Zero has a hacked version of Chromium which provides a save prompt
    // Only ask for a filename if this is not the case
    if (navigator.userAgent.indexOf('armv6l') === -1) {
      path = prompt('Enter filename...');
    }

    if (!path) {
      return;
    }

    if (path.indexOf('.xml') !== path.length - 4) {
      path = path + '.xml';
    }

    var blob = new Blob([text], { type: 'text/xml;charset=utf-8' });
    saveAs(blob, path);
    return Promise.resolve(null);
  }

  return {
    saveFile: saveFile
  }
}
