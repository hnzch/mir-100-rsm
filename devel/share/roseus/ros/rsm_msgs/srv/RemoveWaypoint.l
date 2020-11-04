;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::RemoveWaypoint)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'RemoveWaypoint (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::REMOVEWAYPOINT")
  (make-package "RSM_MSGS::REMOVEWAYPOINT"))
(unless (find-package "RSM_MSGS::REMOVEWAYPOINTREQUEST")
  (make-package "RSM_MSGS::REMOVEWAYPOINTREQUEST"))
(unless (find-package "RSM_MSGS::REMOVEWAYPOINTRESPONSE")
  (make-package "RSM_MSGS::REMOVEWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::RemoveWaypointRequest
  :super ros::object
  :slots (_position ))

(defmethod rsm_msgs::RemoveWaypointRequest
  (:init
   (&key
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int64 _position
    8
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
   ;;
   self)
  )

(defclass rsm_msgs::RemoveWaypointResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::RemoveWaypointResponse
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

(defclass rsm_msgs::RemoveWaypoint
  :super ros::object
  :slots ())

(setf (get rsm_msgs::RemoveWaypoint :md5sum-) "3e07da95f3577b8955e235d4863c62b0")
(setf (get rsm_msgs::RemoveWaypoint :datatype-) "rsm_msgs/RemoveWaypoint")
(setf (get rsm_msgs::RemoveWaypoint :request) rsm_msgs::RemoveWaypointRequest)
(setf (get rsm_msgs::RemoveWaypoint :response) rsm_msgs::RemoveWaypointResponse)

(defmethod rsm_msgs::RemoveWaypointRequest
  (:response () (instance rsm_msgs::RemoveWaypointResponse :init)))

(setf (get rsm_msgs::RemoveWaypointRequest :md5sum-) "3e07da95f3577b8955e235d4863c62b0")
(setf (get rsm_msgs::RemoveWaypointRequest :datatype-) "rsm_msgs/RemoveWaypointRequest")
(setf (get rsm_msgs::RemoveWaypointRequest :definition-)
      "int64 position                      # Position in array of waypoint to be removed
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")

(setf (get rsm_msgs::RemoveWaypointResponse :md5sum-) "3e07da95f3577b8955e235d4863c62b0")
(setf (get rsm_msgs::RemoveWaypointResponse :datatype-) "rsm_msgs/RemoveWaypointResponse")
(setf (get rsm_msgs::RemoveWaypointResponse :definition-)
      "int64 position                      # Position in array of waypoint to be removed
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")



(provide :rsm_msgs/RemoveWaypoint "3e07da95f3577b8955e235d4863c62b0")


