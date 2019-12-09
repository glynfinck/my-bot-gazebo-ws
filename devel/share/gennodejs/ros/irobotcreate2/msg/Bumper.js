// Auto-generated. Do not edit!

// (in-package irobotcreate2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoombaSwitch = require('./RoombaSwitch.js');

//-----------------------------------------------------------

class Bumper {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left = null;
      this.right = null;
    }
    else {
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new RoombaSwitch();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new RoombaSwitch();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bumper
    // Serialize message field [left]
    bufferOffset = RoombaSwitch.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = RoombaSwitch.serialize(obj.right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bumper
    let len;
    let data = new Bumper(null);
    // Deserialize message field [left]
    data.left = RoombaSwitch.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = RoombaSwitch.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RoombaSwitch.getMessageSize(object.left);
    length += RoombaSwitch.getMessageSize(object.right);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Bumper';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ce131cedcae0c89b4efbe13237e4425';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RoombaSwitch left
    RoombaSwitch right
    
    ================================================================================
    MSG: irobotcreate2/RoombaSwitch
    Header header
    bool state
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bumper(null);
    if (msg.left !== undefined) {
      resolved.left = RoombaSwitch.Resolve(msg.left)
    }
    else {
      resolved.left = new RoombaSwitch()
    }

    if (msg.right !== undefined) {
      resolved.right = RoombaSwitch.Resolve(msg.right)
    }
    else {
      resolved.right = new RoombaSwitch()
    }

    return resolved;
    }
};

module.exports = Bumper;
