land = [[5000.0, 5000.0], 
    [5685.970280385263, 4993.614514257882],
    [5766.49169468896, 4144.42354525354],
    [5602.000334622993, 4157.369296048635], 
    [5529.22611252669, 4096.304473128414], 
    [5456.690665399869, 3982.446627943674], 
    [5353.471838246453, 3887.863998877482], 
    [5112.055346716867, 4015.328023674854], 
    [5051.622206970082, 4079.570343218481], 
    [5013.668407141524, 4138.387934792549], 
    [4891.743552354041, 4436.411977086205], 
    [4891.743552354041, 4536.411977086205], 
    [4927.890041416409, 4613.343318738775], 
    [5017.682615300364, 4738.456442252234], 
    [5043.287565040923, 4814.248173653381]];

lot_0_1_common = [5450,4150];
lot_1_2_common = [5455,4295];
lot_2_3_common = [5360,4390];
lot_3_4_common = [5260,4420];
lot_4_5_common = [5240,4440];
lot_5_6_common = [5250,4460];
lot_5_6_common2 = [5013, 4733];
lot_6_7_common = [5325,4735];
lot_8_9_common = [5465,4755];
lot_9_12_common = [5560,4712];
lot_7_10_common1 = [5250,5000];
lot_7_10_common2 = [5250,4800];
lot_10_11_common2 = [5500,5000];
lot_10_11_common1 =  [5500,4850];
lot_12_13_common1 =  [5660,4540];
lot_12_13_common2 =  [5500,4240];
lot_13_14_common = [5750,4300];

lot0 = [  [5456.690665399869, 3982.446627943674], [5353.471838246453, 3887.863998877482], [5112.055346716867, 4015.328023674854],lot_0_1_common];

lot1  = [ [5112.055346716867, 4015.328023674854],
    [5051.622206970082, 4079.570343218481], 
    
    lot_1_2_common,lot_0_1_common];

lot2 =[ [5051.622206970082, 4079.570343218481],[5013.668407141524, 4138.387934792549],

    lot_2_3_common,lot_1_2_common,];
mid = [(5013.668407141524+4891.743552354041)/2,(4138.387934792549+4436.411977086205)/2];
lot3 = [[5013.668407141524, 4138.387934792549],mid, lot_3_4_common,lot_2_3_common];

lot4 = [ mid, [4891.743552354041, 4436.411977086205],[4891.743552354041, 4536.411977086205], lot_4_5_common,
    lot_3_4_common];
    
lot5 = [ [4891.743552354041, 4536.411977086205],[4927.890041416409, 4613.343318738775],lot_5_6_common2, lot_5_6_common, lot_4_5_common];
//[4927.890041416409, 4613.343318738775]
lot6 = [ lot_5_6_common2,[5017.682615300364, 4738.456442252234], lot_6_7_common, lot_5_6_common];

lot7 = [[5043.287565040923, 4814.248173653381],[5000,5000],lot_7_10_common1,lot_7_10_common2];

lot8 = [lot_2_3_common,lot_3_4_common,lot_4_5_common, lot_5_6_common,
    lot_6_7_common,lot_8_9_common];
    
lot9 = [lot_8_9_common, lot_9_12_common, lot_1_2_common,lot_2_3_common];

lot10 = [lot_7_10_common1, lot_7_10_common2, lot_10_11_common1,lot_10_11_common2];


lot11 = [lot_10_11_common1,lot_10_11_common2, [5685.970280385263, 4993.614514257882],[5720, 4700]];

lot12 = [lot_1_2_common, lot_9_12_common, lot_12_13_common1, lot_12_13_common2, lot_0_1_common];


lot13 = [lot_12_13_common2, lot_12_13_common1,[5710,4700],lot_13_14_common];


lot14 = [lot_13_14_common,[5766.49169468896, 4144.42354525354], [5602.000334622993, 4157.369296048635], [5529.22611252669, 4096.304473128414], [5456.690665399869, 3982.446627943674],lot_0_1_common,lot_12_13_common2];

n_arrow = [[0,0],[0,100],[-20,70],[-1,70],[-1,0]];

translate([4900,5000,0]) linear_extrude(3) polygon(n_arrow);






pond = [[5180,4500],[5550,4360],[5470,4050]];


// translate([4825,3880]) scale([.8,.8,1]) color("yellow",.1)
//surface("/Users/barker/Desktop/pondland2.png",invert=false);

translate([0,0,0])
{
color("black",.8) linear_extrude(2) polygon(land);
color("blue") linear_extrude(3.2) offset(r=20) offset(r=-20) polygon(pond);

color("purple") linear_extrude(3) polygon(lot0);

color("red") linear_extrude(3) polygon(lot1);
color("yellow") linear_extrude(3) polygon(lot2);
color("cyan") linear_extrude(3) polygon(lot3);
color("brown") linear_extrude(3) polygon(lot4);
color("silver") linear_extrude(3) polygon(lot5);
color("gray") linear_extrude(3) polygon(lot6);
    
color("orange") linear_extrude(3) polygon(lot7);
    
color("palevioletred") linear_extrude(3) polygon(lot8);
color("greenyellow") linear_extrude(3) polygon(lot9);

color("OrangeRed") linear_extrude(3) polygon(lot10);
    
color("Teal") linear_extrude(3) polygon(lot11);
    
color("darkred") linear_extrude(3) polygon(lot12);
color("deepskyblue") linear_extrude(3) polygon(lot13);
color("fuchsia") linear_extrude(3) polygon(lot14);


    
    
    
}


