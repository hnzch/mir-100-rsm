;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::OperationMode)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'OperationMode (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::OPERATIONMODE")
  (make-package "RSM_MSGS::OPERATIONMODE"))

(in-package "ROS")
;;//! \htmlinclude OperationMode.msg.html


(intern "*STOPPED*" (find-package "RSM_MSGS::OPERATIONMODE"))
(shadow '*STOPPED* (find-package "RSM_MSGS::OPERATIONMODE"))
(defconstant rsm_msgs::OperationMode::*STOPPED* 0)
(intern "*AUTONOMOUS*" (find-package "RSM_MSGS::OPERATIONMODE"))
(shadow '*AUTONOMOUS* (find-package "RSM_MSGS::OPERATIONMODE"))
(defconstant rsm_msgs::OperationMode::*AUTONOMOUS* 1)
(intern "*TELEOPERATION*" (find-package "RSM_MSGS::OPERATIONMODE"))
(shadow '*TELEOPERATION* (find-package "RSM_MSGS::OPERATIONMODE"))
(defconstant rsm_msgs::OperationMode::*TELEOPERATION* 2)
(defclass rsm_msgs::OperationMode
  :super ros::object
  :slots (_emergencyStop _mode ))

(defmethod rsm_msgs::OperationMode
  (:init
   (&key
    ((:emergencyStop __emergencyStop) nil)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _emergencyStop __emergencyStop)
   (setq _mode (round __mode))
   self)
  (:emergencyStop
   (&optional __emergencyStop)
   (if __emergencyStop (setq _emergencyStop __emergencyStop)) _emergencyStop)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; bool _emergencyStop
    1
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _emergencyStop
       (if _emergencyStop (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _emergencyStop
     (setq _emergencyStop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rsm_msgs::OperationMode :md5sum-) "3a2b892239d01889665a0278d874ed60")
(setf (get rsm_msgs::OperationMode :datatype-) "rsm_msgs/OperationMode")
(setf (get rsm_msgs::OperationMode :definition-)
      "#Operation mode including information about emergency stop
bool emergencyStop					# Is emergency stop activated

uint8 STOPPED = 0        			# Robot is stopped
uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	
uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	

uint8 mode							# Operation mode

")



(provide :rsm_msgs/OperationMode "3a2b892239d01889665a0278d874ed60")


