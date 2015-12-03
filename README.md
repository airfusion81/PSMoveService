# PSMoveService
A background service that communicates with the psmove and serves its pose and button states.

# Download

`git clone --recursive https://github.com/cboulay/PSMoveService.git`

`cd PSMoveService`

# Build Dependencies

1. Compiler
    * Windows
        * Visual Studio 2013 is required by OpenCV 3.0.0 pre-compiled binaries.
    * Mac
        * Tested with XCode/clang. gcc may work.
1. OpenCV
    * I am opting for a system install of opencv instead of project-specific.
    * Windows
        * Download [OpenCV 3.0](http://sourceforge.net/projects/opencvlibrary/files/opencv-win/3.0.0/opencv-3.0.0.exe/download)
        * The CMake scripts assume you install to the default directory (C:\OpenCV-3.0.0).
        If not, you will have to add a `-DOpenCV_DIR=<install dir>\build` flag to your cmake command.
    * Mac
        * Install [homebrew](http://brew.sh/) if you do not already have it.
        * `brew update`
        * `brew tap homebrew/science`
        * `brew install opencv`
1. Boost
    * Windows
        * From [here](sourceforge.net/projects/boost/files/boost-binaries/1.59.0/),
        get boost_1_59_0-msvc-12.0-32.exe and/or -64.exe.
        * Install to `C:\` (e.g., resulting in `C:\boost_1_59_0\`)
        * This path will be referred to BOOST_ROOT later
    * Mac
        * `brew install boost`
1. protobuf
    * Windows        
        * cd to thirdparty\protobuf
        * mkdir vsprojects & cd vsprojects
        * cmake -G "Visual Studio 12 2013" -Dprotobuf_DEBUG_POSTFIX="" -Dprotobuf_BUILD_TESTS=OFF ../cmake
        * Open protobuf.sln
        * Select Release|Win32 and Build > Rebuild Solution
        * Select Debug|Win32 and Build > Rebuild Solution
    * Mac
        * `brew install protobuf --devel`
        * It will likely be necessary to drop the --devel flag after >= 3.0 becomes stable.
1. Optional: libusb
    * Only necessary for PS3EYEDriver (required on Mac and Windows 64-bit)
    * Windows:
        * Open PSMoveService\thirdparty\libusb\msvc\libusb_2013.sln
        * For each combination of Release/Debug * Win32/x64, right-click on libusb-1.0 (static) and Build.
        * Close this Visual Studio Solution.
    * Mac:
        * `cd thirdparty/libusb`
        * `./autogen.sh`
        * `./configure`
        * `./configure` (yes, a second time)
        * `make`
1. Optional: [CL Eye Driver](https://codelaboratories.com/products/eye/driver/)
    * Only necessary for Windows 32-bit if not using PS3EYEDriver
    * Currently $2.99 USD (paypal or credit card)
    * Platform SDK not necessary    
1. Optional: SDL2
    * Optional - Only required if you are building the the configuration client.
    * Windows :
        * `cd third_party/SDL2`
        * `mkdir build`
        * `cd build`
        * `cmake .. -G "Visual Studio 12 2013" -DDIRECTX=OFF`
        * Open the solution (psmoveapi\external\SDL2\build\SDL2.sln)
        * Change the target to Release (at the top of the VS window).
        * Build the solution (Build Menu -> Build Solution).            
    * Mac
        `cd third_party/SDL2`
        `mkdir build`
        `cd build`
        `cmake ..`
   
# Make PSMoveService

1. `mkdir build & cd build`
1. Run cmake
    * Windows: `cmake .. -G "Visual Studio 12"`
    * Mac: `cmake ..`

# Build PSMoveService

### Windows

1. Open <path_to_repo>\build\PSMoveService.sln
1. Change to "Release" configuration
1. Rt-click on the project and build