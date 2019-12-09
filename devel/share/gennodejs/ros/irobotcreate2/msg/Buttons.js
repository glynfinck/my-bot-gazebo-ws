// Auto-generated. Do not edit!

// (in-package irobotcreate2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Buttons {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.clean = null;
      this.spot = null;
      this.dock = null;
      this.day = null;
      this.hour = null;
      this.minute = null;
      this.schedule = null;
      this.clock = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('clean')) {
        this.clean = initObj.clean
      }
      else {
        this.clean = false;
      }
      if (initObj.hasOwnProperty('spot')) {
        this.spot = initObj.spot
      }
      else {
        this.spot = false;
      }
      if (initObj.hasOwnProperty('dock')) {
        this.dock = initObj.dock
      }
      else {
        this.dock = false;
      }
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = false;
      }
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = false;
      }
      if (initObj.hasOwnProperty('minute')) {
        this.minute = initObj.minute
      }
      else {
        this.minute = false;
      }
      if (initObj.hasOwnProperty('schedule')) {
        this.schedule = initObj.schedule
      }
      else {
        this.schedule = false;
      }
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Buttons
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [clean]
    bufferOffset = _serializer.bool(obj.clean, buffer, bufferOffset);
    // Serialize message field [spot]
    bufferOffset = _serializer.bool(obj.spot, buffer, bufferOffset);
    // Serialize message field [dock]
    bufferOffset = _serializer.bool(obj.dock, buffer, bufferOffset);
    // Serialize message field [day]
    bufferOffset = _serializer.bool(obj.day, buffer, bufferOffset);
    // Serialize message field [hour]
    bufferOffset = _serializer.bool(obj.hour, buffer, bufferOffset);
    // Serialize message field [minute]
    bufferOffset = _serializer.bool(obj.minute, buffer, bufferOffset);
    // Serialize message field [schedule]
    bufferOffset = _serializer.bool(obj.schedule, buffer, bufferOffset);
    // Serialize message field [clock]
    bufferOffset = _serializer.bool(obj.clock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Buttons
    let len;
    let data = new Buttons(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [clean]
    data.clean = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [spot]
    data.spot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock]
    data.dock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [day]
    data.day = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hour]
    data.hour = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [minute]
    data.minute = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [schedule]
    data.schedule = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clock]
    data.clock = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Buttons';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c6635fea08c0a11307b4518b1f7fd79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool clean
    bool spot
    bool dock
    bool day
    bool hour
    bool minute
    bool schedule
    bool clock
    
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
    const resolved = new Buttons(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.clean !== undefined) {
      resolved.clean = msg.clean;
    }
    else {
      resolved.clean = false
    }

    if (msg.spot !== undefined) {
      resolved.spot = msg.spot;
    }
    else {
      resolved.spot = false
    }

    if (msg.dock !== undefined) {
      resolved.dock = msg.dock;
    }
    else {
      resolved.dock = false
    }

    if (msg.day !== undefined) {
      resolved.day = msg.day;
    }
    else {
      resolved.day = false
    }

    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = false
    }

    if (msg.minute !== undefined) {
      resolved.minute = msg.minute;
    }
    else {
      resolved.minute = false
    }

    if (msg.schedule !== undefined) {
      resolved.schedule = msg.schedule;
    }
    else {
      resolved.schedule = false
    }

    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = false
    }

    return resolved;
    }
};

module.exports = Buttons;
