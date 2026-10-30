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
N -200 140 -200 160 {lab=0}
N -200 0 -200 60 {lab=g}
N -140 0 -40 0 {lab=g}
N -0 -60 0 -30 {lab=d}
N 0 -160 0 -140 {lab=#net1}
N -200 60 -200 80 {lab=g}
N 0 60 0 80 {lab=s}
N -0 -80 0 -60 {lab=d}
N -340 -80 -340 -60 {lab=0}
N -340 -180 -340 -140 {lab=#net1}
N -140 -200 0 -200 {lab=#net1}
N 0 -180 0 -160 {lab=#net1}
N -200 160 -200 180 {lab=0}
N -100 140 -100 180 {lab=0}
N -0 160 -0 180 {lab=0}
N -100 0 -100 80 {lab=g}
N -200 -0 -140 -0 {lab=g}
N -200 -80 -200 0 {lab=g}
N -200 -180 -200 -140 {lab=#net1}
N -340 -200 -140 -200 {lab=#net1}
N -340 -200 -340 -180 {lab=#net1}
N -200 -200 -200 -180 {lab=#net1}
N 0 -200 0 -180 {lab=#net1}
N -340 -60 -340 -40 {lab=0}
N 80 -0 100 0 {lab=0}
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
C {gnd.sym} 0 180 0 0 {name=l2 lab=0}
C {gnd.sym} -200 180 0 0 {name=l3 lab=0}
C {lab_pin.sym} 0 -55 0 0 {name=p1 sig_type=std_logic lab=d}
C {lab_pin.sym} 0 55 0 0 {name=p2 sig_type=std_logic lab=s}
C {lab_pin.sym} -70 0 1 0 {name=p3 sig_type=std_logic lab=g
}
C {sky130_fd_pr/corner.sym} 150 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 160 -10 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[vth] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
op
print v(g) v(d) v(s)
print @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
print @m.xm1.msky130_fd_pr__nfet_01v8[vth] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
let vov = v(g) - v(s) - @m.xm1.msky130_fd_pr__nfet_01v8[vth]
print vov
ac dec 20 1 10G
let zin = mag(v(g))
set color0=white
set color1=black
plot zin xlog ylog
meas ac Zin_1k find zin at=1k
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
C {vsource.sym} -340 -110 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -340 -40 0 0 {name=l4 lab=0}
C {res.sym} -200 -110 0 0 {name=R1
value=35.2k
footprint=1206
device=resistor
m=1}
C {res.sym} -200 110 0 0 {name=R2
value=203.2k
footprint=1206
device=resistor
m=1}
C {isource.sym} -100 110 0 0 {name=I0 value="dc 0 ac 1"}
C {gnd.sym} -100 180 0 0 {name=l5 lab=0}
