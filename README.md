# biketopple
Vector exploration of conditions for a motorcycle to blow over in strong wind

Tools used: Julia, with PyPlot(Matplotlib) and LinearAlgebra libraries

Two scenarios are considered: first raise the side stand foot by one inch, and second the front tire goes flat, that is wheel goes down three inches.

![raise side stand foot](https://github.com/colbec/biketopple/blob/main/raisefoot.png)

In figure "raise side stand foot" a block is placed under the foot to stop it digging into soft sandy soil. The blue vector (base of triangle) is the distance from the line between tire contact patches to the foot (16"). The green line is an imaginary line from the foot up to the tank/saddle, indicating that the bike is 10" from vertical at the tank. The red line is an imaginary line from the tire wheelbase to the tank. The light blue (cyan) line is the result of rotating the red line as a result of inserting the one inch block that raises the foot by nearly 4 degrees. This pushes the red vector closer to the vertical by 2 inches.

![flat tire](https://github.com/colbec/biketopple/blob/main/flattire.png)

In figure "flat tire" the block is removed, the blue line again shows the distance from wheelbase to side stand foot. The red vector shows where the line to the tank is normally with the tire inflated. The cyan vector indicates where this line will be with the front tire deflated, taking 3 inches off the line from tank to wheelbase. The new tip of this vector with tire deflated will be 6 inches closer to the vertical.
