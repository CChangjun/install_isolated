;; Auto-generated. Do not edit!


(when (boundp 'dong_core::sensor)
  (if (not (find-package "DONG_CORE"))
    (make-package "DONG_CORE"))
  (shadow 'sensor (find-package "DONG_CORE")))
(unless (find-package "DONG_CORE::SENSOR")
  (make-package "DONG_CORE::SENSOR"))

(in-package "ROS")
;;//! \htmlinclude sensor.msg.html


(defclass dong_core::sensor
  :super ros::object
  :slots (_left_encoder _right_encoder _yaw_angle _quest ))

(defmethod dong_core::sensor
  (:init
   (&key
    ((:left_encoder __left_encoder) 0.0)
    ((:right_encoder __right_encoder) 0.0)
    ((:yaw_angle __yaw_angle) 0.0)
    ((:quest __quest) nil)
    )
   (send-super :init)
   (setq _left_encoder (float __left_encoder))
   (setq _right_encoder (float __right_encoder))
   (setq _yaw_angle (float __yaw_angle))
   (setq _quest __quest)
   self)
  (:left_encoder
   (&optional __left_encoder)
   (if __left_encoder (setq _left_encoder __left_encoder)) _left_encoder)
  (:right_encoder
   (&optional __right_encoder)
   (if __right_encoder (setq _right_encoder __right_encoder)) _right_encoder)
  (:yaw_angle
   (&optional __yaw_angle)
   (if __yaw_angle (setq _yaw_angle __yaw_angle)) _yaw_angle)
  (:quest
   (&optional (__quest :null))
   (if (not (eq __quest :null)) (setq _quest __quest)) _quest)
  (:serialization-length
   ()
   (+
    ;; float64 _left_encoder
    8
    ;; float64 _right_encoder
    8
    ;; float64 _yaw_angle
    8
    ;; bool _quest
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left_encoder
       (sys::poke _left_encoder (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_encoder
       (sys::poke _right_encoder (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _quest
       (if _quest (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left_encoder
     (setq _left_encoder (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_encoder
     (setq _right_encoder (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _quest
     (setq _quest (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dong_core::sensor :md5sum-) "2e51394dd57ce1e429a6d473451795f5")
(setf (get dong_core::sensor :datatype-) "dong_core/sensor")
(setf (get dong_core::sensor :definition-)
      "float64 left_encoder
float64 right_encoder
float64 yaw_angle

bool quest


")



(provide :dong_core/sensor "2e51394dd57ce1e429a6d473451795f5")


