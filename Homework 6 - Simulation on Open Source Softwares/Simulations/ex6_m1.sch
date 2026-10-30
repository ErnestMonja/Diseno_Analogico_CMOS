v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 30 0 120 {lab=0}
N -0 -0 10 0 {lab=0}
N 10 -0 10 30 {lab=0}
N 0 30 10 30 {lab=0}
N 0 -60 0 -30 {lab=d}
N -120 0 -40 -0 {lab=g}
N -120 100 -120 120 {lab=0}
N -120 -0 -120 40 {lab=g}
N 0 -70 0 -60 {lab=d}
N -0 -160 -0 -130 {lab=0}
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
C {lab_pin.sym} 0 -50 2 0 {name=p1 sig_type=std_logic lab=d}
C {gnd.sym} 0 120 0 0 {name=l1 lab=0}
C {code_shown.sym} 100 -10 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[gm] @m.xm1.msky130_fd_pr__nfet_01v8[gds]
save @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
dc Vgs 0.3 1.2 0.1m
let id1 = -i(Vd)
let gm1 = @m.xm1.msky130_fd_pr__nfet_01v8[gm]
let gds1 = @m.xm1.msky130_fd_pr__nfet_01v8[gds]
let vdsat1 = @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
set color0=white
set color1=black
plot id1
meas dc VGS1_Q find v(g) when id1=0.5m
meas dc GM1_Q find gm1 when id1=0.5m
meas dc GDS1_Q find gds1 when id1=0.5m
meas dc VDSAT1_Q find vdsat1 when id1=0.5m
.endc"}
C {sky130_fd_pr/corner.sym} 90 -170 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 0 -100 2 0 {name=Vd value=0.4154 savecurrent=false}
C {gnd.sym} 0 -160 2 0 {name=l2 lab=0}
C {vsource.sym} -120 70 0 0 {name=Vgs value=1 savecurrent=false}
C {gnd.sym} -120 120 0 0 {name=l3 lab=0}
C {lab_pin.sym} -60 0 1 0 {name=p2 sig_type=std_logic lab=g}
