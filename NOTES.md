Why?

- My degree program was not very good. Other than computer arch. I want to fill in gaps I think I should understand.
- I feel the best way to learn is by doing the real thing even if it is a contrived and limited example.
- I think I should have experience designing (a simple/limited) version of the following:
  - Processor / Memory
  - OS
  - Compiler
  - Web Browser
  - Web Server
  - DBMS
- The George Hotz fromthetransistor repo also points out other ideas in more fine-grained detail:
  Verilog RTL design:
  - UART
  - Ethernet controller
  - MMU
  - SD controller
  - Application to real hardware in form of FPGA
  Various software:
  - Assembler
  - Linker (add Dynamic Linking)
  - Libc + malloc
  - Bootrom
  - Bootloader
  - Drivers (for verilog hardware)
  - TCP stack
- The issues raised on the fromthetransistor repo were that this is impossible. I agree it's probably a little ambitious but it would be cool to try as an experiment. It would really push me out of my comfort zone and force me to really vertically slice my learning. Learn everything just-in-time without always having the big picture.
- I'm curious to see what I can get done in the alloted time by rigorously applying Parkinson's Law
- This is a rough outline of what I'm looking for as far as contrived projects to help my learn like I should have in school. It would be nice if the requirements were a little more precise, but it could be a fun learning opportunity to dive in and figure out for myself (and maybe others) what the specific requirements should be

My approach
- Let's say 1 wk = 30-40 hrs of focused work
- I'll track how much time I spend on each section and only allow myself the alloted time
- I should be forced to deliver an MVP so to speak. Treat it like a hackathon. At the end I can elaborate on what requirements I was forced to cut, where I had to compromise on quality, what additional areas would be good to explore, and alternative approaches. I can then go back and spend more time on those things if I want. I can also then provide more specific requirements and time estimates for potential future users.
- I'll share my work along the way.



Section 1 & 2 Register Transfer Level design with Verilog:
  Goals:
  - Dev enivronment for Verilog
  - Learn Verilog
  - Refresher on digital design (build up to RTL)
  - How do FPGAs fit in (could we run our designs on real hardware?)
  - Build LED proto
  - Build UART
  - Build anything else I see fit

  Time: 1 wk


  2 hr:
  - It seems that Icarus Verilog (IVerilog) is the standard open source simulator
  - Verilator seems to be a good option for certain scenarios (which I don't yet understand). It is faster, but limited in what it does.
  - I think I'll start with IVerilog, but I'll experiment with both if I have time or need to
  - Got up and running with IVerilog. Installed and learned how to compile

  1 hr:
  - Find online code for blinking an LED and understand it
  - Read about digital design and verilog (Skim over chapters 1-3 of Digital Design book)

  2 hr:
  - Read about synchronous sequential circuits (Chapter 5 of Digital Design book. Read some parts, skimmed others)

  1.5 hr:
  - Read about HDL of sequential circuits (Chapter 5 of Digital Design book)
  - Read about registers and skim over counters (Chapter 6 of Digital Design book)

  1 hr:
  - Read about memory (Chapter 7 of Digital Design book)

  1 hr:
  - Read about combinational PLDs (Chapter 7 of Digital Design book)

  2 hr:
  - Read about RTL design (Chapter 8 of Digital Design book)

  1 hr:
  - Researched verification of Verilog RTL design. It seems the current industry standard is SystemVerilog and UVM. I did come across a couple well organized github repos that did their verification with cocotb (python). This link talks about some of the newer open-source tools for verification https://www.linkedin.com/pulse/whos-using-uvm-fpga-development-why-lars-asplund. Does UVM require proprietary software?

  1.5 hr:
  - Got up and running with cocotb as a means for testing Verilog designs. I'm using Icarus Verilog as the simulator. Built and tested a D flip-flop as an example


