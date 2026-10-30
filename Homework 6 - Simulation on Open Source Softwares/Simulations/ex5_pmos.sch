v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -0 10 0 {lab=#net1}
N 10 -30 10 -0 {lab=#net1}
N 0 -30 10 -30 {lab=#net1}
N -120 -160 0 -160 {lab=#net1}
N -120 -60 -120 -40 {lab=0}
N 0 30 -0 60 {lab=out}
N -120 -0 -40 0 {lab=vb}
N -120 -0 -120 60 {lab=vb}
N -120 120 -120 140 {lab=0}
N 0 120 0 140 {lab=0}
N -120 -160 -120 -120 {lab=#net1}
N -0 -160 0 -30 {lab=#net1}
C {sky130_fd_pr/pfet_01v8.sym} -20 0 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -120 -90 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -120 -40 0 0 {name=l1 lab=0}
C {vsource.sym} -120 90 0 0 {name=Vb value=1 savecurrent=false}
C {vsource.sym} 0 90 0 0 {name=Vout value=0.9 savecurrent=false}
C {gnd.sym} -120 140 0 0 {name=l2 lab=0}
C {gnd.sym} 0 140 0 0 {name=l3 lab=0}
C {sky130_fd_pr/corner.sym} 110 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 120 20 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm2.msky130_fd_pr__pfet_01v8[gds] @m.xm2.msky130_fd_pr__pfet_01v8[vdsat]
dc Vb 0 1.8 1m
let id2 = i(Vout)
let gds2 = @m.xm2.msky130_fd_pr__pfet_01v8[gds]
set color0=white
set color1=black
plot id2
meas dc VB_05 find v(vb) when id2=0.5m
meas dc GDS2_05 find gds2 when id2=0.5m
meas dc VDSAT2_05 find @m.xm2.msky130_fd_pr__pfet_01v8[vdsat] when id2=0.5m
.endc"}
C {lab_pin.sym} -60 0 1 0 {name=p1 sig_type=std_logic lab=vb}
C {lab_pin.sym} 0 50 2 0 {name=p2 sig_type=std_logic lab=out}
