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
N -0 30 0 120 {lab=0}
N -80 -0 -40 0 {lab=d}
N -80 -40 -80 0 {lab=d}
N -80 -40 -0 -40 {lab=d}
N -0 -40 0 -30 {lab=d}
N 0 -70 0 -40 {lab=d}
N -160 -180 -160 -160 {lab=#net1}
N -160 -180 -0 -180 {lab=#net1}
N 0 -180 -0 -130 {lab=#net1}
N -160 -160 -160 -130 {lab=#net1}
N -160 -70 -160 -30 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M1
W=40
L=0.18
nf=4 
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
C {lab_pin.sym} 0 -55 0 0 {name=p1 sig_type=std_logic lab=d}
C {lab_pin.sym} 0 55 0 0 {name=p2 sig_type=std_logic lab=s}
C {sky130_fd_pr/corner.sym} 150 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 160 -10 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[vth] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
op
print v(d)
print @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
print @m.xm1.msky130_fd_pr__nfet_01v8[vth] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
.endc"}
C {vsource.sym} -160 -100 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -160 -30 0 0 {name=l4 lab=0}
C {isource.sym} 0 -100 0 0 {name=I0 value=1m}
