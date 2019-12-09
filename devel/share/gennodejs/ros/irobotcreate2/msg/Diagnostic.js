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

class Diagnostic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_motor_current = null;
      this.right_motor_current = null;
      this.main_brush_current = null;
      this.side_brush_current = null;
      this.left_motor_overcurrent = null;
      this.right_motor_overcurrent = null;
      this.main_brush_overcurrent = null;
      this.side_brush_overcurrent = null;
      this.battery_current = null;
      this.battery_voltage = null;
      this.battery_temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_motor_current')) {
        this.left_motor_current = initObj.left_motor_current
      }
      else {
        this.left_motor_current = 0;
      }
      if (initObj.hasOwnProperty('right_motor_current')) {
        this.right_motor_current = initObj.right_motor_current
      }
      else {
        this.right_motor_current = 0;
      }
      if (initObj.hasOwnProperty('main_brush_current')) {
        this.main_brush_current = initObj.main_brush_current
      }
      else {
        this.main_brush_current = 0;
      }
      if (initObj.hasOwnProperty('side_brush_current')) {
        this.side_brush_current = initObj.side_brush_current
      }
      else {
        this.side_brush_current = 0;
      }
      if (initObj.hasOwnProperty('left_motor_overcurrent')) {
        this.left_motor_overcurrent = initObj.left_motor_overcurrent
      }
      else {
        this.left_motor_overcurrent = false;
      }
      if (initObj.hasOwnProperty('right_motor_overcurrent')) {
        this.right_motor_overcurrent = initObj.right_motor_overcurrent
      }
      else {
        this.right_motor_overcurrent = false;
      }
      if (initObj.hasOwnProperty('main_brush_overcurrent')) {
        this.main_brush_overcurrent = initObj.main_brush_overcurrent
      }
      else {
        this.main_brush_overcurrent = false;
      }
      if (initObj.hasOwnProperty('side_brush_overcurrent')) {
        this.side_brush_overcurrent = initObj.side_brush_overcurrent
      }
      else {
        this.side_brush_overcurrent = false;
      }
      if (initObj.hasOwnProperty('battery_current')) {
        this.battery_current = initObj.battery_current
      }
      else {
        this.battery_current = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0;
      }
      if (initObj.hasOwnProperty('battery_temperature')) {
        this.battery_temperature = initObj.battery_temperature
      }
      else {
        this.battery_temperature = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Diagnostic
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_motor_current]
    bufferOffset = _serializer.int16(obj.left_motor_current, buffer, bufferOffset);
    // Serialize message field [right_motor_current]
    bufferOffset = _serializer.int16(obj.right_motor_current, buffer, bufferOffset);
    // Serialize message field [main_brush_current]
    bufferOffset = _serializer.int16(obj.main_brush_current, buffer, bufferOffset);
    // Serialize message field [side_brush_current]
    bufferOffset = _serializer.int16(obj.side_brush_current, buffer, bufferOffset);
    // Serialize message field [left_motor_overcurrent]
    bufferOffset = _serializer.bool(obj.left_motor_overcurrent, buffer, bufferOffset);
    // Serialize message field [right_motor_overcurrent]
    bufferOffset = _serializer.bool(obj.right_motor_overcurrent, buffer, bufferOffset);
    // Serialize message field [main_brush_overcurrent]
    bufferOffset = _serializer.bool(obj.main_brush_overcurrent, buffer, bufferOffset);
    // Serialize message field [side_brush_overcurrent]
    bufferOffset = _serializer.bool(obj.side_brush_overcurrent, buffer, bufferOffset);
    // Serialize message field [battery_current]
    bufferOffset = _serializer.int16(obj.battery_current, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.int16(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [battery_temperature]
    bufferOffset = _serializer.int8(obj.battery_temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Diagnostic
    let len;
    let data = new Diagnostic(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_motor_current]
    data.left_motor_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_motor_current]
    data.right_motor_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [main_brush_current]
    data.main_brush_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [side_brush_current]
    data.side_brush_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left_motor_overcurrent]
    data.left_motor_overcurrent = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_motor_overcurrent]
    data.right_motor_overcurrent = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [main_brush_overcurrent]
    data.main_brush_overcurrent = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [side_brush_overcurrent]
    data.side_brush_overcurrent = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery_current]
    data.battery_current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [battery_temperature]
    data.battery_temperature = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/Diagnostic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5ab1a026621d8d87d7316b146c2ca2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 left_motor_current
    int16 right_motor_current
    int16 main_brush_current
    int16 side_brush_current
    bool left_motor_overcurrent
    bool right_motor_overcurrent
    bool main_brush_overcurrent
    bool side_brush_overcurrent
    int16 battery_current
    int16 battery_voltage
    int8 battery_temperature
    
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
    const resolved = new Diagnostic(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_motor_current !== undefined) {
      resolved.left_motor_current = msg.left_motor_current;
    }
    else {
      resolved.left_motor_current = 0
    }

    if (msg.right_motor_current !== undefined) {
      resolved.right_motor_current = msg.right_motor_current;
    }
    else {
      resolved.right_motor_current = 0
    }

    if (msg.main_brush_current !== undefined) {
      resolved.main_brush_current = msg.main_brush_current;
    }
    else {
      resolved.main_brush_current = 0
    }

    if (msg.side_brush_current !== undefined) {
      resolved.side_brush_current = msg.side_brush_current;
    }
    else {
      resolved.side_brush_current = 0
    }

    if (msg.left_motor_overcurrent !== undefined) {
      resolved.left_motor_overcurrent = msg.left_motor_overcurrent;
    }
    else {
      resolved.left_motor_overcurrent = false
    }

    if (msg.right_motor_overcurrent !== undefined) {
      resolved.right_motor_overcurrent = msg.right_motor_overcurrent;
    }
    else {
      resolved.right_motor_overcurrent = false
    }

    if (msg.main_brush_overcurrent !== undefined) {
      resolved.main_brush_overcurrent = msg.main_brush_overcurrent;
    }
    else {
      resolved.main_brush_overcurrent = false
    }

    if (msg.side_brush_overcurrent !== undefined) {
      resolved.side_brush_overcurrent = msg.side_brush_overcurrent;
    }
    else {
      resolved.side_brush_overcurrent = false
    }

    if (msg.battery_current !== undefined) {
      resolved.battery_current = msg.battery_current;
    }
    else {
      resolved.battery_current = 0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0
    }

    if (msg.battery_temperature !== undefined) {
      resolved.battery_temperature = msg.battery_temperature;
    }
    else {
      resolved.battery_temperature = 0
    }

    return resolved;
    }
};

module.exports = Diagnostic;
