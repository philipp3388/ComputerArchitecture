transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {half_adder.vo}

vlog -vlog01compat -work work +incdir+C:/Users/phili/Desktop/Innopolis/Computer\ Architecture/LabWorks/ComputerArchitecture/Week10/ex1 {C:/Users/phili/Desktop/Innopolis/Computer Architecture/LabWorks/ComputerArchitecture/Week10/ex1/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/phili/Desktop/Innopolis/Computer\ Architecture/LabWorks/ComputerArchitecture/Week10/ex1 {C:/Users/phili/Desktop/Innopolis/Computer Architecture/LabWorks/ComputerArchitecture/Week10/ex1/half_adder_testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/phili/Desktop/Innopolis/Computer Architecture/LabWorks/ComputerArchitecture/Week10/ex1/Tcl_script1.tcl
