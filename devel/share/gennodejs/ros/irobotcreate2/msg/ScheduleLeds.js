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

class ScheduleLeds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sunday = null;
      this.monday = null;
      this.tuesday = null;
      this.wednesday = null;
      this.thursday = null;
      this.friday = null;
      this.saturday = null;
      this.colon = null;
      this.pm = null;
      this.am = null;
      this.clock = null;
      this.schedule = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sunday')) {
        this.sunday = initObj.sunday
      }
      else {
        this.sunday = false;
      }
      if (initObj.hasOwnProperty('monday')) {
        this.monday = initObj.monday
      }
      else {
        this.monday = false;
      }
      if (initObj.hasOwnProperty('tuesday')) {
        this.tuesday = initObj.tuesday
      }
      else {
        this.tuesday = false;
      }
      if (initObj.hasOwnProperty('wednesday')) {
        this.wednesday = initObj.wednesday
      }
      else {
        this.wednesday = false;
      }
      if (initObj.hasOwnProperty('thursday')) {
        this.thursday = initObj.thursday
      }
      else {
        this.thursday = false;
      }
      if (initObj.hasOwnProperty('friday')) {
        this.friday = initObj.friday
      }
      else {
        this.friday = false;
      }
      if (initObj.hasOwnProperty('saturday')) {
        this.saturday = initObj.saturday
      }
      else {
        this.saturday = false;
      }
      if (initObj.hasOwnProperty('colon')) {
        this.colon = initObj.colon
      }
      else {
        this.colon = false;
      }
      if (initObj.hasOwnProperty('pm')) {
        this.pm = initObj.pm
      }
      else {
        this.pm = false;
      }
      if (initObj.hasOwnProperty('am')) {
        this.am = initObj.am
      }
      else {
        this.am = false;
      }
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = false;
      }
      if (initObj.hasOwnProperty('schedule')) {
        this.schedule = initObj.schedule
      }
      else {
        this.schedule = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScheduleLeds
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sunday]
    bufferOffset = _serializer.bool(obj.sunday, buffer, bufferOffset);
    // Serialize message field [monday]
    bufferOffset = _serializer.bool(obj.monday, buffer, bufferOffset);
    // Serialize message field [tuesday]
    bufferOffset = _serializer.bool(obj.tuesday, buffer, bufferOffset);
    // Serialize message field [wednesday]
    bufferOffset = _serializer.bool(obj.wednesday, buffer, bufferOffset);
    // Serialize message field [thursday]
    bufferOffset = _serializer.bool(obj.thursday, buffer, bufferOffset);
    // Serialize message field [friday]
    bufferOffset = _serializer.bool(obj.friday, buffer, bufferOffset);
    // Serialize message field [saturday]
    bufferOffset = _serializer.bool(obj.saturday, buffer, bufferOffset);
    // Serialize message field [colon]
    bufferOffset = _serializer.bool(obj.colon, buffer, bufferOffset);
    // Serialize message field [pm]
    bufferOffset = _serializer.bool(obj.pm, buffer, bufferOffset);
    // Serialize message field [am]
    bufferOffset = _serializer.bool(obj.am, buffer, bufferOffset);
    // Serialize message field [clock]
    bufferOffset = _serializer.bool(obj.clock, buffer, bufferOffset);
    // Serialize message field [schedule]
    bufferOffset = _serializer.bool(obj.schedule, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScheduleLeds
    let len;
    let data = new ScheduleLeds(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sunday]
    data.sunday = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [monday]
    data.monday = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tuesday]
    data.tuesday = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wednesday]
    data.wednesday = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [thursday]
    data.thursday = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [friday]
    data.friday = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [saturday]
    data.saturday = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [colon]
    data.colon = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pm]
    data.pm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [am]
    data.am = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clock]
    data.clock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [schedule]
    data.schedule = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irobotcreate2/ScheduleLeds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c552ea7c5b68737285d12a0dee0a839';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool sunday
    bool monday
    bool tuesday
    bool wednesday
    bool thursday
    bool friday
    bool saturday
    bool colon
    bool pm
    bool am
    bool clock
    bool schedule
    
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
    const resolved = new ScheduleLeds(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sunday !== undefined) {
      resolved.sunday = msg.sunday;
    }
    else {
      resolved.sunday = false
    }

    if (msg.monday !== undefined) {
      resolved.monday = msg.monday;
    }
    else {
      resolved.monday = false
    }

    if (msg.tuesday !== undefined) {
      resolved.tuesday = msg.tuesday;
    }
    else {
      resolved.tuesday = false
    }

    if (msg.wednesday !== undefined) {
      resolved.wednesday = msg.wednesday;
    }
    else {
      resolved.wednesday = false
    }

    if (msg.thursday !== undefined) {
      resolved.thursday = msg.thursday;
    }
    else {
      resolved.thursday = false
    }

    if (msg.friday !== undefined) {
      resolved.friday = msg.friday;
    }
    else {
      resolved.friday = false
    }

    if (msg.saturday !== undefined) {
      resolved.saturday = msg.saturday;
    }
    else {
      resolved.saturday = false
    }

    if (msg.colon !== undefined) {
      resolved.colon = msg.colon;
    }
    else {
      resolved.colon = false
    }

    if (msg.pm !== undefined) {
      resolved.pm = msg.pm;
    }
    else {
      resolved.pm = false
    }

    if (msg.am !== undefined) {
      resolved.am = msg.am;
    }
    else {
      resolved.am = false
    }

    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = false
    }

    if (msg.schedule !== undefined) {
      resolved.schedule = msg.schedule;
    }
    else {
      resolved.schedule = false
    }

    return resolved;
    }
};

module.exports = ScheduleLeds;
