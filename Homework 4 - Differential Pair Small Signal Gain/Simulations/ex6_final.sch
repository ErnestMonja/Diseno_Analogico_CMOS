v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 30 -0 60 {lab=0}
N -120 -0 -40 0 {lab=in}
N -120 -0 -120 60 {lab=in}
N -120 120 -120 140 {lab=0}
N 0 120 0 140 {lab=0}
N -0 0 10 0 {lab=0}
N 10 -0 10 30 {lab=0}
N 0 30 10 30 {lab=0}
N -0 60 0 120 {lab=0}
N 0 -180 10 -180 {lab=0}
N 100 -180 100 -150 {lab=0}
N -140 -300 -140 -260 {lab=#net1}
N -140 -300 -20 -300 {lab=#net1}
N -140 -200 -140 -180 {lab=0}
N -0 -150 -0 -30 {lab=out}
N -80 -180 -40 -180 {lab=#net1}
N -80 -240 -80 -180 {lab=#net1}
N -80 -240 -0 -240 {lab=#net1}
N -20 -300 -0 -300 {lab=#net1}
N 0 -300 0 -210 {lab=#net1}
N 10 -180 100 -180 {lab=0}
C {vsource.sym} -120 90 0 0 {name=Vin value="dc 0.877013 ac 1" savecurrent=false}
C {gnd.sym} -120 140 0 0 {name=l2 lab=0}
C {gnd.sym} 0 140 0 0 {name=l3 lab=0}
C {sky130_fd_pr/corner.sym} 130 -340 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 140 -180 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[gds] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
save @m.xm2.msky130_fd_pr__nfet_01v8[gm] @m.xm2.msky130_fd_pr__nfet_01v8[gmbs]
save @m.xm2.msky130_fd_pr__nfet_01v8[gds] @m.xm2.msky130_fd_pr__nfet_01v8[vth]
op
print v(in) v(out)
print @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
print @m.xm1.msky130_fd_pr__nfet_01v8[gds] @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
print @m.xm2.msky130_fd_pr__nfet_01v8[gm] @m.xm2.msky130_fd_pr__nfet_01v8[gmbs]
print @m.xm2.msky130_fd_pr__nfet_01v8[gds] @m.xm2.msky130_fd_pr__nfet_01v8[vth]
ac dec 20 1 10G
let av = mag(v(out))
set units=degrees
set color0=white
set color1=black
plot vdb(out) xlog
plot vp(out) xlog
meas ac Av_1k find av at=1k
.endc
"}
C {lab_pin.sym} -60 0 1 0 {name=p1 sig_type=std_logic lab=in}
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
C {vsource.sym} -140 -230 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -140 -180 0 0 {name=l1 lab=0}
C {lab_pin.sym} 0 -90 2 0 {name=p2 sig_type=std_logic lab=out}
C {sky130_fd_pr/nfet_01v8.sym} -20 -180 0 0 {name=M2
W=2.55
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
C {gnd.sym} 100 -150 0 0 {name=l4 lab=0}
