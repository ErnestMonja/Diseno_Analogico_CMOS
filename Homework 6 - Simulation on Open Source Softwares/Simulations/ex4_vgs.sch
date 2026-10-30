v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -0 10 0 {lab=0}
N 10 -0 10 30 {lab=0}
N 0 30 10 30 {lab=0}
N -120 100 -120 120 {lab=0}
N -120 0 -120 40 {lab=in}
N -0 30 0 120 {lab=0}
N -80 -0 -40 0 {lab=in}
N 0 -80 0 -30 {lab=out}
N -120 0 -80 0 {lab=in}
N -0 -180 0 -140 {lab=#net1}
N -120 -180 -0 -180 {lab=#net1}
N -120 -180 -120 -140 {lab=#net1}
N -120 -80 -120 -60 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M1
W=30
L=0.18
nf=3 
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
C {gnd.sym} 0 120 0 0 {name=l2 lab=0}
C {lab_pin.sym} 0 -55 2 0 {name=p1 sig_type=std_logic lab=out
}
C {sky130_fd_pr/corner.sym} 150 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 160 -10 0 0 {name=s1 only_toplevel=false value=".control
save all
dc Vin 0 1.8 1m
let id = -i(Vdd)
set color0=white
set color1=black
plot id
meas dc VG_05mA find v(in) when id=0.5m
meas dc VD_05mA find v(out) when id=0.5m
.endc"}
C {vsource.sym} -120 70 0 0 {name=Vin value=0.7 savecurrent=false}
C {gnd.sym} -120 120 0 0 {name=l4 lab=0}
C {res.sym} 0 -110 0 0 {name=Rd
value=2k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -120 -110 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -120 -60 0 0 {name=Vdd1 lab=0
value=1.8}
C {lab_pin.sym} -65 0 1 0 {name=p3 sig_type=std_logic lab=in}
