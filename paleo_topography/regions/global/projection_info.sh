#! /bin/bash

region_number=1

# For Lambert azimuthal projection. These parameters cover the entire range of places where North American ice sheets covered, so it shouldn't need to be changed.
# If you do change it, you need to re-run the topography map as well!

center_longitude=-94
center_latitude=60
resolution=5 # grid resolution, in km!


# corner points of the grid (if we don't use this, gmt assumes a global grid, which will be huge!
# west corresponds to the bottom left corner, east corresponds to the top right corner
# probably easiest to pick off the cordinates off Google Earth, in a really zoomed out view
west_latitude=25
west_longitude=-135
east_latitude=58
east_longitude=3

map_width=15c

shift_up="-Y12"
shift_right="-X1.5"

scale_x_shift="-X0"

J_options="-JR-30/18c"
R_options="-Rg"



