/* Auto-generated by genmsg_cpp for file /home/sahabi/ws/sandbox/quad_control/msg/Point.msg */
#ifndef QUAD_CONTROL_MESSAGE_POINT_H
#define QUAD_CONTROL_MESSAGE_POINT_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace quad_control
{
template <class ContainerAllocator>
struct Point_ {
  typedef Point_<ContainerAllocator> Type;

  Point_()
  : x(0.0)
  , y(0.0)
  , z(0.0)
  {
  }

  Point_(const ContainerAllocator& _alloc)
  : x(0.0)
  , y(0.0)
  , z(0.0)
  {
  }

  typedef double _x_type;
  double x;

  typedef double _y_type;
  double y;

  typedef double _z_type;
  double z;


  typedef boost::shared_ptr< ::quad_control::Point_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quad_control::Point_<ContainerAllocator>  const> ConstPtr;
}; // struct Point
typedef  ::quad_control::Point_<std::allocator<void> > Point;

typedef boost::shared_ptr< ::quad_control::Point> PointPtr;
typedef boost::shared_ptr< ::quad_control::Point const> PointConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::quad_control::Point_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::quad_control::Point_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace quad_control

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::quad_control::Point_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::quad_control::Point_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::quad_control::Point_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4a842b65f413084dc2b10fb484ea7f17";
  }

  static const char* value(const  ::quad_control::Point_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x4a842b65f413084dULL;
  static const uint64_t static_value2 = 0xc2b10fb484ea7f17ULL;
};

template<class ContainerAllocator>
struct DataType< ::quad_control::Point_<ContainerAllocator> > {
  static const char* value() 
  {
    return "quad_control/Point";
  }

  static const char* value(const  ::quad_control::Point_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::quad_control::Point_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const  ::quad_control::Point_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::quad_control::Point_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::quad_control::Point_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.z);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Point_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quad_control::Point_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::quad_control::Point_<ContainerAllocator> & v) 
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};


} // namespace message_operations
} // namespace ros

#endif // QUAD_CONTROL_MESSAGE_POINT_H
