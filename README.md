# RISC-V_32I_singlecore_without_pipeline
32-bit Single Cycle RISC Processor designed and simulated using Verilog HDL.<br><br>

This processor supports R-type, I-type, and S-type instruction formats and is built using a modular datapath and control architecture.<br><br>

Architecture Components:<br>
• Program Counter with PC + 4 logic<br>
• Instruction Memory<br>
• Register File (32 × 32-bit)<br>
• Immediate Generator / Sign Extender<br>
• ALU with dedicated ALU Control<br>
• Main Control Unit<br>
• Data Memory<br>
• Multiplexer-based datapath control<br><br>

Features:<br>
• Complete single-cycle datapath implementation<br>
• Support for arithmetic, immediate, and store instructions<br>
• Proper control signal generation for ALU, memory, and write-back stages<br>
• Clean modular Verilog design<br>
• Functional verification through simulation and waveform analysis<br><br>

Skills Demonstrated:<br>
• RISC Architecture fundamentals<br>
• Datapath and Control Unit design<br>
• Instruction decoding logic<br>
• Memory interfacing in RTL<br>
• Debugging X-propagation and signal timing issues<br><br>

Future Scope:<br>
• Branch instruction implementation<br>
• Pipeline architecture extension<br>
• Performance optimization and hazard handling<br>
