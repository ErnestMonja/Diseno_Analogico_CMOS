v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -0 10 0 {lab=0}
N 0 -60 0 -30 {lab=#net1}
N 0 -70 0 -60 {lab=#net1}
N -120 0 -120 30 {lab=0}
N 10 -0 80 0 {lab=0}
N 80 -0 80 10 {lab=0}
N -120 -100 -120 -60 {lab=#net1}
N -120 -100 0 -100 {lab=#net1}
N 0 110 0 130 {lab=0}
N 0 30 0 50 {lab=out}
N -60 -0 -40 -0 {lab=#net1}
N -60 -50 -60 0 {lab=#net1}
N -60 -50 -0 -50 {lab=#net1}
N 0 -100 0 -70 {lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M2
W=2
L=0.18
nf=1
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
C {lab_pin.sym} 0 40 2 0 {name=p1 sig_type=std_logic lab=out}
C {gnd.sym} 80 10 0 0 {name=l1 lab=0}
C {code_shown.sym} 100 -10 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm2.msky130_fd_pr__nfet_01v8[gm] @m.xm2.msky130_fd_pr__nfet_01v8[gmbs]
save @m.xm2.msky130_fd_pr__nfet_01v8[gds] @m.xm2.msky130_fd_pr__nfet_01v8[vth]
dc Iload 10u 2m 1u
let id2 = -i(Vdd)
let g2 = @m.xm2.msky130_fd_pr__nfet_01v8[gm] + @m.xm2.msky130_fd_pr__nfet_01v8[gmbs] + @m.xm2.msky130_fd_pr__nfet_01v8[gds]
let g2id = g2/id2
set color0=white
set color1=black
plot g2id
plot v(out)
meas dc I_REF find id2 when g2id=2.743
meas dc VOUT_REF find v(out) when g2id=2.743
.endc"}
C {sky130_fd_pr/corner.sym} 90 -170 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -120 -30 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -120 30 0 0 {name=l2 lab=0}
C {isource.sym} 0 80 0 0 {name=Iload value=0.5m}
C {gnd.sym} 0 130 0 0 {name=l4 lab=0}
