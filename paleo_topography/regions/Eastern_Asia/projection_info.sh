#! /bin/bash

region_number=1

# For Lambert azimuthal projection. 

center_longitude=134
center_latitude=39
resolution=5 # grid resolution, in km!


# corner points of the grid (if we don't use this, gmt assumes a global grid, which will be huge!
# west corresponds to the bottom left corner, east corresponds to the top right corner
# probably easiest to pick off the cordinates off Google Earth, in a really zoomed out view
west_latitude=14
west_longitude=100
east_latitude=49
east_longitude=150

map_width=7.5c

shift_up="-Y12"

scale_x_shift="-X-1.5"

J_options="-JA${center_longitude}/${center_latitude}/${map_width}"
R_options="-R${west_longitude}/${west_latitude}/${east_longitude}/${east_latitude}r"



