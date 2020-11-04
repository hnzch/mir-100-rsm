// Auto-generated. Do not edit!

// (in-package rsm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetWaypointRoutineRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.routine = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('routine')) {
        this.routine = initObj.routine
      }
      else {
        this.routine = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWaypointRoutineRequest
    // Serialize message field [position]
    bufferOffset = _serializer.int64(obj.position, buffer, bufferOffset);
    // Serialize message field [routine]
    bufferOffset = _serializer.string(obj.routine, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWaypointRoutineRequest
    let len;
    let data = new SetWaypointRoutineRequest(null);
    // Deserialize message field [position]
    data.position = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [routine]
    data.routine = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.routine.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/SetWaypointRoutineRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebd05026ef6446f1497656583b7e0135';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 position                      # Position in array of waypoint to be moved
    string routine						# Waypoint routine
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWaypointRoutineRequest(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.routine !== undefined) {
      resolved.routine = msg.routine;
    }
    else {
      resolved.routine = ''
    }

    return resolved;
    }
};

class SetWaypointRoutineResponse {
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
    // Serializes a message object of type SetWaypointRoutineResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWaypointRoutineResponse
    let len;
    let data = new SetWaypointRoutineResponse(null);
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
    return 'rsm_msgs/SetWaypointRoutineResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success                        # Indicate successful run of triggered service
    string message                      # Informational, e.g. for error messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWaypointRoutineResponse(null);
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
  Request: SetWaypointRoutineRequest,
  Response: SetWaypointRoutineResponse,
  md5sum() { return '6e041540f9d404e36a7461b015bc51aa'; },
  datatype() { return 'rsm_msgs/SetWaypointRoutine'; }
};
