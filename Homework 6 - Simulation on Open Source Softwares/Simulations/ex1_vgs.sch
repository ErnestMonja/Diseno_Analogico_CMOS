v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -60 0 -30 {lab=d}
N -120 0 -40 -0 {lab=g}
N -120 -160 -0 -160 {lab=#net1}
N -0 0 10 0 {lab=0}
N -120 -50 -120 -40 {lab=0}
N -0 -70 -0 -60 {lab=d}
N -0 -160 0 -130 {lab=#net1}
N -120 -70 -120 -50 {lab=0}
N -120 -160 -120 -130 {lab=#net1}
N -120 90 -120 120 {lab=0}
N -120 0 -120 30 {lab=g}
N 0 30 0 120 {lab=0}
N 0 30 10 30 {lab=0}
N 10 0 10 30 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M1
W=20
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
C {sky130_fd_pr/corner.sym} 100 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -120 -100 0 0 {name=Vdd value=1.8 savecurrent=false}
C {res.sym} 0 -100 0 0 {name=Rd
value=500
footprint=1206
device=resistor
m=1}
C {gnd.sym} -120 -40 0 0 {name=l1 lab=0}
C {gnd.sym} -120 120 0 0 {name=l2 lab=0}
C {gnd.sym} 0 120 0 0 {name=l3 lab=0}
C {code_shown.sym} 120 20 0 0 {name=s1 only_toplevel=false value=".control
save all
dc Vgs 0 1.8 1m
let id = -i(Vdd)
plot id
meas dc VG_1mA find v(g) when id=1m
.endc"}
C {vsource.sym} -120 60 0 0 {name=Vgs value=0.7 savecurrent=false}
C {lab_pin.sym} -60 0 1 0 {name=p1 sig_type=std_logic lab=g}
C {lab_pin.sym} 0 -50 2 0 {name=p2 sig_type=std_logic lab=d
}
