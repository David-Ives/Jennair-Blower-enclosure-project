$fn = 30;
box_width = 16;
pole_hieght = 14;
sheet_thickness = 3/4;
pole_thickness = 1.5;
wall_thickness = 1/4; 



//should probably just be 'wood' but too late lol
module sheet(width, length, thickness,
    xness, yness, vertical){

    translate([xness,yness,vertical]){
    cube([width,length,thickness]);   
    } 
}

sheet(box_width,24,sheet_thickness,0,-4,0);

sheet(box_width,box_width + 2.5,sheet_thickness
,0,0,pole_hieght+sheet_thickness);

//vertical poles
sheet(pole_thickness,pole_thickness,pole_hieght,
0,0,sheet_thickness);

sheet(pole_thickness,pole_thickness,pole_hieght,
box_width - pole_thickness,0,sheet_thickness);

sheet(pole_thickness,pole_thickness,pole_hieght,
box_width - pole_thickness,box_width - pole_thickness,sheet_thickness);

sheet(pole_thickness,pole_thickness,pole_hieght,
0,box_width - pole_thickness,sheet_thickness);


//horizantal poles for screws - bottom
# sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    0,pole_thickness,sheet_thickness);
   
# sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,box_width - pole_thickness,sheet_thickness);
    
# sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    box_width - pole_thickness,pole_thickness,sheet_thickness);
    
# sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,0,sheet_thickness);
    
//horizantal poles for screws - top    
# sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    0,pole_thickness,pole_hieght - sheet_thickness);
   
# sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,box_width - pole_thickness,pole_hieght - sheet_thickness);
    
# sheet(pole_thickness,box_width -
    pole_thickness * 2,pole_thickness,
    box_width - pole_thickness,pole_thickness,pole_hieght - sheet_thickness);
    
# sheet(box_width - pole_thickness * 2,
    pole_thickness,pole_thickness,
    pole_thickness,0,pole_hieght - sheet_thickness);
  
//mounting poles
# sheet(pole_thickness,pole_thickness,pole_hieght,
10.5,2,sheet_thickness);

# sheet(pole_thickness,pole_thickness,pole_hieght,
4,2,sheet_thickness);

//filter poles
sheet(pole_thickness,pole_thickness,pole_hieght,
box_width - pole_thickness,box_width - pole_thickness + 2.5,sheet_thickness);

sheet(pole_thickness,pole_thickness,pole_hieght,
0,box_width - pole_thickness + 2.5,sheet_thickness);

# sheet(box_width,1,1,
0,box_width - pole_thickness + 1.5,sheet_thickness);

//# sheet(1.5,1,1,box_width - pole_thickness,box_width - pole_thickness + 1.5, sheet_thickness);

  
//the walls  
% sheet(wall_thickness,box_width,
    pole_hieght + (sheet_thickness * 2),
    -1 * wall_thickness,0,0);

% sheet(wall_thickness,box_width + 2.5,
    pole_hieght + (sheet_thickness * 2),
    box_width,0,0);
    
// makes the hole    
difference(){
    sheet(box_width,wall_thickness,
    pole_hieght + sheet_thickness,
    0,-1 * wall_thickness,sheet_thickness);

    rotate([90,0,0]){
        translate([8,8,-1]){
            cylinder(h = 4, r = 2.5);
            }
     }
}





    
    
    