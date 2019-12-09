# Install script for directory: /home/glyn/mybot_ws/src/irobotcreate2ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/glyn/mybot_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irobotcreate2/msg" TYPE FILE FILES
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Battery.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Brushes.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Bumper.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Buttons.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Diagnostic.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/DigitLeds.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/IRCharacter.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Leds.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Note.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/PlaySong.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/RoombaIR.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/RoombaSwitch.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/ScheduleLeds.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/Song.msg"
    "/home/glyn/mybot_ws/src/irobotcreate2ros/msg/WheelDrop.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irobotcreate2/cmake" TYPE FILE FILES "/home/glyn/mybot_ws/build/irobotcreate2ros/catkin_generated/installspace/irobotcreate2-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/glyn/mybot_ws/devel/include/irobotcreate2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/glyn/mybot_ws/devel/share/roseus/ros/irobotcreate2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/glyn/mybot_ws/devel/share/common-lisp/ros/irobotcreate2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/glyn/mybot_ws/devel/share/gennodejs/ros/irobotcreate2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/glyn/mybot_ws/devel/lib/python2.7/dist-packages/irobotcreate2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/glyn/mybot_ws/devel/lib/python2.7/dist-packages/irobotcreate2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/glyn/mybot_ws/build/irobotcreate2ros/catkin_generated/installspace/irobotcreate2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irobotcreate2/cmake" TYPE FILE FILES "/home/glyn/mybot_ws/build/irobotcreate2ros/catkin_generated/installspace/irobotcreate2-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irobotcreate2/cmake" TYPE FILE FILES
    "/home/glyn/mybot_ws/build/irobotcreate2ros/catkin_generated/installspace/irobotcreate2Config.cmake"
    "/home/glyn/mybot_ws/build/irobotcreate2ros/catkin_generated/installspace/irobotcreate2Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irobotcreate2" TYPE FILE FILES "/home/glyn/mybot_ws/src/irobotcreate2ros/package.xml")
endif()

