// Auto-generated. Do not edit!

// (in-package dong_core.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class sensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_encoder = null;
      this.right_encoder = null;
      this.yaw_angle = null;
      this.quest = null;
    }
    else {
      if (initObj.hasOwnProperty('left_encoder')) {
        this.left_encoder = initObj.left_encoder
      }
      else {
        this.left_encoder = 0.0;
      }
      if (initObj.hasOwnProperty('right_encoder')) {
        this.right_encoder = initObj.right_encoder
      }
      else {
        this.right_encoder = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_angle')) {
        this.yaw_angle = initObj.yaw_angle
      }
      else {
        this.yaw_angle = 0.0;
      }
      if (initObj.hasOwnProperty('quest')) {
        this.quest = initObj.quest
      }
      else {
        this.quest = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sensor
    // Serialize message field [left_encoder]
    bufferOffset = _serializer.float64(obj.left_encoder, buffer, bufferOffset);
    // Serialize message field [right_encoder]
    bufferOffset = _serializer.float64(obj.right_encoder, buffer, bufferOffset);
    // Serialize message field [yaw_angle]
    bufferOffset = _serializer.float64(obj.yaw_angle, buffer, bufferOffset);
    // Serialize message field [quest]
    bufferOffset = _serializer.bool(obj.quest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensor
    let len;
    let data = new sensor(null);
    // Deserialize message field [left_encoder]
    data.left_encoder = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_encoder]
    data.right_encoder = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_angle]
    data.yaw_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [quest]
    data.quest = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dong_core/sensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e51394dd57ce1e429a6d473451795f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 left_encoder
    float64 right_encoder
    float64 yaw_angle
    
    bool quest
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sensor(null);
    if (msg.left_encoder !== undefined) {
      resolved.left_encoder = msg.left_encoder;
    }
    else {
      resolved.left_encoder = 0.0
    }

    if (msg.right_encoder !== undefined) {
      resolved.right_encoder = msg.right_encoder;
    }
    else {
      resolved.right_encoder = 0.0
    }

    if (msg.yaw_angle !== undefined) {
      resolved.yaw_angle = msg.yaw_angle;
    }
    else {
      resolved.yaw_angle = 0.0
    }

    if (msg.quest !== undefined) {
      resolved.quest = msg.quest;
    }
    else {
      resolved.quest = false
    }

    return resolved;
    }
};

module.exports = sensor;
