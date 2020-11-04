// Auto-generated. Do not edit!

// (in-package rsm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OperationMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.emergencyStop = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('emergencyStop')) {
        this.emergencyStop = initObj.emergencyStop
      }
      else {
        this.emergencyStop = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperationMode
    // Serialize message field [emergencyStop]
    bufferOffset = _serializer.bool(obj.emergencyStop, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperationMode
    let len;
    let data = new OperationMode(null);
    // Deserialize message field [emergencyStop]
    data.emergencyStop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rsm_msgs/OperationMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a2b892239d01889665a0278d874ed60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Operation mode including information about emergency stop
    bool emergencyStop					# Is emergency stop activated
    
    uint8 STOPPED = 0        			# Robot is stopped
    uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	
    uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	
    
    uint8 mode							# Operation mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperationMode(null);
    if (msg.emergencyStop !== undefined) {
      resolved.emergencyStop = msg.emergencyStop;
    }
    else {
      resolved.emergencyStop = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

// Constants for message
OperationMode.Constants = {
  STOPPED: 0,
  AUTONOMOUS: 1,
  TELEOPERATION: 2,
}

module.exports = OperationMode;
