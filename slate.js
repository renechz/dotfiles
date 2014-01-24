// Full screen width and height
var fullScreen = slate.operation("move", {
  "x"       : "screenOriginX",
  "y"       : "screenOriginY",
  "width"   : "screenSizeX",
  "height"  : "screenSizeY",
});
slate.bind("m:ctrl,alt,cmd", fullScreen);

// Center window
var centered = slate.operation("move", {
  "x"       : "screenOriginX + (screenSizeX - screenSizeX * 0.9) / 2",
  "y"       : "screenOriginY + (screenSizeY - screenSizeY * 0.9) / 2",
  "width"   : "screenSizeX * 0.9",
  "height"  : "screenSizeY * 0.9",
});
slate.bind("c:ctrl,alt,cmd", centered);

// Left half window
var leftHalf = slate.operation("corner", {
  "direction" : "top-left",
  "width"     : "screenSizeX/2",
  "height"    : "screenSizeY"
});
slate.bind("left:ctrl,alt,cmd", leftHalf);

// Right half window
var rightHalf = slate.operation("corner", {
  "direction" : "top-right",
  "width"     : "screenSizeX/2",
  "height"    : "screenSizeY"
});
slate.bind("right:ctrl,alt,cmd", rightHalf);

// Send to laptop
var moveToLaptop = slate.operation("move", {
  "screen"  : "0",
  "x"       : "screenOriginX",
  "y"       : "screenOriginY",
  "width"   : "screenSizeX",
  "height"  : "screenSizeY"
});
slate.bind("pad1:ctrl,alt,cmd", moveToLaptop);

// Send to big screen
var moveToBigScreen = slate.operation("move", {
  "screen"  : "1",
  "x"       : "screenOriginX",
  "y"       : "screenOriginY",
  "width"   : "screenSizeX",
  "height"  : "screenSizeY"
});
slate.bind("pad2:ctrl,alt,cmd", moveToBigScreen);
