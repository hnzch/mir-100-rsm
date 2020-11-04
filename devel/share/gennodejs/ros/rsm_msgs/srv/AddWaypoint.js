// Auto-generated. Do not edit!

// (in-package rsm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Waypoint = require('../msg/Waypoint.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddWaypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint')) {
        this.waypoint = initObj.waypoint
      }
      else {
        this.waypoint = new Waypoint();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddWaypointRequest
    // Serialize message field [waypoint]
    bufferOffset = Waypoint.serialize(obj.waypoint, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int64(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddWaypointRequest
    let len;
    let data = new AddWaypointRequest(null);
    // Deserialize message field [waypoint]
    data.waypoint = Waypoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Waypoint.getMessageSize(object.waypoint);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/AddWaypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23c630e1c4e5124218665574a9f6ebc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    rsm_msgs/Waypoint waypoint # Waypoint to be added
    int64 position                      # Position in array where to add waypoint (-1 defaults to end of array)
    
    ================================================================================
    MSG: rsm_msgs/Waypoint
    #A waypoint for waypoint following
    geometry_msgs/Pose pose     # Pose of this waypoint
    bool visited                # True if the waypoint was already visited
    bool unreachable			# True if no path to this waypoint could be found
    string routine				# Routine to be executed on reaching waypoint
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddWaypointRequest(null);
    if (msg.waypoint !== undefined) {
      resolved.waypoint = Waypoint.Resolve(msg.waypoint)
    }
    else {
      resolved.waypoint = new Waypoint()
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    return resolved;
    }
};

class AddWaypointResponse {
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
    // Serializes a message object of type AddWaypointResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddWaypointResponse
    let len;
    let data = new AddWaypointResponse(null);
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
    return 'rsm_msgs/AddWaypointResponse';
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
    const resolved = new AddWaypointResponse(null);
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
  Request: AddWaypointRequest,
  Response: AddWaypointResponse,
  md5sum() { return 'd88eb2b30f47caccaa78915d02fcd7a0'; },
  datatype() { return 'rsm_msgs/AddWaypoint'; }
};
