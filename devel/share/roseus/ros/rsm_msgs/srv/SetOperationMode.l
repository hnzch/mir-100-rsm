;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::SetOperationMode)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'SetOperationMode (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::SETOPERATIONMODE")
  (make-package "RSM_MSGS::SETOPERATIONMODE"))
(unless (find-package "RSM_MSGS::SETOPERATIONMODEREQUEST")
  (make-package "RSM_MSGS::SETOPERATIONMODEREQUEST"))
(unless (find-package "RSM_MSGS::SETOPERATIONMODERESPONSE")
  (make-package "RSM_MSGS::SETOPERATIONMODERESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::SetOperationModeRequest
  :super ros::object
  :slots (_operationMode ))

(defmethod rsm_msgs::SetOperationModeRequest
  (:init
   (&key
    ((:operationMode __operationMode) (instance rsm_msgs::OperationMode :init))
    )
   (send-super :init)
   (setq _operationMode __operationMode)
   self)
  (:operationMode
   (&rest __operationMode)
   (if (keywordp (car __operationMode))
       (send* _operationMode __operationMode)
     (progn
       (if __operationMode (setq _operationMode (car __operationMode)))
       _operationMode)))
  (:serialization-length
   ()
   (+
    ;; rsm_msgs/OperationMode _operationMode
    (send _operationMode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rsm_msgs/OperationMode _operationMode
       (send _operationMode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rsm_msgs/OperationMode _operationMode
     (send _operationMode :deserialize buf ptr-) (incf ptr- (send _operationMode :serialization-length))
   ;;
   self)
  )

(defclass rsm_msgs::SetOperationModeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::SetOperationModeResponse
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

(defclass rsm_msgs::SetOperationMode
  :super ros::object
  :slots ())

(setf (get rsm_msgs::SetOperationMode :md5sum-) "2760717e8c5a5aefc48015322fde6db7")
(setf (get rsm_msgs::SetOperationMode :datatype-) "rsm_msgs/SetOperationMode")
(setf (get rsm_msgs::SetOperationMode :request) rsm_msgs::SetOperationModeRequest)
(setf (get rsm_msgs::SetOperationMode :response) rsm_msgs::SetOperationModeResponse)

(defmethod rsm_msgs::SetOperationModeRequest
  (:response () (instance rsm_msgs::SetOperationModeResponse :init)))

(setf (get rsm_msgs::SetOperationModeRequest :md5sum-) "2760717e8c5a5aefc48015322fde6db7")
(setf (get rsm_msgs::SetOperationModeRequest :datatype-) "rsm_msgs/SetOperationModeRequest")
(setf (get rsm_msgs::SetOperationModeRequest :definition-)
      "rsm_msgs/OperationMode operationMode	#Info about operation mode including emergency stop

================================================================================
MSG: rsm_msgs/OperationMode
#Operation mode including information about emergency stop
bool emergencyStop					# Is emergency stop activated

uint8 STOPPED = 0        			# Robot is stopped
uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	
uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	

uint8 mode							# Operation mode
---
bool success                       				# Indicate successful run of triggered service
string message                      			# Informational, e.g. for error messages
")

(setf (get rsm_msgs::SetOperationModeResponse :md5sum-) "2760717e8c5a5aefc48015322fde6db7")
(setf (get rsm_msgs::SetOperationModeResponse :datatype-) "rsm_msgs/SetOperationModeResponse")
(setf (get rsm_msgs::SetOperationModeResponse :definition-)
      "rsm_msgs/OperationMode operationMode	#Info about operation mode including emergency stop

================================================================================
MSG: rsm_msgs/OperationMode
#Operation mode including information about emergency stop
bool emergencyStop					# Is emergency stop activated

uint8 STOPPED = 0        			# Robot is stopped
uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	
uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	

uint8 mode							# Operation mode
---
bool success                       				# Indicate successful run of triggered service
string message                      			# Informational, e.g. for error messages
")



(provide :rsm_msgs/SetOperationMode "2760717e8c5a5aefc48015322fde6db7")


