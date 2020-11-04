
"use strict";

let GoalCompleted = require('./GoalCompleted.js')
let MoveWaypoint = require('./MoveWaypoint.js')
let GetWaypointRoutines = require('./GetWaypointRoutines.js')
let SetNavigationGoal = require('./SetNavigationGoal.js')
let SetOperationMode = require('./SetOperationMode.js')
let RemoveWaypoint = require('./RemoveWaypoint.js')
let SetWaypointFollowingMode = require('./SetWaypointFollowingMode.js')
let WaypointVisited = require('./WaypointVisited.js')
let AddWaypoint = require('./AddWaypoint.js')
let GetCmdVelRecording = require('./GetCmdVelRecording.js')
let WaypointUnreachable = require('./WaypointUnreachable.js')
let GetWaypoints = require('./GetWaypoints.js')
let GetRobotPose = require('./GetRobotPose.js')
let GetNavigationGoal = require('./GetNavigationGoal.js')
let SetWaypointRoutine = require('./SetWaypointRoutine.js')

module.exports = {
  GoalCompleted: GoalCompleted,
  MoveWaypoint: MoveWaypoint,
  GetWaypointRoutines: GetWaypointRoutines,
  SetNavigationGoal: SetNavigationGoal,
  SetOperationMode: SetOperationMode,
  RemoveWaypoint: RemoveWaypoint,
  SetWaypointFollowingMode: SetWaypointFollowingMode,
  WaypointVisited: WaypointVisited,
  AddWaypoint: AddWaypoint,
  GetCmdVelRecording: GetCmdVelRecording,
  WaypointUnreachable: WaypointUnreachable,
  GetWaypoints: GetWaypoints,
  GetRobotPose: GetRobotPose,
  GetNavigationGoal: GetNavigationGoal,
  SetWaypointRoutine: SetWaypointRoutine,
};
