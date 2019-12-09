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

class Brushes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.main_brush = null;
      this.main_brush_pwm = null;
      this.main_brush_direction = null;
      this.side_brush = null;
      this.side_brush_pwm = null;
      this.side_brush_clockwise = null;
      this.vacuum = null;
      this.vacuum_pwm = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('main_brush')) {
        this.main_brush = initObj.main_brush
      }
      else {
        this.main_brush = false;
      }
      if (initObj.hasOwnProperty('main_brush_pwm')) {
        this.main_brush_pwm = initObj.main_brush_pwm
      }
      else {
        this.main_brush_pwm = 0;
      }
      if (initObj.hasOwnProperty('main_brush_direction')) {
        this.main_brush_direction = initObj.main_brush_direction
      }
      else {
        this.main_brush_direction = false;
      }
      if (initObj.hasOwnProperty('side_brush')) {
        this.side_brush = initObj.side_brush
      }
      else {
        this.side_brush = false;
      }
      if (initObj.hasOwnProperty('side_brush_pwm')) {
        this.side_brush_pwm = initObj.side_brush_pwm
      }
      else {
        this.side_brush_pwm = 0;
      }
      if (initObj.hasOwnProperty('side_brush_clockwise')) {
        this.side_brush_clockwise = initObj.side_brush_clockwise
      }
      else {
        this.side_brush_clockwise = false;
      }
      if (initObj.hasOwnProperty('vacuum')) {
        this.vacuum = initObj.vacuum
      }
      else {
        this.vacuum = false;
      }
      if (initObj.hasOwnProperty('vacuum_pwm')) {
        this.vacuum_pwm = initObj.vacuum_pwm
      }
      else {
        this.vacuum_pwm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Brushes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [main_brush]
    bufferOffset = _serializer.bool(obj.main_brush, buffer, bufferOffset);
    // Serialize message field [main_brush_pwm]
    bufferOffset = _serializer.int8(obj.main_brush_pwm, buffer, bufferOffset);
    // Serialize message field [main_brush_direction]
    bufferOffset = _serializer.bool(obj.main_brush_direction, buffer, bufferOffset);
    // Serialize message field [side_brush]
    bufferOffset = _serializer.bool(obj.side_brush, buffer, bufferOffset);
    // Serialize message field [side_brush_pwm]
    bufferOffset = _serializer.int8(obj.side_brush_pwm, buffer, bufferOffset);
    // Serialize message field [side_brush_clockwise]
    bufferOffset = _serializer.bool(obj.side_brush_clockwise, buffer, bufferOffset);
    // Serialize message field [vacuum]
    bufferOffset = _serializer.bool(obj.vacuum, buffer, bufferOffset);
    // Serialize message field [vacuum_pwm]
    bufferOffset = _serializer.int8(obj.vacuum_pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Brushes
    let len;
    let data = new Brushes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [main_brush]
    data.main_brush = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [main_brush_pwm]
    data.main_brush_pwm = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [main_brush_direction]
    data.main_brush_direction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [side_brush]
    data.side_brush = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [side_brush_pwm]
    data.side_brush_pwm = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [side_brush_clockwise]
    data.side_brush_clockwise = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vacuum]
    data.vacuum = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vacuum_pwm]
    data.vacuum_pwm = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Brushes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4c497f02ce3244991df05e0d729013c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool main_brush
    int8 main_brush_pwm
    bool main_brush_direction
    bool side_brush
    int8 side_brush_pwm
    bool side_brush_clockwise
    bool vacuum
    int8 vacuum_pwm
    
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
    const resolved = new Brushes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.main_brush !== undefined) {
      resolved.main_brush = msg.main_brush;
    }
    else {
      resolved.main_brush = false
    }

    if (msg.main_brush_pwm !== undefined) {
      resolved.main_brush_pwm = msg.main_brush_pwm;
    }
    else {
      resolved.main_brush_pwm = 0
    }

    if (msg.main_brush_direction !== undefined) {
      resolved.main_brush_direction = msg.main_brush_direction;
    }
    else {
      resolved.main_brush_direction = false
    }

    if (msg.side_brush !== undefined) {
      resolved.side_brush = msg.side_brush;
    }
    else {
      resolved.side_brush = false
    }

    if (msg.side_brush_pwm !== undefined) {
      resolved.side_brush_pwm = msg.side_brush_pwm;
    }
    else {
      resolved.side_brush_pwm = 0
    }

    if (msg.side_brush_clockwise !== undefined) {
      resolved.side_brush_clockwise = msg.side_brush_clockwise;
    }
    else {
      resolved.side_brush_clockwise = false
    }

    if (msg.vacuum !== undefined) {
      resolved.vacuum = msg.vacuum;
    }
    else {
      resolved.vacuum = false
    }

    if (msg.vacuum_pwm !== undefined) {
      resolved.vacuum_pwm = msg.vacuum_pwm;
    }
    else {
      resolved.vacuum_pwm = 0
    }

    return resolved;
    }
};

module.exports = Brushes;
