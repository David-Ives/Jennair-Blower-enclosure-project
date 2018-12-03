$fn = 30;
box_width = 16;
pole_hieght = 15.5;
sheet_thickness = 3/4;
pole_thickness = 1.5;
wall_thickness = 1/4; 
base_thickness = 25.5;
holder_thickness = 1;


module sheet(width, length, thickness,
    xness, yness, vertical){

    translate([xness,yness,vertical]){
    cube([width,length,thickness]);   
    } 
}

color([0,1,0])
sheet(13.5,1,13.5,
1.5 - .25,box_width,
1.75);

color([0,0,1])
sheet(box_width,holder_thickness,holder_thickness,
0,box_width,sheet_thickness);

color([0,0,1])
sheet(box_width,holder_thickness,holder_thickness,
0,box_width,
pole_hieght - 1/4);

color([0,.3,.5])
sheet(holder_thickness + .25,holder_thickness,pole_hieght - 2,
box_width - pole_thickness + .25,box_width,sheet_thickness + 1);