const { app, BrowserWindow } = require('electron');
const path = require('path');

let win;

function createWindow() {
  win = new BrowserWindow({
    fullscreen: true,
    // icon 
    icon: path.join(__dirname, 'app_icon.ico'),
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false,
    }
  });

  win.loadFile('index.html');

  //  Set zoom to 75%
  win.webContents.on('did-finish-load', () => {
    win.webContents.setZoomFactor(0.75);
  });

  //  Toggle fullscreen with ESC
  win.webContents.on('before-input-event', (event, input) => {
    if (input.type === 'keyDown' && input.key === 'Escape') {
      const isFullScreen = win.isFullScreen();
      win.setFullScreen(!isFullScreen);
    }
  });
}

app.whenReady().then(createWindow);

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});
