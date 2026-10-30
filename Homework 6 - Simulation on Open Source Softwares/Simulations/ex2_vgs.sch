v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 0 100 20 {lab=0}
N -0 -0 80 -0 {lab=0}
N 0 140 0 160 {lab=0}
N -0 30 -0 60 {lab=s}
N -140 140 -140 160 {lab=0}
N -140 0 -140 60 {lab=g}
N -140 0 -40 0 {lab=g}
N -0 -60 0 -30 {lab=d}
N 0 -160 0 -140 {lab=#net1}
N -140 60 -140 80 {lab=g}
N 0 60 0 80 {lab=s}
N -0 -80 0 -60 {lab=d}
N -140 -80 -140 -60 {lab=0}
N -140 -180 -140 -140 {lab=#net1}
N -140 -180 0 -180 {lab=#net1}
N 0 -180 0 -160 {lab=#net1}
N 80 -0 100 -0 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M1
W=12
L=0.18
nf=2 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 100 20 0 0 {name=l1 lab=0}
C {vsource.sym} -140 110 0 0 {name=Vg value=1 savecurrent=false}
C {gnd.sym} 0 160 0 0 {name=l2 lab=0}
C {gnd.sym} -140 160 0 0 {name=l3 lab=0}
C {lab_pin.sym} 0 -55 0 0 {name=p1 sig_type=std_logic lab=d}
C {lab_pin.sym} 0 55 0 0 {name=p2 sig_type=std_logic lab=s}
C {lab_pin.sym} -70 0 1 0 {name=p3 sig_type=std_logic lab=g
}
C {sky130_fd_pr/corner.sym} 150 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 160 -10 0 0 {name=s1 only_toplevel=false value=".control
save all
dc Vg 0 1.8 1m
let id = -i(Vdd)
meas dc VG_2mA find v(g) when id=2m
meas dc VS_2mA find v(s) when id=2m
.endc"}
C {res.sym} 0 -110 0 0 {name=Rd
value=500
footprint=1206
device=resistor
m=1}
C {res.sym} 0 110 0 0 {name=Rs
value=100
footprint=1206
device=resistor
m=1}
C {vsource.sym} -140 -110 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -140 -60 0 0 {name=l4 lab=0}
