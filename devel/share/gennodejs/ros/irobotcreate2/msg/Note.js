// Auto-generated. Do not edit!

// (in-package irobotcreate2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Note {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.note = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('note')) {
        this.note = initObj.note
      }
      else {
        this.note = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Note
    // Serialize message field [note]
    bufferOffset = _serializer.uint8(obj.note, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Note
    let len;
    let data = new Note(null);
    // Deserialize message field [note]
    data.note = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Note';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d9b44801be38c06e26bc85d74c2792b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 note
    uint8 length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Note(null);
    if (msg.note !== undefined) {
      resolved.note = msg.note;
    }
    else {
      resolved.note = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    return resolved;
    }
};

module.exports = Note;
