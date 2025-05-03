# bike topple review
using PyPlot, LinearAlgebra
# define the rotation matrix function
r(a)=[cosd(a) -sind(a);sind(a) cosd(a)]
function test()
    # simple vector
    v=[0,1]
    # select the angle for rotation in degrees
    # rotation angle is negative since we want clockwise
    rotv = r(-90)*v
    # plot
    title("test rotation")
    hlen = 0.2
    hwid = 0.15
    arrow(0,0,v[1],v[2]-0.3,width=0.025,
            head_width=hwid, head_length=hlen, fc="blue", ec="blue")
    arrow(0,0,rotv[1]-0.3,rotv[2],width=0.025,
            head_width=hwid, head_length=hlen, fc="red", ec="red")
    xlim(-1, 2)
    ylim(-1, 2)
    figure(1,(3,3))
end
function raisefoot()
    @info "Raise side stand foot"
    v=[-16,0]
    w=[6,32]
    vw=v+w
    println("Length vw: ",round(norm(vw),digits=2)," ")
    # raise foot 1 inch in 16
    raise = asind(1/16)
    println(round(raise,digits=2)," degrees clockwise")
    vwr = r(-raise)*vw
    println("New vwr: ",round.(vwr,digits=2))
    figure(2,(5,5))
    title("raise side stand foot")
    arrow(0,0,v[1],v[2], fc="blue", ec="blue")
    arrow(-16,0,w[1],w[2], fc="green", ec="green")
    arrow(0,0,vw[1],vw[2], fc="red", ec="red")
    arrow(0,0,vwr[1],vwr[2], fc="cyan", ec="cyan")
    xlim(-20, 5)
    ylim(-5, 40);
end
function flattire()
    @info "Front tire goes flat"
    v = [-16,0]
    w = [6,32]
    # rotation of vector CA due to deflation
    down = asind(3/16)
    println(round(down,digits=2)," degrees clockwise")
    wr = r(-down)*w
    vw = v+wr
    println("New wr vector: ",round.(wr,digits=2))
    println("New vw: ",round.(vw,digits=2))
    println("Length of vw: ",round(norm(vw),digits=2))
    figure(3,(5,5))
    title("flat tire")
    arrow(0,0,v[1],v[2], fc="blue", ec="blue")
    arrow(-16,0,w[1],w[2], fc="red", ec="red")
    arrow(0,0,vw[1],vw[2], fc="green", ec="green")
    arrow(-16,0,wr[1],wr[2], fc="cyan", ec="cyan")
    xlim(-20, 5)
    ylim(-5, 40)
    println();
end
raisefoot();
flattire();