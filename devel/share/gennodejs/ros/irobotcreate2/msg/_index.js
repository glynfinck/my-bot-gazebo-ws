
"use strict";

let PlaySong = require('./PlaySong.js');
let Bumper = require('./Bumper.js');
let Diagnostic = require('./Diagnostic.js');
let WheelDrop = require('./WheelDrop.js');
let Leds = require('./Leds.js');
let Buttons = require('./Buttons.js');
let ScheduleLeds = require('./ScheduleLeds.js');
let Song = require('./Song.js');
let RoombaSwitch = require('./RoombaSwitch.js');
let RoombaIR = require('./RoombaIR.js');
let Note = require('./Note.js');
let DigitLeds = require('./DigitLeds.js');
let Brushes = require('./Brushes.js');
let Battery = require('./Battery.js');
let IRCharacter = require('./IRCharacter.js');

module.exports = {
  PlaySong: PlaySong,
  Bumper: Bumper,
  Diagnostic: Diagnostic,
  WheelDrop: WheelDrop,
  Leds: Leds,
  Buttons: Buttons,
  ScheduleLeds: ScheduleLeds,
  Song: Song,
  RoombaSwitch: RoombaSwitch,
  RoombaIR: RoombaIR,
  Note: Note,
  DigitLeds: DigitLeds,
  Brushes: Brushes,
  Battery: Battery,
  IRCharacter: IRCharacter,
};
