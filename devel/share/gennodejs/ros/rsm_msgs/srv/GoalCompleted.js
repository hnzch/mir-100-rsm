// Auto-generated. Do not edit!

// (in-package rsm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GoalStatus = require('../msg/GoalStatus.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoalCompletedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new GoalStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalCompletedRequest
    // Serialize message field [status]
    bufferOffset = GoalStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalCompletedRequest
    let len;
    let data = new GoalCompletedRequest(null);
    // Deserialize message field [status]
    data.status = GoalStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/GoalCompletedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab442b23c0f408235e52225f26a4a743';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    rsm_msgs/GoalStatus status			# Goal status
    
    ================================================================================
    MSG: rsm_msgs/GoalStatus
    #Information about currently active goal
    geometry_msgs/Pose goal			 	# Goal in the map
    uint8 goal_status					# Status of the goal 
    
    uint8 ACTIVE = 0       				# Goal is still active
    uint8 REACHED = 1       			# Goal was successfully reached
    uint8 FAILED = 2        			# Failed to reach goal
    uint8 ABORTED = 3        			# Aborted goal before completion
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
    const resolved = new GoalCompletedRequest(null);
    if (msg.status !== undefined) {
      resolved.status = GoalStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new GoalStatus()
    }

    return resolved;
    }
};

class GoalCompletedResponse {
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
    // Serializes a message object of type GoalCompletedResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalCompletedResponse
    let len;
    let data = new GoalCompletedResponse(null);
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
    return 'rsm_msgs/GoalCompletedResponse';
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
    const resolved = new GoalCompletedResponse(null);
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
  Request: GoalCompletedRequest,
  Response: GoalCompletedResponse,
  md5sum() { return 'a69cf0e7e0685d899e584ceb18804a9e'; },
  datatype() { return 'rsm_msgs/GoalCompleted'; }
};
