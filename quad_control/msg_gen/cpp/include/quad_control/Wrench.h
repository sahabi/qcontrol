/* Auto-generated by genmsg_cpp for file /home/sahabi/ws/sandbox/quad_control/msg/Wrench.msg */
#ifndef QUAD_CONTROL_MESSAGE_WRENCH_H
#define QUAD_CONTROL_MESSAGE_WRENCH_H
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

#include "quad_control/Vector3.h"
#include "quad_control/Vector3.h"

namespace quad_control
{
template <class ContainerAllocator>
struct Wrench_ {
  typedef Wrench_<ContainerAllocator> Type;

  Wrench_()
  : force()
  , torque()
  {
  }

  Wrench_(const ContainerAllocator& _alloc)
  : force(_alloc)
  , torque(_alloc)
  {
  }

  typedef  ::quad_control::Vector3_<ContainerAllocator>  _force_type;
   ::quad_control::Vector3_<ContainerAllocator>  force;

  typedef  ::quad_control::Vector3_<ContainerAllocator>  _torque_type;
   ::quad_control::Vector3_<ContainerAllocator>  torque;


  typedef boost::shared_ptr< ::quad_control::Wrench_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quad_control::Wrench_<ContainerAllocator>  const> ConstPtr;
}; // struct Wrench
typedef  ::quad_control::Wrench_<std::allocator<void> > Wrench;

typedef boost::shared_ptr< ::quad_control::Wrench> WrenchPtr;
typedef boost::shared_ptr< ::quad_control::Wrench const> WrenchConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::quad_control::Wrench_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::quad_control::Wrench_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace quad_control

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::quad_control::Wrench_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::quad_control::Wrench_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::quad_control::Wrench_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4f539cf138b23283b520fd271b567936";
  }

  static const char* value(const  ::quad_control::Wrench_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x4f539cf138b23283ULL;
  static const uint64_t static_value2 = 0xb520fd271b567936ULL;
};

template<class ContainerAllocator>
struct DataType< ::quad_control::Wrench_<ContainerAllocator> > {
  static const char* value() 
  {
    return "quad_control/Wrench";
  }

  static const char* value(const  ::quad_control::Wrench_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::quad_control::Wrench_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Vector3  force\n\
Vector3  torque\n\
================================================================================\n\
MSG: quad_control/Vector3\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const  ::quad_control::Wrench_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::quad_control::Wrench_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::quad_control::Wrench_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.force);
    stream.next(m.torque);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Wrench_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quad_control::Wrench_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::quad_control::Wrench_<ContainerAllocator> & v) 
  {
    s << indent << "force: ";
s << std::endl;
    Printer< ::quad_control::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.force);
    s << indent << "torque: ";
s << std::endl;
    Printer< ::quad_control::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.torque);
  }
};


} // namespace message_operations
} // namespace ros

#endif // QUAD_CONTROL_MESSAGE_WRENCH_H
