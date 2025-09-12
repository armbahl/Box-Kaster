# Box Kaster

[**Box Kaster uses the CC BY-SA 4.0 license.**]([https://gitlab.com/ARandomMeatball/box-kaster/-/blob/main/LICENSE?ref_type=heads](https://github.com/armbahl/Box-Kaster/blob/main/LICENSE))

All other components of this program use different licenses. [**Click here to read them.**](https://github.com/armbahl/Box-Kaster/blob/main/LICENSE_OTHERS)

All licenses are also included in a dedicated submenu within the program.

---

This is a program I wrote to help with measuring fold lines on cardboard in the process of creating custom boxes.

I chose GODOT because it was the easiest thing to cross-compile with, plus it has a snazzy interface for creating UI.
It was built with both desktop and mobile use in mind. It has been tested on Windows, Linux (Fedora, openSUSE, Arch, Debian), and Android.

There is a built-in tutorial on how to create a box. It is located within Options > Help > How to Make A Box.

## Example
This program can help you turn a flat piece of cardboard like this,

<img src="https://github.com/armbahl/Box-Kaster/blob/main/Photos/B_6.jpg?raw=true" width="400"/>

Into a box like this!

<img src="https://github.com/armbahl/Box-Kaster/blob/main/Photos/B_6.jpg?raw=true" width="300"/>

## How to Compile
You will need GODOT version 4.3 or above on your machine. You can grab the lastest stable version [here](https://godotengine.org/download/windows/). Once you have GODOT on your system, you can go to the "Export" option within the engine and export it for your desired platform.
In case you need more information, you can read the official compilation methods on the GODOT website. Their respective links are below.

Please note that this program has not been tested on iOS and macOS.

### [Compile for Windows](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_windows.html)
---
- To have a proper windows icon, [download rcedit](https://github.com/electron/rcedit/releases/tag/v2.0.0).
    - Download "rcedit-x86.exe" from the releases section, place it into a directory that you will remember (NOT in the source directory of this project), link it in Editor > Editor Settings > Export > rcedit, then export for Windows.

### [Compile for Linux](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_linux.html)

### [Compile for Android](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_android.html)

---

If you are looking for a CLI version, check out [Box Kaster Lite](https://gitlab.com/ARandomMeatball/box-kaster-lite)! It's lightweight, written in C++, and incredibly fast.

Please note that you will need to compile the Lite version using a C++ compiler of your choice.
