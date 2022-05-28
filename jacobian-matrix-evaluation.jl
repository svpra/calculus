function jacobian_eval_R2(fx,fy,gx,gy,xi,yi)
    a = fx(xi,yi)
    b = fy(xi,yi)
    c = gx(xi,yi)
    d = gy(xi,yi)
    Jcomplete = [a b;c d]
    return det(Jcomplete)
end

function jacobian_eval_R3(fx,fy,fz,gx,gy,gz,hx,hy,hz,xi,yi,zi)
    a = fx(xi,yi,zi)
    b = fy(xi,yi,zi)
    c = fz(xi,yi,zi)
    d = gx(xi,yi,zi)
    e = gy(xi,yi,zi)
    f = gz(xi,yi,zi)
    g = hx(xi,yi,zi)
    h = hy(xi,yi,zi)
    i = hz(xi,yi,zi)
    Jcomplete = [a b c;d e f;g h i]
    return det(Jcomplete)
end
