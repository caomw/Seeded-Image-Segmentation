find_package( OpenCV 3.0.0 REQUIRED core highgui imgproc imgcodecs)

find_package(PkgConfig REQUIRED)
pkg_search_module(EIGEN REQUIRED eigen3)

find_package(GTest REQUIRED)

set( CMAKE_AUTOMOC ON)
set( CMAKE_AUTOUIC ON)
set( CMAKE_INCLUDE_CURRENT_DIR ON)


find_package(Qt4 REQUIRED)

include(${QT_USE_FILE})



set( external_includes ${EIGEN_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS} ${Qt4_INCLUDE_DIRS})

set( external_libs "${OpenCV_LIBS} ${Qt4_LIBRARIES} -lpthread")
