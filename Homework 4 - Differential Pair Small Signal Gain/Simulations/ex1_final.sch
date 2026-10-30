v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -60 0 -30 {lab=d}
N -180 0 -100 0 {lab=g}
N -180 -160 -60 -160 {lab=#net1}
N -0 0 10 0 {lab=0}
N -300 -50 -300 -40 {lab=0}
N -0 -70 -0 -60 {lab=d}
N -0 -160 0 -130 {lab=#net1}
N -300 -70 -300 -50 {lab=0}
N -300 -160 -300 -130 {lab=#net1}
N -180 120 -180 150 {lab=0}
N -180 0 -180 30 {lab=g}
N 0 30 0 120 {lab=0}
N 0 30 10 30 {lab=0}
N 10 0 10 30 {lab=0}
N -300 -160 -180 -160 {lab=#net1}
N -180 -70 -180 0 {lab=g}
N -180 -160 -180 -130 {lab=#net1}
N -180 30 -180 60 {lab=g}
N -180 150 -180 160 {lab=0}
N -0 120 -0 160 {lab=0}
N -100 0 -40 0 {lab=g}
N -60 -160 -0 -160 {lab=#net1}
N -90 0 -90 60 {lab=g}
N -90 120 -90 160 {lab=0}
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
C {vsource.sym} -300 -100 0 0 {name=Vdd value=1.8 savecurrent=false}
C {res.sym} 0 -100 0 0 {name=Rd
value=500
footprint=1206
device=resistor
m=1}
C {gnd.sym} -300 -40 0 0 {name=l1 lab=0}
C {gnd.sym} -180 160 0 0 {name=l2 lab=0}
C {gnd.sym} 0 160 0 0 {name=l3 lab=0}
C {code_shown.sym} 120 20 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[vth] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
op
print v(g) v(d)
print @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
print @m.xm1.msky130_fd_pr__nfet_01v8[vth] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
ac dec 20 1 10G
let zin = mag(v(g))
plot zin xlog ylog
meas ac Zin_1k find zin at=1k
.endc"}
C {lab_pin.sym} -60 0 1 0 {name=p1 sig_type=std_logic lab=g}
C {lab_pin.sym} 0 -50 2 0 {name=p2 sig_type=std_logic lab=d
}
C {res.sym} -180 -100 0 0 {name=R1
value=38.41k
footprint=1206
device=resistor
m=1}
C {res.sym} -180 90 0 0 {name=R2
value=41.73k
footprint=1206
device=resistor
m=1}
C {isource.sym} -90 90 0 0 {name=I0 value="dc 0 ac 1"}
C {gnd.sym} -90 160 0 0 {name=l4 lab=0}
