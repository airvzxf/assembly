# GDB

The GNU Debugger (GDB) is a portable debugger that runs on many Unix-like systems and works for many programming languages.


## Extensions for GDB

In *Arch Linux* we have the next packages.

Official
- `gdb-dashboard`: Modular visual interface for GDB in Python.
- `peda`: Python Exploit Development Assistance for GDB.
- `pwndbg`: Makes debugging with GDB suck less.

AUR
- `gef-git`: Multi-Architecture GDB Enhanced Features for Exploiters & Reverse-Engineers.


## GUIs for GDB
- `ccdebug`: A Qt-based graphical gdb debugger frontend.
- `ddd`: A graphical front-end for command-line debuggers such as GDB, JDB, pydb, perl debugger.
- `ddd-ftn`: Adapted for use at Faculty of Technical Sciences, University of Novi Sad.
- `gdb-frontend-bin`: An easy, flexible and extensionable GUI debugger.
- `gede`: Graphical frontend (GUI) to GDB written in Qt.
- `python-gdbgui`: Browser-based frontend to gdb (gnu debugger)..
- `voltron-git`: UI for GDB, LLDB and Vivisect's VDB.
- `xxgdb`: A simple but powerful graphical interface to gdb.


## Install all

```sh
pacman -S gdb-dashboard peda pwndbg
yay -S gef-git python-gdbgui voltron-git xxgdb
yay -S ccdebug ddd ddd-ftn gdb-frontend-bin gede
```
