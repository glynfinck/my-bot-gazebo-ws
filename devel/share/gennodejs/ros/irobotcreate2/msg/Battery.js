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

class Battery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.power_cord = null;
      this.dock = null;
      this.level = null;
      this.time_remaining = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('power_cord')) {
        this.power_cord = initObj.power_cord
      }
      else {
        this.power_cord = false;
      }
      if (initObj.hasOwnProperty('dock')) {
        this.dock = initObj.dock
      }
      else {
        this.dock = false;
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0.0;
      }
      if (initObj.hasOwnProperty('time_remaining')) {
        this.time_remaining = initObj.time_remaining
      }
      else {
        this.time_remaining = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Battery
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [power_cord]
    bufferOffset = _serializer.bool(obj.power_cord, buffer, bufferOffset);
    // Serialize message field [dock]
    bufferOffset = _serializer.bool(obj.dock, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.float32(obj.level, buffer, bufferOffset);
    // Serialize message field [time_remaining]
    bufferOffset = _serializer.uint32(obj.time_remaining, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Battery
    let len;
    let data = new Battery(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [power_cord]
    data.power_cord = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock]
    data.dock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_remaining]
    data.time_remaining = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Battery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fea569ed505a7f18307badadb1c26b0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool power_cord
    bool dock
    float32 level			# in %
    uint32 time_remaining		# in minutes
    
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
    const resolved = new Battery(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.power_cord !== undefined) {
      resolved.power_cord = msg.power_cord;
    }
    else {
      resolved.power_cord = false
    }

    if (msg.dock !== undefined) {
      resolved.dock = msg.dock;
    }
    else {
      resolved.dock = false
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0.0
    }

    if (msg.time_remaining !== undefined) {
      resolved.time_remaining = msg.time_remaining;
    }
    else {
      resolved.time_remaining = 0
    }

    return resolved;
    }
};

module.exports = Battery;
