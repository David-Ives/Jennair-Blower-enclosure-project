$fn = 30;
box_width = 16;
pole_hieght = 14;
sheet_thickness = 3/4;
pole_thickness = 1.5;
wall_thickness = 1/4; 
base_thickness = 25.5;
holder_thickness = 3/4;
holder_width = 1.25;
filter_thickness = 3/4;
filter_width = 13.75;


//should probably just be 'wood' but too late lol
module sheet(width, length, thickness,
    xness, yness, vertical){

    translate([xness,yness,vertical]){
    cube([width,length,thickness]);   
    } 
}


color([.7,.7,.5]){
sheet(box_width,base_thickness,sheet_thickness,0,-4,0);

sheet(box_width,
box_width + holder_thickness + pole_thickness,sheet_thickness
,0,0,pole_hieght+sheet_thickness);
}
//vertical poles
color([0,.5,.4]){
sheet(pole_thickness,pole_thickness,pole_hieght,
0,0,sheet_thickness);

 sheet(pole_thickness,pole_thickness,pole_hieght,
box_width - pole_thickness,0,sheet_thickness);

 sheet(pole_thickness,pole_thickness,pole_hieght,
box_width - pole_thickness,box_width - pole_thickness,sheet_thickness);

# sheet(pole_thickness,pole_thickness,pole_hieght,
0,box_width - pole_thickness,sheet_thickness);
    
}
//horizantal poles for screws - bottom
color("purple"){
 sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    0,pole_thickness,sheet_thickness);
   
 sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,box_width - pole_thickness,sheet_thickness);
    
 sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    box_width - pole_thickness,pole_thickness,sheet_thickness);
    
 sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,0,sheet_thickness);
    
//horizantal poles for screws - top    
 sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    0,pole_thickness,pole_hieght - sheet_thickness);
   
 sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,box_width - pole_thickness,pole_hieght - sheet_thickness);
    
 sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    box_width - pole_thickness,pole_thickness,pole_hieght - sheet_thickness);
    
 sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,0,pole_hieght - sheet_thickness);
}
//mounting poles
color([0,.5,.4]){
 sheet(pole_thickness,pole_thickness,
    pole_hieght - pole_thickness * 2,
10.5,0,sheet_thickness + pole_thickness);

 sheet(pole_thickness,pole_thickness,
    pole_hieght - pole_thickness * 2,
4,0,sheet_thickness + pole_thickness);
}

//filter poles
color([0,.5,.5]){
sheet(pole_thickness,pole_thickness,pole_hieght,
box_width - pole_thickness,box_width + filter_thickness,sheet_thickness);

sheet(pole_thickness,pole_thickness,pole_hieght,
0,box_width + filter_thickness,sheet_thickness);
}
//filter holders
//color([0,0,1])
//sheet(box_width,holder_thickness,holder_thickness,
//0,box_width,sheet_thickness);

//color([0,0,1])
//sheet(box_width,holder_thickness,holder_thickness,
//0,box_width,
//pole_hieght);

color([0,.3,.5])
sheet(holder_width,filter_thickness,pole_hieght,
box_width - holder_width,box_width,sheet_thickness);

color([1,0,1]){
//outer filter holders
 sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,box_width + filter_thickness,sheet_thickness);
    
 sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,box_width + filter_thickness,pole_hieght - sheet_thickness);
}

//filter
color([0,1,0])
# sheet(filter_width,filter_thickness,filter_width,
holder_width - wall_thickness,box_width, sheet_thickness);

  
//the walls  
 //color([0,.5,0])
% sheet(wall_thickness,box_width,
    pole_hieght + (sheet_thickness * 2),
    -1 * wall_thickness,0,0);
 //color([1,0,0])
% sheet(wall_thickness,box_width + filter_thickness + pole_thickness,
    pole_hieght + (sheet_thickness * 2),
    box_width,0,0);
    
// makes the hole    
difference(){
    color([1,.5,0])
    sheet(box_width + wall_thickness * 2,wall_thickness,
    pole_hieght + sheet_thickness,
    - wall_thickness,-1 * wall_thickness,sheet_thickness);

    rotate([90,0,0]){
        translate([8,8,-1]){
            cylinder(h = 4, r = 2.5);
            }
     }
}





    
    
    