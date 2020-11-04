;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::GetRobotPose)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'GetRobotPose (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::GETROBOTPOSE")
  (make-package "RSM_MSGS::GETROBOTPOSE"))
(unless (find-package "RSM_MSGS::GETROBOTPOSEREQUEST")
  (make-package "RSM_MSGS::GETROBOTPOSEREQUEST"))
(unless (find-package "RSM_MSGS::GETROBOTPOSERESPONSE")
  (make-package "RSM_MSGS::GETROBOTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rsm_msgs::GetRobotPoseRequest
  :super ros::object
  :slots ())

(defmethod rsm_msgs::GetRobotPoseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rsm_msgs::GetRobotPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod rsm_msgs::GetRobotPoseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass rsm_msgs::GetRobotPose
  :super ros::object
  :slots ())

(setf (get rsm_msgs::GetRobotPose :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get rsm_msgs::GetRobotPose :datatype-) "rsm_msgs/GetRobotPose")
(setf (get rsm_msgs::GetRobotPose :request) rsm_msgs::GetRobotPoseRequest)
(setf (get rsm_msgs::GetRobotPose :response) rsm_msgs::GetRobotPoseResponse)

(defmethod rsm_msgs::GetRobotPoseRequest
  (:response () (instance rsm_msgs::GetRobotPoseResponse :init)))

(setf (get rsm_msgs::GetRobotPoseRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get rsm_msgs::GetRobotPoseRequest :datatype-) "rsm_msgs/GetRobotPoseRequest")
(setf (get rsm_msgs::GetRobotPoseRequest :definition-)
      "---
geometry_msgs/Pose pose 			# Current robot pose

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
")

(setf (get rsm_msgs::GetRobotPoseResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get rsm_msgs::GetRobotPoseResponse :datatype-) "rsm_msgs/GetRobotPoseResponse")
(setf (get rsm_msgs::GetRobotPoseResponse :definition-)
      "---
geometry_msgs/Pose pose 			# Current robot pose

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
")



(provide :rsm_msgs/GetRobotPose "f192399f711a48924df9a394d37edd67")


