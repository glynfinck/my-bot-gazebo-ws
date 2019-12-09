// Generated by gencpp from file irobotcreate2/Brushes.msg
// DO NOT EDIT!


#ifndef IROBOTCREATE2_MESSAGE_BRUSHES_H
#define IROBOTCREATE2_MESSAGE_BRUSHES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace irobotcreate2
{
template <class ContainerAllocator>
struct Brushes_
{
  typedef Brushes_<ContainerAllocator> Type;

  Brushes_()
    : header()
    , main_brush(false)
    , main_brush_pwm(0)
    , main_brush_direction(false)
    , side_brush(false)
    , side_brush_pwm(0)
    , side_brush_clockwise(false)
    , vacuum(false)
    , vacuum_pwm(0)  {
    }
  Brushes_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , main_brush(false)
    , main_brush_pwm(0)
    , main_brush_direction(false)
    , side_brush(false)
    , side_brush_pwm(0)
    , side_brush_clockwise(false)
    , vacuum(false)
    , vacuum_pwm(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _main_brush_type;
  _main_brush_type main_brush;

   typedef int8_t _main_brush_pwm_type;
  _main_brush_pwm_type main_brush_pwm;

   typedef uint8_t _main_brush_direction_type;
  _main_brush_direction_type main_brush_direction;

   typedef uint8_t _side_brush_type;
  _side_brush_type side_brush;

   typedef int8_t _side_brush_pwm_type;
  _side_brush_pwm_type side_brush_pwm;

   typedef uint8_t _side_brush_clockwise_type;
  _side_brush_clockwise_type side_brush_clockwise;

   typedef uint8_t _vacuum_type;
  _vacuum_type vacuum;

   typedef int8_t _vacuum_pwm_type;
  _vacuum_pwm_type vacuum_pwm;





  typedef boost::shared_ptr< ::irobotcreate2::Brushes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::irobotcreate2::Brushes_<ContainerAllocator> const> ConstPtr;

}; // struct Brushes_

typedef ::irobotcreate2::Brushes_<std::allocator<void> > Brushes;

typedef boost::shared_ptr< ::irobotcreate2::Brushes > BrushesPtr;
typedef boost::shared_ptr< ::irobotcreate2::Brushes const> BrushesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::irobotcreate2::Brushes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::irobotcreate2::Brushes_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace irobotcreate2

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'irobotcreate2': ['/home/glyn/mybot_ws/src/irobotcreate2ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::irobotcreate2::Brushes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::irobotcreate2::Brushes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irobotcreate2::Brushes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irobotcreate2::Brushes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irobotcreate2::Brushes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irobotcreate2::Brushes_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::irobotcreate2::Brushes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d4c497f02ce3244991df05e0d729013c";
  }

  static const char* value(const ::irobotcreate2::Brushes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd4c497f02ce32449ULL;
  static const uint64_t static_value2 = 0x91df05e0d729013cULL;
};

template<class ContainerAllocator>
struct DataType< ::irobotcreate2::Brushes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "irobotcreate2/Brushes";
  }

  static const char* value(const ::irobotcreate2::Brushes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::irobotcreate2::Brushes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"bool main_brush\n"
"int8 main_brush_pwm\n"
"bool main_brush_direction\n"
"bool side_brush\n"
"int8 side_brush_pwm\n"
"bool side_brush_clockwise\n"
"bool vacuum\n"
"int8 vacuum_pwm\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::irobotcreate2::Brushes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::irobotcreate2::Brushes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.main_brush);
      stream.next(m.main_brush_pwm);
      stream.next(m.main_brush_direction);
      stream.next(m.side_brush);
      stream.next(m.side_brush_pwm);
      stream.next(m.side_brush_clockwise);
      stream.next(m.vacuum);
      stream.next(m.vacuum_pwm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Brushes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::irobotcreate2::Brushes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::irobotcreate2::Brushes_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "main_brush: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.main_brush);
    s << indent << "main_brush_pwm: ";
    Printer<int8_t>::stream(s, indent + "  ", v.main_brush_pwm);
    s << indent << "main_brush_direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.main_brush_direction);
    s << indent << "side_brush: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.side_brush);
    s << indent << "side_brush_pwm: ";
    Printer<int8_t>::stream(s, indent + "  ", v.side_brush_pwm);
    s << indent << "side_brush_clockwise: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.side_brush_clockwise);
    s << indent << "vacuum: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.vacuum);
    s << indent << "vacuum_pwm: ";
    Printer<int8_t>::stream(s, indent + "  ", v.vacuum_pwm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IROBOTCREATE2_MESSAGE_BRUSHES_H
