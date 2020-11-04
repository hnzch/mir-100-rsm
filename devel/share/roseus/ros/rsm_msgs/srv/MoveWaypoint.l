;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::MoveWaypoint)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'MoveWaypoint (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::MOVEWAYPOINT")
  (make-package "RSM_MSGS::MOVEWAYPOINT"))
(unless (find-package "RSM_MSGS::MOVEWAYPOINTREQUEST")
  (make-package "RSM_MSGS::MOVEWAYPOINTREQUEST"))
(unless (find-package "RSM_MSGS::MOVEWAYPOINTRESPONSE")
  (make-package "RSM_MSGS::MOVEWAYPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rsm_msgs::MoveWaypointRequest
  :super ros::object
  :slots (_position _pose ))

(defmethod rsm_msgs::MoveWaypointRequest
  (:init
   (&key
    ((:position __position) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _position (round __position))
   (setq _pose __pose)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
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
    ;; int64 _position
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _position
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _position (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _position) (= (length (_position . bv)) 2)) ;; bignum
              (write-long (ash (elt (_position . bv) 0) 0) s)
              (write-long (ash (elt (_position . bv) 1) -1) s))
             ((and (class _position) (= (length (_position . bv)) 1)) ;; big1
              (write-long (elt (_position . bv) 0) s)
              (write-long (if (>= _position 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _position s)(write-long (if (>= _position 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _position
#+(or :alpha :irix6 :x86_64)
      (setf _position (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _position (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass rsm_msgs::MoveWaypointResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::MoveWaypointResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rsm_msgs::MoveWaypoint
  :super ros::object
  :slots ())

(setf (get rsm_msgs::MoveWaypoint :md5sum-) "2707257014f8d83c4fab3f5f2f35968a")
(setf (get rsm_msgs::MoveWaypoint :datatype-) "rsm_msgs/MoveWaypoint")
(setf (get rsm_msgs::MoveWaypoint :request) rsm_msgs::MoveWaypointRequest)
(setf (get rsm_msgs::MoveWaypoint :response) rsm_msgs::MoveWaypointResponse)

(defmethod rsm_msgs::MoveWaypointRequest
  (:response () (instance rsm_msgs::MoveWaypointResponse :init)))

(setf (get rsm_msgs::MoveWaypointRequest :md5sum-) "2707257014f8d83c4fab3f5f2f35968a")
(setf (get rsm_msgs::MoveWaypointRequest :datatype-) "rsm_msgs/MoveWaypointRequest")
(setf (get rsm_msgs::MoveWaypointRequest :definition-)
      "int64 position                      # Position in array of waypoint to be moved
geometry_msgs/Pose pose				# New pose of the waypoint

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
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages
")

(setf (get rsm_msgs::MoveWaypointResponse :md5sum-) "2707257014f8d83c4fab3f5f2f35968a")
(setf (get rsm_msgs::MoveWaypointResponse :datatype-) "rsm_msgs/MoveWaypointResponse")
(setf (get rsm_msgs::MoveWaypointResponse :definition-)
      "int64 position                      # Position in array of waypoint to be moved
geometry_msgs/Pose pose				# New pose of the waypoint

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
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages
")



(provide :rsm_msgs/MoveWaypoint "2707257014f8d83c4fab3f5f2f35968a")


