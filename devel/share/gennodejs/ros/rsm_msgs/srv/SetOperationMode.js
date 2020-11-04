// Auto-generated. Do not edit!

// (in-package rsm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OperationMode = require('../msg/OperationMode.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetOperationModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.operationMode = null;
    }
    else {
      if (initObj.hasOwnProperty('operationMode')) {
        this.operationMode = initObj.operationMode
      }
      else {
        this.operationMode = new OperationMode();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetOperationModeRequest
    // Serialize message field [operationMode]
    bufferOffset = OperationMode.serialize(obj.operationMode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetOperationModeRequest
    let len;
    let data = new SetOperationModeRequest(null);
    // Deserialize message field [operationMode]
    data.operationMode = OperationMode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/SetOperationModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '206b56495b7cd2db2bc1b917c72501e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    rsm_msgs/OperationMode operationMode	#Info about operation mode including emergency stop
    
    ================================================================================
    MSG: rsm_msgs/OperationMode
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
    const resolved = new SetOperationModeRequest(null);
    if (msg.operationMode !== undefined) {
      resolved.operationMode = OperationMode.Resolve(msg.operationMode)
    }
    else {
      resolved.operationMode = new OperationMode()
    }

    return resolved;
    }
};

class SetOperationModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetOperationModeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetOperationModeResponse
    let len;
    let data = new SetOperationModeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/SetOperationModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success                       				# Indicate successful run of triggered service
    string message                      			# Informational, e.g. for error messages
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetOperationModeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetOperationModeRequest,
  Response: SetOperationModeResponse,
  md5sum() { return '2760717e8c5a5aefc48015322fde6db7'; },
  datatype() { return 'rsm_msgs/SetOperationMode'; }
};
