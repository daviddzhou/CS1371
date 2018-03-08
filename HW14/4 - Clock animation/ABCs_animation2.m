% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ABCs_animation2()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Animation
%
%
% Directions:
%   Complete the incomplete animation script of a rotating cylinder.
%   There are 6 tasks total.

% Initialize data for a cylinder.
[xx, yy, zz] = cylinder(linspace(1,1,20));
% Make the cyclinder 20 units long.
zz = zz.*20;
% 1. Flatten the cylinder along the y direction by multilying all of the yy
%    values by 0
?
% make a surface and create a handle for the surface.
hcyl = surf(xx,yy,zz);
% 2. Call "shading interp" to remove the grid lines.
?
% 3. Set lower bound of every axis to -20 and the upper bound to 20.
?
% 4. Set the view to be the default 3D view.
?
% Set the rotation direction around the y-axis.
direction = [0 1 0];
% Initialize go to be true and degrees to be 0.
go = true;
degrees = 0;
while go
    % 5. Use the rotate() fucntion to rotate the surface around the y-axis by
    %    6 degrees.
    rotate(?,?,?);
    % Keep track of how may degrees the cyclinder has rotated.
    degrees = degrees + 6;
    % Check to see if the cyclinder h
    go = ~(degrees == 360);
    % 6. Pause the animation for 1 second.
    ?
end
end
