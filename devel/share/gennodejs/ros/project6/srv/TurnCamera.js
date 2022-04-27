// Auto-generated. Do not edit!

// (in-package project6.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class TurnCameraRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.deg_turn = null;
    }
    else {
      if (initObj.hasOwnProperty('deg_turn')) {
        this.deg_turn = initObj.deg_turn
      }
      else {
        this.deg_turn = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnCameraRequest
    // Serialize message field [deg_turn]
    bufferOffset = _serializer.float32(obj.deg_turn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnCameraRequest
    let len;
    let data = new TurnCameraRequest(null);
    // Deserialize message field [deg_turn]
    data.deg_turn = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'project6/TurnCameraRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5d0bdb423d77c0cc03b401f73d9a3bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 deg_turn
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnCameraRequest(null);
    if (msg.deg_turn !== undefined) {
      resolved.deg_turn = msg.deg_turn;
    }
    else {
      resolved.deg_turn = 0.0
    }

    return resolved;
    }
};

class TurnCameraResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_image = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_image')) {
        this.camera_image = initObj.camera_image
      }
      else {
        this.camera_image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnCameraResponse
    // Serialize message field [camera_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.camera_image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnCameraResponse
    let len;
    let data = new TurnCameraResponse(null);
    // Deserialize message field [camera_image]
    data.camera_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.camera_image);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'project6/TurnCameraResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7531021576d34b7603105689e808cdfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image camera_image
    
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnCameraResponse(null);
    if (msg.camera_image !== undefined) {
      resolved.camera_image = sensor_msgs.msg.Image.Resolve(msg.camera_image)
    }
    else {
      resolved.camera_image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = {
  Request: TurnCameraRequest,
  Response: TurnCameraResponse,
  md5sum() { return '48e9c72001527a85ebcc47fcec8f9237'; },
  datatype() { return 'project6/TurnCamera'; }
};
