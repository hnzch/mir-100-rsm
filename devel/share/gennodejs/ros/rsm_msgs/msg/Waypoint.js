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

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.visited = null;
      this.unreachable = null;
      this.routine = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('visited')) {
        this.visited = initObj.visited
      }
      else {
        this.visited = false;
      }
      if (initObj.hasOwnProperty('unreachable')) {
        this.unreachable = initObj.unreachable
      }
      else {
        this.unreachable = false;
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
    // Serializes a message object of type Waypoint
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [visited]
    bufferOffset = _serializer.bool(obj.visited, buffer, bufferOffset);
    // Serialize message field [unreachable]
    bufferOffset = _serializer.bool(obj.unreachable, buffer, bufferOffset);
    // Serialize message field [routine]
    bufferOffset = _serializer.string(obj.routine, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [visited]
    data.visited = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [unreachable]
    data.unreachable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [routine]
    data.routine = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.routine.length;
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rsm_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7f7105595f3a7bcd97c4dc459c67269';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Waypoint(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.visited !== undefined) {
      resolved.visited = msg.visited;
    }
    else {
      resolved.visited = false
    }

    if (msg.unreachable !== undefined) {
      resolved.unreachable = msg.unreachable;
    }
    else {
      resolved.unreachable = false
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

module.exports = Waypoint;
