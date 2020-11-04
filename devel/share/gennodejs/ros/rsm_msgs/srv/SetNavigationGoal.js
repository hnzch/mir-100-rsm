// Auto-generated. Do not edit!

// (in-package rsm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetNavigationGoalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.navigationMode = null;
      this.waypointPosition = null;
      this.routine = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('navigationMode')) {
        this.navigationMode = initObj.navigationMode
      }
      else {
        this.navigationMode = 0;
      }
      if (initObj.hasOwnProperty('waypointPosition')) {
        this.waypointPosition = initObj.waypointPosition
      }
      else {
        this.waypointPosition = 0;
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
    // Serializes a message object of type SetNavigationGoalRequest
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [navigationMode]
    bufferOffset = _serializer.int8(obj.navigationMode, buffer, bufferOffset);
    // Serialize message field [waypointPosition]
    bufferOffset = _serializer.int64(obj.waypointPosition, buffer, bufferOffset);
    // Serialize message field [routine]
    bufferOffset = _serializer.string(obj.routine, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavigationGoalRequest
    let len;
    let data = new SetNavigationGoalRequest(null);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [navigationMode]
    data.navigationMode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [waypointPosition]
    data.waypointPosition = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [routine]
    data.routine = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.routine.length;
    return length + 69;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/SetNavigationGoalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8db7cf04440217a23ad35e776985384';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose goal 			# Goal for navigation
    int8 navigationMode					# Mode of navigation (Exploration=0, Waypoint following=1 and Simple Goal=2)
    int64 waypointPosition				# Position of waypoint in array
    string routine						# Routine plugin name to be executed at waypoint
    
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
    const resolved = new SetNavigationGoalRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Pose.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Pose()
    }

    if (msg.navigationMode !== undefined) {
      resolved.navigationMode = msg.navigationMode;
    }
    else {
      resolved.navigationMode = 0
    }

    if (msg.waypointPosition !== undefined) {
      resolved.waypointPosition = msg.waypointPosition;
    }
    else {
      resolved.waypointPosition = 0
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

class SetNavigationGoalResponse {
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
    // Serializes a message object of type SetNavigationGoalResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavigationGoalResponse
    let len;
    let data = new SetNavigationGoalResponse(null);
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
    return 'rsm_msgs/SetNavigationGoalResponse';
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
    const resolved = new SetNavigationGoalResponse(null);
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
  Request: SetNavigationGoalRequest,
  Response: SetNavigationGoalResponse,
  md5sum() { return '7f219f0d367008b829d419b8dccf0d16'; },
  datatype() { return 'rsm_msgs/SetNavigationGoal'; }
};
