// Auto-generated. Do not edit!

// (in-package irobotcreate2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Note = require('./Note.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Song {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.song_number = null;
      this.notes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('song_number')) {
        this.song_number = initObj.song_number
      }
      else {
        this.song_number = 0;
      }
      if (initObj.hasOwnProperty('notes')) {
        this.notes = initObj.notes
      }
      else {
        this.notes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Song
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [song_number]
    bufferOffset = _serializer.uint8(obj.song_number, buffer, bufferOffset);
    // Serialize message field [notes]
    // Serialize the length for message field [notes]
    bufferOffset = _serializer.uint32(obj.notes.length, buffer, bufferOffset);
    obj.notes.forEach((val) => {
      bufferOffset = Note.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Song
    let len;
    let data = new Song(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [song_number]
    data.song_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [notes]
    // Deserialize array length for message field [notes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.notes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.notes[i] = Note.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.notes.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Song';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a8e64bdbdd926225694c88b701e505f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 song_number
    Note[] notes
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: irobotcreate2/Note
    uint8 note
    uint8 length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Song(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.song_number !== undefined) {
      resolved.song_number = msg.song_number;
    }
    else {
      resolved.song_number = 0
    }

    if (msg.notes !== undefined) {
      resolved.notes = new Array(msg.notes.length);
      for (let i = 0; i < resolved.notes.length; ++i) {
        resolved.notes[i] = Note.Resolve(msg.notes[i]);
      }
    }
    else {
      resolved.notes = []
    }

    return resolved;
    }
};

module.exports = Song;
