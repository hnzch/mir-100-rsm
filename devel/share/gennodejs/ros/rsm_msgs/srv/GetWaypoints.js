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

let WaypointArray = require('../msg/WaypointArray.js');

//-----------------------------------------------------------

class GetWaypointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWaypointsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWaypointsRequest
    let len;
    let data = new GetWaypointsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/GetWaypointsRequest';
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
    const resolved = new GetWaypointsRequest(null);
    return resolved;
    }
};

class GetWaypointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypointArray = null;
    }
    else {
      if (initObj.hasOwnProperty('waypointArray')) {
        this.waypointArray = initObj.waypointArray
      }
      else {
        this.waypointArray = new WaypointArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWaypointsResponse
    // Serialize message field [waypointArray]
    bufferOffset = WaypointArray.serialize(obj.waypointArray, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWaypointsResponse
    let len;
    let data = new GetWaypointsResponse(null);
    // Deserialize message field [waypointArray]
    data.waypointArray = WaypointArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WaypointArray.getMessageSize(object.waypointArray);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rsm_msgs/GetWaypointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea0a0717f7375d28edf3c4cefe8095da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    rsm_msgs/WaypointArray waypointArray   # Array of all waypoints
    
    
    ================================================================================
    MSG: rsm_msgs/WaypointArray
    # Describes an array of waypoints to follow
    std_msgs/Header header
    string ns
    
    uint8 mode              # Waypoint following mode
    
    uint8 SINGLE = 0        # Single trip from start to end
    uint8 ROUNDTRIP = 1     # Drive from start to end then to start again and repeat
    uint8 PATROL = 2        # Drive from start to end then in reverse and repeat
    
    bool reverse            # Driving from start to end (=false) or end to start (=true)
    
    Waypoint[] waypoints    # Array of all waypoints for following
    int32 waypoints_size     # Number of waypoints in the waypoint array
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new GetWaypointsResponse(null);
    if (msg.waypointArray !== undefined) {
      resolved.waypointArray = WaypointArray.Resolve(msg.waypointArray)
    }
    else {
      resolved.waypointArray = new WaypointArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWaypointsRequest,
  Response: GetWaypointsResponse,
  md5sum() { return 'ea0a0717f7375d28edf3c4cefe8095da'; },
  datatype() { return 'rsm_msgs/GetWaypoints'; }
};
