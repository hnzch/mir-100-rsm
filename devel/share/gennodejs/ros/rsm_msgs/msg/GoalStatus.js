// Auto-generated. Do not edit!

// (in-package rsm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GoalStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.goal_status = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('goal_status')) {
        this.goal_status = initObj.goal_status
      }
      else {
        this.goal_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalStatus
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [goal_status]
    bufferOffset = _serializer.uint8(obj.goal_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalStatus
    let len;
    let data = new GoalStatus(null);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_status]
    data.goal_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rsm_msgs/GoalStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd846ca20fc8170d57b2d738bb5885a3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GoalStatus(null);
    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Pose.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Pose()
    }

    if (msg.goal_status !== undefined) {
      resolved.goal_status = msg.goal_status;
    }
    else {
      resolved.goal_status = 0
    }

    return resolved;
    }
};

// Constants for message
GoalStatus.Constants = {
  ACTIVE: 0,
  REACHED: 1,
  FAILED: 2,
  ABORTED: 3,
}

module.exports = GoalStatus;
