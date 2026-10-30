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
save @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[gds] @m.xm1.msky130_fd_pr__nfet_01v8[vth]
save @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
op
print v(in) v(out)
print @m.xm1.msky130_fd_pr__nfet_01v8[id] @m.xm1.msky130_fd_pr__nfet_01v8[gm]
print @m.xm1.msky130_fd_pr__nfet_01v8[gds] @m.xm1.msky130_fd_pr__nfet_01v8[vth]
print @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
let av_calc = @m.xm1.msky130_fd_pr__nfet_01v8[gm]/(@m.xm1.msky130_fd_pr__nfet_01v8[gds] + 1/2000)
print av_calc
ac dec 20 1 10G
let av = mag(v(out))
set units=degrees
set color0=white
set color1=black
plot vdb(out) xlog
plot vp(out) xlog
meas ac Av_1k find av at=1k
.endc"}
C {vsource.sym} -120 70 0 0 {name=Vin value="dc 0.824428 ac 1" savecurrent=false}
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