function area(vs) =
  let (n = len(vs))
  abs(0.5 * sum([for (i=[0:n-1]) cross(vs[i], vs[(i+1)%n])]));

function int(num) = num - num % 1;

function sum(v,i=0) =
  i < len(v) ? v[i] + sum(v,i+1) : 0;
  
function print_bear(bear_in) =
  
    (bear_in >= 0 && bear_in <= 90)
    ?
     (bear_in == 0) ? "NORTH": (bear_in == 90) ? "EAST" : str( "N ", bear_dms_text(bear_dms(bear_in)), " E"):
    (bear_in > 90 && bear_in <= 180)
    ?
     (bear_in == 180) ? "SOUTH": (bear_in == 90) ? "EAST" : str( "S ", bear_dms_text(bear_dms(180-bear_in)), " E"):
     (bear_in < 0 && bear_in >= -90)
    ?
      (bear_in == -90) ? "WEST" : str( "N ", bear_dms_text(bear_dms(abs(bear_in))), " W"):
    (bear_in > -180 && bear_in < -90)
  ?
   str( "S ", bear_dms_text(bear_dms(180-abs(bear_in))), " W"):"error";


module doclot(polin) {
   n = len(polin);
    for(i=[0:n-1])
     { 
//         echo(polin[i]);
         echo(str("Line-",i," run ",print_bear(bearing(polin[i], polin[(i+1)%n])),"  ",dist(polin[i], polin[(i+1)%n] )," feet"));
         txt = str("    ",dist(polin[i], polin[(i+1)%n] )," feet");
    //     echo(txt);
            echo("yo i was eight"); 
         translate(midpoint(polin[i], polin[(i+1)%n]))
         color("green")             
         rotate([0,0,90-bearing(polin[i], polin[(i+1)%n])])
         translate([0,3,0])
        linear_extrude(4) 
         //text(str(print_bear(bearing(polin[i], polin[(i+1)%n])),txt),size=6, halign = "center");
         text(txt,size=6, halign = "center");
    }
}


function midpoint(a,b) = [(a.x+b.x)/2,(a.y+b.y)/2,0];


function polcent(vs)  = let (n = len(vs)) ([(sum([for (i=[0:n-1]) vs[i].x])/n),(sum([for (i=[0:n-1]) vs[i].y])/n),0]);
    
//echo(polcent(lot0));
  //      translate(polcent(lot0)) /linear_extrude(4) color("white") text("LOT 0");
    


function dist(a,b) = sqrt( pow((a.x - b.x),2) + pow((a.y - b.y),2) );

function bearing(b,a) = atan2(a.x - b.x, a.y - b.y );

function bear_dd(deg,min,sec) = deg + (min/60) + (sec/3600);

// given a staring point, bearing 0 = North, 90 = East, and a distance, it will return
// the next point.
function pt_bear_dist(startpt, bearing, distance) =
        [ startpt.x + ( distance * sin(bearing)), startpt.y + ( distance * cos(bearing))];

//gg = pt_bear_dist([5000,5000],0,100);  // go north 100 feet from 5000, 5000 
//echo(gg);


// takes in decimal degrees return degrees minutes seconds.


function bear_dms(bear_dd) = [int(bear_dd),
                        int((bear_dd-int(bear_dd))*60)+((round((((bear_dd-int(bear_dd))*60)-int((bear_dd-int(bear_dd))*60))*60)==60)?1:0),
                        (round((((bear_dd-int(bear_dd))*60)-int((bear_dd-int(bear_dd))*60))*60)==60)?0:round((((bear_dd-int(bear_dd))*60)-int((bear_dd-int(bear_dd))*60))*60)];
                        
function bear_dms_text(dmsin) = str(dmsin.x," degrees ",dmsin.y, " minutes " ,dmsin.z, " seconds ");

//echo(bear_dms(33.55));

//echo(bearing([10,10],[00,00]));

// doclot(land);
/*
gg = pt_bear_dist([5000,5000],0,100);
echo(gg);
*/
lots=[lot0,lot1,lot2,lot3,lot4,lot5,lot6,lot7,lot8,lot9,lot10,lot11,lot12,lot13,lot14];

//color("red") translate([4900,5100,0]) text("hello");

echo("land:", area(land)/43560);
//echo(bear_dd(89,28,0));
doclot(land);

for(n=[0:14])
{
    echo("-----------------------------------------");
    echo("Lot:",n,area(lots[n])/43560,"ACRES Total");
    if(n==8)
    doclot(lots[n]);
    translate(polcent(lots[n])) color("blue") linear_extrude(4)  text(str("LOT ",n));

    echo("-----------------------------------------");
}
 
//echo(area(pond)/43560);
