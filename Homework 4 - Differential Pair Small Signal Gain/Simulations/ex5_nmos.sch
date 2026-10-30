v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -0 10 0 {lab=0}
N 0 30 -0 60 {lab=0}
N -120 -0 -40 0 {lab=g}
N -120 -0 -120 60 {lab=g}
N -120 120 -120 140 {lab=0}
N 0 120 0 140 {lab=0}
N -0 60 0 120 {lab=0}
N 10 0 10 30 {lab=0}
N 0 30 10 30 {lab=0}
N -0 -60 0 -30 {lab=d}
N 0 -140 0 -120 {lab=0}
C {vsource.sym} -120 90 0 0 {name=Vgs value=1 savecurrent=false}
C {gnd.sym} -120 140 0 0 {name=l2 lab=0}
C {gnd.sym} 0 140 0 0 {name=l3 lab=0}
C {sky130_fd_pr/corner.sym} 110 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 120 20 0 0 {name=s1 only_toplevel="false" value=".control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[gm] @m.xm1.msky130_fd_pr__nfet_01v8[gds]
dc Vgs 0.5 1.8 1m
let id1 = -i(Vd)
let gmid = @m.xm1.msky130_fd_pr__nfet_01v8[gm]/id1
let gdsid = @m.xm1.msky130_fd_pr__nfet_01v8[gds]/id1
let f = gmid - 10*gdsid
set color0=white
set color1=black
plot gmid f
meas dc VGS_Q find v(g) when f=3.2529
meas dc ID_Q find id1 when f=3.2529
meas dc GMID_Q find gmid when f=3.2529
.endc

"}
C {lab_pin.sym} -60 0 1 0 {name=p1 sig_type=std_logic lab=g}
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
C {vsource.sym} 0 -90 2 0 {name=Vd value=0.9 savecurrent=false}
C {gnd.sym} 0 -140 2 0 {name=l4 lab=0}
C {lab_pin.sym} 0 -50 2 0 {name=p2 sig_type=std_logic lab=d}
