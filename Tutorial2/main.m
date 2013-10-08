close all
clear all
clc
%%
nsteps = 100;
r = linspace(0,1,nsteps);

theta = linspace(0,2*pi,100);

bkgd = .7;
dsk = .2;

figure('color',bkgd*ones(1,3),'position',[200,200,401,401])
axis equal
axis([-1,1,-1,1])
axis off
for i = 1:nsteps
    xy = r(i)*exp(theta*1i);
    patch(real(xy),imag(xy),dsk*ones(1,3))
    drawnow
end
%%

r = linspace(0,1,nsteps);

ntheta = 100;
theta = linspace(0,2*pi,ntheta);

[r,theta] = meshgrid(r,theta);
xy = r.*exp(theta*1i);
x = real(xy);
y = imag(xy);


figure('color',bkgd*ones(1,3),'position',[200,200,401,401])
axis equal
axis([-1,1,-1,1])
axis off
for i = 1:nsteps
    patch(x(:,i),y(:,i),dsk*ones(1,3))
    drawnow
end
%%

sz = [401,401];

r = linspace(0,sz(1)/2,nsteps);

bw = zeros(sz);
ind = sub2ind(sz,(sz(1)+1)/2,(sz(2)+1)/2);
bw(ind) = 1;
d = bwdist(bw);
d = repmat(d,[1,1,nsteps]);

r = repmat(reshape(r,[1,1,nsteps]),[sz,1]);

bw = d > r;

gray = dsk*ones([sz,nsteps]);
gray(bw) = bkgd;


figure('color',bkgd*ones(1,3))
h = imshow(bw(:,:,1));
set(gcf,'position',[200,200,401,401])
for i = 1:nsteps
    set(h,'CData',gray(:,:,i))
    drawnow
end