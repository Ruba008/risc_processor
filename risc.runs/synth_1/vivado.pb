
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:082default:default2
00:00:092default:default2
1338.9222default:default2
0.0232default:default2
1035432default:default2
1321592default:defaultZ17-722h px� 
�
Command: %s
1870*	planAhead2�
yread_checkpoint -auto_incremental -incremental /home/jbao/Bureau/risc_processor/risc.srcs/utils_1/imports/synth_1/ALU.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2^
J/home/jbao/Bureau/risc_processor/risc.srcs/utils_1/imports/synth_1/ALU.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
v
Command: %s
53*	vivadotcl2E
1synth_design -top Data_Path -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
a
#Helper process launched with PID %s4824*oasys2
5819192default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1698.754 ; gain = 359.832 ; free physical = 102890 ; free virtual = 131506
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
	Data_Path2default:default2\
F/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Data_Path.vhd2default:default2
452default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
IP_compteur2default:default2^
H/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/IP_compteur.vhd2default:default2
452default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
IP_compteur2default:default2
02default:default2
12default:default2^
H/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/IP_compteur.vhd2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2&
Memory_Instruction2default:default2e
O/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Memory_Instruction.vhd2default:default2
422default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2&
Memory_Instruction2default:default2
02default:default2
12default:default2e
O/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Memory_Instruction.vhd2default:default2
422default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
LI_DI2default:default2X
B/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LI_DI.vhd2default:default2
462default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
LI_DI2default:default2
02default:default2
12default:default2X
B/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LI_DI.vhd2default:default2
462default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2!
Register_Bank2default:default2`
J/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Register_Bank.vhd2default:default2
472default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
Register_Bank2default:default2
02default:default2
12default:default2`
J/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Register_Bank.vhd2default:default2
472default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
Mux2default:default2V
@/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Mux.vhd2default:default2
412default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Mux2default:default2
02default:default2
12default:default2V
@/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Mux.vhd2default:default2
412default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
DI_EX2default:default2X
B/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/DI_EX.vhd2default:default2
462default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DI_EX2default:default2
02default:default2
12default:default2X
B/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/DI_EX.vhd2default:default2
462default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
LC_ALU2default:default2Y
C/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LC_ALU.vhd2default:default2
392default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
LC_ALU2default:default2
02default:default2
12default:default2Y
C/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LC_ALU.vhd2default:default2
392default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
ALU2default:default2V
@/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/ALU.vhd2default:default2
452default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
02default:default2
12default:default2V
@/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/ALU.vhd2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
EX_Mem2default:default2Y
C/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/EX_Mem.vhd2default:default2
442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
EX_Mem2default:default2
02default:default2
12default:default2Y
C/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/EX_Mem.vhd2default:default2
442default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
LC2default:default2U
?/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LC.vhd2default:default2
392default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
LC2default:default2
02default:default2
12default:default2U
?/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LC.vhd2default:default2
392default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
Memory_Bank2default:default2^
H/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Memory_Bank.vhd2default:default2
452default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Memory_Bank2default:default2
02default:default2
12default:default2^
H/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Memory_Bank.vhd2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
Mem_RE2default:default2Y
C/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Mem_RE.vhd2default:default2
442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Mem_RE2default:default2
02default:default2
12default:default2Y
C/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Mem_RE.vhd2default:default2
442default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2$
LC_banc_registre2default:default2c
M/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LC_banc_registre.vhd2default:default2
392default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
LC_banc_registre2default:default2
02default:default2
12default:default2c
M/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LC_banc_registre.vhd2default:default2
392default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Data_Path2default:default2
02default:default2
12default:default2\
F/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Data_Path.vhd2default:default2
452default:default8@Z8-256h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[6]2default:default2$
LC_banc_registre2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[5]2default:default2$
LC_banc_registre2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[4]2default:default2$
LC_banc_registre2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[3]2default:default2$
LC_banc_registre2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[2]2default:default2$
LC_banc_registre2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[1]2default:default2$
LC_banc_registre2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[0]2default:default2$
LC_banc_registre2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[6]2default:default2
LC2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[5]2default:default2
LC2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[4]2default:default2
LC2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[3]2default:default2
LC2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[2]2default:default2
LC2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[1]2default:default2
LC2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
OP[0]2default:default2
LC2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
op[7]2default:default2
LC_ALU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
op[6]2default:default2
LC_ALU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
op[5]2default:default2
LC_ALU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
op[4]2default:default2
LC_ALU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
op[0]2default:default2
LC_ALU2default:defaultZ8-7129h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1813.723 ; gain = 474.801 ; free physical = 102630 ; free virtual = 131255
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1825.598 ; gain = 486.676 ; free physical = 102548 ; free virtual = 131174
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1833.602 ; gain = 494.680 ; free physical = 102545 ; free virtual = 131171
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1860.594 ; gain = 521.672 ; free physical = 102312 ; free virtual = 130939
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 288   
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	 257 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 273   
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2#
Mem_RE/auxA_reg2default:default2
82default:default2
42default:default2Y
C/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/Mem_RE.vhd2default:default2
522default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2"
LI_DI/auxC_reg2default:default2
82default:default2
42default:default2X
B/home/jbao/Bureau/risc_processor/risc.srcs/sources_1/new/LI_DI.vhd2default:default2
572default:default8@Z8-3936h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102172 ; free virtual = 130818
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130822
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130822
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130820
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130820
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130820
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130820
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130820
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130820
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
=
%s*synth2%
| |Cell |Count |
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|1     |top      |       |     0|
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102177 ; free virtual = 130820
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 22 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.125 ; gain = 590.203 ; free physical = 102176 ; free virtual = 130820
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1929.133 ; gain = 590.203 ; free physical = 102176 ; free virtual = 130820
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1929.1332default:default2
0.0002default:default2
1024532default:default2
1310962default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2012.7502default:default2
0.0002default:default2
1023712default:default2
1310142default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
259386df2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
222default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:252default:default2
00:00:222default:default2
2012.7502default:default2
673.8282default:default2
1023722default:default2
1310152default:defaultZ17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2 
synth_design2default:default2
Physical2default:default2
PSS2default:default2O
;(MB): overall = 1560.599; main = 1317.100; forked = 380.4992default:defaultZ17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2 
synth_design2default:default2
Virtual2default:default2
VSS2default:default2O
;(MB): overall = 2907.078; main = 2012.754; forked = 977.9492default:defaultZ17-2834h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2T
@/home/jbao/Bureau/risc_processor/risc.runs/synth_1/Data_Path.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file Data_Path_utilization_synth.rpt -pb Data_Path_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec  7 21:26:50 20242default:defaultZ17-206h px� 


End Record