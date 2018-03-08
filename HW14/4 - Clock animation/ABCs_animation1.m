% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ABCs_animation1()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Animation
%
%
% Directions:
%   Complete the incomplete animation script of a bouncing ball.
%   There are 7 tasks total.

% Initialize data for a ball
[xx, yy, zz] = sphere(20);
% Start height of ball at 10
zz = zz + 10;
% Initialize go to be true and cycles of ball bounces to 0
go = true;
cycles = 0;
% 1. Set the condition of the outer while loop correctly, so that the
%    animation runs properly.
while ?
    while min(min(zz)) > 0
        surf(xx, yy, zz);
        axis([-5 5 -5 5 0 12])
        % 2. Set the axis square here.
        
        zz = zz - 0.2;
        % 3. Pause the animation for 0.01 seconds.
        
    end
    % 4. Set the condition of the second while loop to run until the ball
    %    reaches a max height of 10.
    while ?
        surf(xx, yy, zz);
        axis([-5 5 -5 5 0 12])
        % 5. Set the axis square here.
        
        zz = zz + 0.2;
        % 6. Pause the animation for 0.01 seconds.
        
    end
    cycle = cycle + 1;
    % 7. check to see if the ball has bounced 5 times, and update go
    %    appropriately
    
end
end
