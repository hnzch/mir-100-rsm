
"use strict";

let Serial = require('./Serial.js');
let JoystickVel = require('./JoystickVel.js');
let BrakeState = require('./BrakeState.js');
let Gpio = require('./Gpio.js');
let WorldMap = require('./WorldMap.js');
let ResourcesState = require('./ResourcesState.js');
let ExternalRobots = require('./ExternalRobots.js');
let Error = require('./Error.js');
let LocalMapStat = require('./LocalMapStat.js');
let Encoders = require('./Encoders.js');
let ExternalRobot = require('./ExternalRobot.js');
let RobotState = require('./RobotState.js');
let MirStatus = require('./MirStatus.js');
let Twist2D = require('./Twist2D.js');
let WorldModel = require('./WorldModel.js');
let HeightState = require('./HeightState.js');
let BMSData = require('./BMSData.js');
let HookStatus = require('./HookStatus.js');
let IOs = require('./IOs.js');
let Trolley = require('./Trolley.js');
let PlanSegment = require('./PlanSegment.js');
let PlanSegments = require('./PlanSegments.js');
let UserPrompt = require('./UserPrompt.js');
let MirExtra = require('./MirExtra.js');
let GripperState = require('./GripperState.js');
let Events = require('./Events.js');
let HookExtendedStatus = require('./HookExtendedStatus.js');
let MissionCtrlState = require('./MissionCtrlState.js');
let StampedEncoders = require('./StampedEncoders.js');
let PowerBoardMotorStatus = require('./PowerBoardMotorStatus.js');
let ResourceState = require('./ResourceState.js');
let PalletLifterStatus = require('./PalletLifterStatus.js');
let SafetyStatus = require('./SafetyStatus.js');
let Proximity = require('./Proximity.js');
let Pendant = require('./Pendant.js');
let Devices = require('./Devices.js');
let ChargingState = require('./ChargingState.js');
let Path = require('./Path.js');
let Event = require('./Event.js');
let RobotMode = require('./RobotMode.js');
let MissionCtrlCommand = require('./MissionCtrlCommand.js');
let BatteryCurrents = require('./BatteryCurrents.js');
let Pose2D = require('./Pose2D.js');
let RobotStatus = require('./RobotStatus.js');
let Device = require('./Device.js');
let WebPath = require('./WebPath.js');

module.exports = {
  Serial: Serial,
  JoystickVel: JoystickVel,
  BrakeState: BrakeState,
  Gpio: Gpio,
  WorldMap: WorldMap,
  ResourcesState: ResourcesState,
  ExternalRobots: ExternalRobots,
  Error: Error,
  LocalMapStat: LocalMapStat,
  Encoders: Encoders,
  ExternalRobot: ExternalRobot,
  RobotState: RobotState,
  MirStatus: MirStatus,
  Twist2D: Twist2D,
  WorldModel: WorldModel,
  HeightState: HeightState,
  BMSData: BMSData,
  HookStatus: HookStatus,
  IOs: IOs,
  Trolley: Trolley,
  PlanSegment: PlanSegment,
  PlanSegments: PlanSegments,
  UserPrompt: UserPrompt,
  MirExtra: MirExtra,
  GripperState: GripperState,
  Events: Events,
  HookExtendedStatus: HookExtendedStatus,
  MissionCtrlState: MissionCtrlState,
  StampedEncoders: StampedEncoders,
  PowerBoardMotorStatus: PowerBoardMotorStatus,
  ResourceState: ResourceState,
  PalletLifterStatus: PalletLifterStatus,
  SafetyStatus: SafetyStatus,
  Proximity: Proximity,
  Pendant: Pendant,
  Devices: Devices,
  ChargingState: ChargingState,
  Path: Path,
  Event: Event,
  RobotMode: RobotMode,
  MissionCtrlCommand: MissionCtrlCommand,
  BatteryCurrents: BatteryCurrents,
  Pose2D: Pose2D,
  RobotStatus: RobotStatus,
  Device: Device,
  WebPath: WebPath,
};
