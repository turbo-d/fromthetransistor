## From the Transistor to the Web Browser

In my free time I'm working on designing and building a (stripped-down) computer both for fun and to fill gaps in my knowledge. This project is based on the original course proposal found here https://github.com/geohot/fromthetransistor. I'll be loosely following the guidelines and adding my own tweaks and refinements to the requirements along the way. I'll do my best to keep track of hours spent on it to experiment with how feasible the original proposed schedule is (for me at least). Really trying to focus on learning by doing here, rather than getting too caught up in the theory and details to even start anything.

### Project Outline

#### Section 0: Hardware & HDL: What language is hardware coded in? -- 1 weeks
- Blinking an LED(Verilog) -- Your first little program! Getting the simulator working. Learning Verilog.
- Building a UART(Verilog) -- An intro chapter to Verilog, copy a real UART, introducing the concept of MMIO, though the serial port may be semihosting. Serial test echo program and led control.

#### Section 1: Processor: What is a processor anyway? -- 3 weeks
- Coding an assembler(Python) -- Happens in parallel with the CPU building. Teaches you ARM assembly. Initially outputs just binary files, but changed when you write a linker.
- Building a ARM7 CPU(Verilog) -- A simple pipeline to start, decode, fetch, execute. Simulatable and synthesizable.
- Coding a bootrom(Assembler, 40) -- This allows code download into RAM over the serial port, and is baked into the FPGA image.

#### Section 2: Compiler: A “high” level language -- 3 weeks
- Building a C compiler(Haskell) -- Cover the basics of compiler design. Write a parser. Outputs ARM assembly.
- Building a linker(Python) -- Output elf files. Use for testing with QEMU, semihosting.
- libc + malloc(C) -- libc is only half here, things like memcpy and memset and printf, but no syscall wrappers.
- Building an ethernet controller(Verilog) -- Talk to a real PHY, consider carefully MMIO design.
- Writing a bootloader(C) -- Write ethernet program to boot kernel over UDP. Maybe don’t redownload over serial each time and embed in FPGA image.

#### Section 3: Operating System: Software we take for granted -- 3 weeks
- Building an MMU(Verilog) -- ARM9ish. Maybe also a memory controller, depending on how the FPGA is, then add the init code to your bootloader.
- Building an operating system(C) -- UNIXish, only user space threads. (open, read, write, close), (fork, execve, wait, sleep, exit), (mmap, munmap, mprotect). Consider the debug interface you are using, ranging from printf to perhaps a gdbremote stub into kernel.
- Talking to an SD card(Verilog) -- The last hardware you have to do. And a driver
- FAT(C) -- A real filesystem, I think fat is the simplest
- init, shell, download, cat, ls, rm(C) -- Your first user space programs.

#### Section 4: The Web: Coming online -- 1 week (probably more like 3 weeks)
- Building a TCP stack(C) -- Probably coded in the kernel, integrate the ethernet driver into the kernel. Add support for networking syscalls to kernel. (send, recv, bind, connect)
- telnetd, the power of being multiprocess(C) --  Written in C, user can connect multiple times with telnet. Really just a bind shell.
- Space saving dynamic linking(C) -- Because we can, explain how dynamic linker is just a user space program. Changes to linker required.
- So about that web(C) -- A “nice” text based web browser, using ANSI and terminal niceness. Dynamically linked and nice, nice as you want.
- Web Server(C) -- No idea really. At least something that can handle GET requests and serve static html pages.

#### Section 5: DBMS: How does a database even work? -- 3 weeks
- Seriously I'm asking, how do databases work?
- Build a DBMS(C) -- No idea.

#### Section 6: Physical: Running on real hardware -- 1 week
- Talking to an FPGA(C) -- A little code for the USB MCU to bitbang JTAG.
- Building an FPGA board -- Board design, FPGA BGA reflow, FPGA flash, a 50mhz clock, a USB JTAG port and flasher(no special hardware, a little cypress usb mcu to do jtag), a few leds, a reset button, a serial port(USB-FTDI) also powering via USB, an sd card, expansion connector(ide cable?), and an ethernet port. Optional, expansion board, host USB port, NTSC TV out, an ISA port, and PS/2 connector on the board to taunt you. We provide a toaster oven and a multimeter thermometer to do reflow. 
- Bringup -- Compiling and downloading the Verilog for the board
