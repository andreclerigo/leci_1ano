transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ANDRECLERIGO/Desktop/LSD/Aula10/Parte1/ROM_16_8.vhd}
vcom -93 -work work {C:/Users/ANDRECLERIGO/Desktop/LSD/Aula10/Parte1/CounterUpDownN.vhd}
vcom -93 -work work {C:/Users/ANDRECLERIGO/Desktop/LSD/Aula10/Parte1/ROM_Demo.vhd}

