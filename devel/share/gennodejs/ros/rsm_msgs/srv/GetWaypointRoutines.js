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

class GetWaypointRoutinesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWaypointRoutinesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWaypointRoutinesRequest
    let len;
    let data = new GetWaypointRoutinesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/GetWaypointRoutinesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWaypointRoutinesRequest(null);
    return resolved;
    }
};

class GetWaypointRoutinesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypointRoutines = null;
    }
    else {
      if (initObj.hasOwnProperty('waypointRoutines')) {
        this.waypointRoutines = initObj.waypointRoutines
      }
      else {
        this.waypointRoutines = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWaypointRoutinesResponse
    // Serialize message field [waypointRoutines]
    bufferOffset = _arraySerializer.string(obj.waypointRoutines, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWaypointRoutinesResponse
    let len;
    let data = new GetWaypointRoutinesResponse(null);
    // Deserialize message field [waypointRoutines]
    data.waypointRoutines = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.waypointRoutines.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/GetWaypointRoutinesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b220fb1d6a56e5ac72aec59f32a9bf6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] waypointRoutines		   		# Array of all waypoint routines available
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWaypointRoutinesResponse(null);
    if (msg.waypointRoutines !== undefined) {
      resolved.waypointRoutines = msg.waypointRoutines;
    }
    else {
      resolved.waypointRoutines = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWaypointRoutinesRequest,
  Response: GetWaypointRoutinesResponse,
  md5sum() { return '2b220fb1d6a56e5ac72aec59f32a9bf6'; },
  datatype() { return 'rsm_msgs/GetWaypointRoutines'; }
};
