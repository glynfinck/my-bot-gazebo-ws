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

class Leds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.warning = null;
      this.dock = null;
      this.spot = null;
      this.dirt_detect = null;
      this.clean_color = null;
      this.clean_intensity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('warning')) {
        this.warning = initObj.warning
      }
      else {
        this.warning = false;
      }
      if (initObj.hasOwnProperty('dock')) {
        this.dock = initObj.dock
      }
      else {
        this.dock = false;
      }
      if (initObj.hasOwnProperty('spot')) {
        this.spot = initObj.spot
      }
      else {
        this.spot = false;
      }
      if (initObj.hasOwnProperty('dirt_detect')) {
        this.dirt_detect = initObj.dirt_detect
      }
      else {
        this.dirt_detect = false;
      }
      if (initObj.hasOwnProperty('clean_color')) {
        this.clean_color = initObj.clean_color
      }
      else {
        this.clean_color = 0;
      }
      if (initObj.hasOwnProperty('clean_intensity')) {
        this.clean_intensity = initObj.clean_intensity
      }
      else {
        this.clean_intensity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Leds
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [warning]
    bufferOffset = _serializer.bool(obj.warning, buffer, bufferOffset);
    // Serialize message field [dock]
    bufferOffset = _serializer.bool(obj.dock, buffer, bufferOffset);
    // Serialize message field [spot]
    bufferOffset = _serializer.bool(obj.spot, buffer, bufferOffset);
    // Serialize message field [dirt_detect]
    bufferOffset = _serializer.bool(obj.dirt_detect, buffer, bufferOffset);
    // Serialize message field [clean_color]
    bufferOffset = _serializer.uint8(obj.clean_color, buffer, bufferOffset);
    // Serialize message field [clean_intensity]
    bufferOffset = _serializer.uint8(obj.clean_intensity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Leds
    let len;
    let data = new Leds(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [warning]
    data.warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock]
    data.dock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [spot]
    data.spot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dirt_detect]
    data.dirt_detect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clean_color]
    data.clean_color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [clean_intensity]
    data.clean_intensity = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Leds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd69ee7dfd55b5e80fe8d68fdc28e3612';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool warning
    bool dock
    bool spot
    bool dirt_detect
    uint8 clean_color
    uint8 clean_intensity
    
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
    const resolved = new Leds(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.warning !== undefined) {
      resolved.warning = msg.warning;
    }
    else {
      resolved.warning = false
    }

    if (msg.dock !== undefined) {
      resolved.dock = msg.dock;
    }
    else {
      resolved.dock = false
    }

    if (msg.spot !== undefined) {
      resolved.spot = msg.spot;
    }
    else {
      resolved.spot = false
    }

    if (msg.dirt_detect !== undefined) {
      resolved.dirt_detect = msg.dirt_detect;
    }
    else {
      resolved.dirt_detect = false
    }

    if (msg.clean_color !== undefined) {
      resolved.clean_color = msg.clean_color;
    }
    else {
      resolved.clean_color = 0
    }

    if (msg.clean_intensity !== undefined) {
      resolved.clean_intensity = msg.clean_intensity;
    }
    else {
      resolved.clean_intensity = 0
    }

    return resolved;
    }
};

module.exports = Leds;
