# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/karolinarola/esp/esp-idf/components/bootloader/subproject")
  file(MAKE_DIRECTORY "/Users/karolinarola/esp/esp-idf/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader"
  "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader-prefix"
  "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader-prefix/tmp"
  "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader-prefix/src"
  "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/karolinarola/Documents/EspIDF/ESP32-CAM-ESP-IDF-Live-Streaming-Web-Server/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
