// Replacement air-frame for ARES Recon / Recon HD FPV drones.

// These machines use 8.5x20mm brushed motors, and a rather 'strange' battery size by default.
// I've attempted to make this as close to the original geometry as possible while moving the battery to the 'top'.
// I did this to make it easier to swap batteries, and to enable using larger batteries.
// As a result, the nacell mounts are attached slightly lower.
// To make this more printable, the boards and batteries mount on the lower part of the printed frame.
// The nacells are split in two and friction fit.
// We reuse:
//    props (2.5" or 65mm) sets.
//    prop guards (the nacells are designed to use the original ares prop guards)
//    screws (you'll need to keep a few on hand)
//    landing bumpers. They fit in the bottom of the nacells. :-)
//    
// The original frame (minus screws, props, guards) weighed in at ~13grams.
// Printing in PETG, PrusaSlicer says it'll be 11.88g. :-D
// 
$fn = 180;
nozzle_diameter = 0.4;
wall = 0.45; // one line
twall = 0.87; // two lines
fwall = 1.7; // four lines

motor_od = 8.5 + nozzle_diameter;
motor_tight = motor_od - 0.25;

screw_d = 1.5; // clearance diameter of screws.
screw_hole_d = 0.75 + nozzle_diameter; // for differencing a hole for a screw.

layer = 0.15;
function layer_height(target) = round(target / layer) * layer;
function layers(laf) = laf * layer;

frame_height = layer_height(3);

battery_box = [35, 30, 8.5]; // standard box with ares recon FPV 600mAh battery.
//battery_box = [40, 25, 9.0]; // Battery box for 

fpv_board = [40, 17, 5];  // with shielding.

//fpv cam is 7.9 square, 7.9mm lens opening 2.3mm to 4.5 high.


// arms are 17mm, then 21.5 to the body.
// body is 35mm wide, 50mm long.
// arms are 10mm apart.

// Stock Ares FPV Battery @ 500mAh
//color("pink")
//    translate([0, 0, layer_height(10) + layers(5) + 8.5 / 2]) 
//        cube([35 + nozzle_diameter, 30 + nozzle_diameter, 8.5], center = true);

// Replacement batteries... higher mAh output
//color("orange")
//    translate([0, 0, layer_height(10) + layers(5) + 9 / 2]) 
//        cube([52, 30, 9], center = true);


// Main body.    
difference() {
    union() {
        translate([-25, -0.5 * (36 + twall), 0])
            cube([50, 36 + twall, frame_height]);
        // camera 8x8 mount (use double-stick tape)
        translate([-25, 0, 0]) rotate([0, 255, 0]) translate([0, -4, -2]) cube([8, 8, 2]);
        // fpv antenna mount
        hull() {
            translate([25 - 1, -4, 0]) cube([1, 8, frame_height]);
            translate([25 + 3.5, 0, 3.5]) rotate([90, 0, 0]) cylinder(d = 8, h = 8, center = true);
        }
        // main board mounts
        // 1.5mm standoffs & screw receivers
        // 18.25 oc x axis
        pinloc = [18, 14];
        for (my = [0 : 1]) {
            mirror([0, my, 0])
            for (mx = [0 : 1]) {
                mirror([mx, 0, 0])
                    translate([pinloc[0] / 2, pinloc[1] / 2, frame_height]) {
                        if ((mx == 0 && my == 0) || (mx == 1 && my == 1)) {
                            difference() {
                                cylinder(d = 3, h = layer_height(2.75));
                                cylinder(d = 0.85 + nozzle_diameter, h = layer_height(2.75));
                            }
                        } else {
                            cylinder(d = 1.5, h = 4.5);
                            translate([-1.5, -twall / 2, 0]) cube([3, twall, layer_height(2.75)]);
                        }
                    }
            }
        }
        
        // stands for the battery bay.
        for (my = [0 : 1]) {
            mirror([0, my, 0])
            for (mx = [0 : 1]) {
                mirror([mx, 0, 0])
                    translate([-fpv_board[0] / 2 + 3, (-36 - twall) / 2, frame_height + layer]) {
                        cube([5, 5, layer_height(10) - (frame_height + layer)]);
                    }
            }
        }
        // Battery bay bottom
        hull() {
            for (my = [0 : 1]) 
                for (mx = [0:1])
                    mirror([mx, 0, 0])
                        mirror([0, my, 0])
                            translate([-fpv_board[0] / 2 + 3, (-36 - twall) / 2, layer_height(10)]) {
                                cube([5, 5, layers(4)]);
                            translate([-12, (36 - twall) / 2 + twall, 0])
                                cube([2, fpv_board[1] / 2, layers(4)]);
                            }
        }
        
        // arms
        mirror([0, 0, 0]) arm();
        mirror([1, 0, 0]) arm();
        mirror([0, 1, 0]) {
            mirror([0, 0, 0]) arm();
            mirror([1, 0, 0]) arm();
        }
    }
    
    // Cuts for rubber bands to hold the battery
    for (my = [0 : 1]) 
        for (mx = [0:1])
            mirror([mx, 0, 0])
                mirror([0, my, 0]) {
                    translate([4.5, (-36 - twall) / 2 + 1.5, frame_height + 5]) resize([5, 3, 0]) cylinder(d = 5, h = 5, $fn = 6);
                    translate([-(25 + wall) / 2 - 15, 4.5, frame_height + 5]) resize([3, 5, 0]) rotate([0, 0, 30]) cylinder(d = 5, h = 5, $fn = 6);
                };
    
    // weight reductions
    resize([12, 36 - fwall * 6, 0]) rotate([0, 0, 45]) cylinder($fn = 4, d = 10, h = frame_height + 1);
    translate([16, 0, 0]) resize([8, 17, 0]) rotate([0, 0, 45]) cylinder($fn = 4, d = fpv_board[1], h = frame_height + 1);
    translate([-16, 0, 0]) resize([8, 17, 0]) rotate([0, 0, 45]) cylinder($fn = 4, d = fpv_board[1], h = frame_height + 1);
    for (mx = [0, 1]) mirror([mx, 0, 0]) difference() {
        translate([fpv_board[0] / 4, 0, frame_height + 5]) resize([20, 0, 0]) cylinder(d = 28, h = 10, $fn = 6);
        translate([fpv_board[0] / 4 -fwall / 2, -(36 + twall) / 2, frame_height + 5]) cube([fwall, 36 + twall, 10]);
        translate([fpv_board[0] / 4 - 10, -fwall / 2, frame_height + 5]) cube([20, fwall, 10]);
    }
    
    // clipped corners
    for (my = [0 : 1]) {
        mirror([0, my, 0])
        for (mx = [0 : 1]) {
            mirror([mx, 0, 0])
                translate([-25, - 0.5 * (36 + twall), -0.5]) rotate([0, 0, -15])
                    cylinder($fn = 3, d = 29, h =15);
        }
    }
    
    // battery mount screws.
    color("blue")
    for (my = [0 : 1]) {
        mirror([0, my, 0])
        for (mx = [0 : 1]) {
            mirror([mx, 0, 0])
                translate([-fpv_board[0] / 2 + 3 + 2.5 + twall, (-(36 + twall) / 2 )+ twall + 2.5, frame_height - layer_height(2.5) - layers(4)]) {
                    translate([0, 0, -0.5]) cylinder(d = 2.33 + nozzle_diameter, h = 3);
                    intersection() {
                        translate([0, 0, -0.5]) cylinder(d = 2.33 + nozzle_diameter, h = 3 + layer);
                        translate([0, 0, 2.5 + layer]) cube([2.33 + nozzle_diameter, 0.8 + nozzle_diameter, layers(2)] , center = true);
                    }
                    translate([0, 0, 2.5]) cylinder(d = 0.8 + nozzle_diameter, h= 7);
                }
        }
    }
    
    // fpv board and anchors
    color("green") {
        // board, recessed 2.25mm + 1.25 for shielding, and padding.
         translate([0, 0, -fpv_board[2] / 2 + frame_height - layers(3)])
            cube(fpv_board, center = true);
        // zip tie cuts
        for (my = [0 : 1]) {
            mirror([0, my, 0])
            for (mx = [0 : 1]) {
                mirror([mx, 0, 0])
                    translate([-fpv_board[0] / 2 + 3, -fpv_board[1] / 2 - 2 - twall, -5])
                        cube([4, 2, 7]);
            }
        }
        // do these twice, to balance weight
        for (my = [0 : 1]) {
            mirror([0, my, 0]) {
                // antenna wire cut.
                translate([fpv_board[0] / 2, fpv_board[1]/ 2 - 2, 0]) cylinder(d = 3, h = frame_height - layers(3));
                // control and voltage cut.
                translate([-fpv_board[0] / 2, fpv_board[1]/ 2 - 3.75, 0]) cylinder(d = 5, h = frame_height - layers(3));
            }
        }
        // antenna mount cut.
        translate([25 + 3.5, 0, 3.5]) rotate([90, 0, 0]) cylinder(d = 4.75 + nozzle_diameter, h = 8.5, center = true);
        translate([25 + 3.5, 0, 3.5]) rotate([0, -45, 0]) translate([0, -4.25, -2]) cube([8, 8.5, 4]);
    }
}

module arm() {
    translate([5 + (3 + 3 * twall) / 2, 35 / 2, 0]) union() {
        // Wire guide
        translate([0, 0, frame_height]) {
            difference() {
                translate([-fwall, -fwall / 2, 0]) cube([fwall * 2, fwall, 3]);
                translate([0, 0, layer_height(1 + layer)]) rotate([90, 0, 0]) translate([0, 0, -fwall / 2]) resize([1.25, 2]) cylinder(d = 2, h = fwall);
                translate([-0.25 / 2, -fwall / 2, 2]) cube([0.25, fwall, 2]);
            }
        }
        
        hull() {
            translate([(3 + 3 * twall) * -0.5, -35 / 2, 0])
                cube([(3 + 3 * twall), (3 + 3 * twall), frame_height]);
            translate([0, 21.5, 0]) cylinder(d = 3 + 3 * twall, h = frame_height);
        }
        // Wire guide
        translate([0, 21.5, frame_height]) rotate([0, 0, -45]) {
            difference() {
                translate([-fwall, -fwall / 2, 0]) cube([fwall * 2, fwall, 3]);
                translate([0, 0, layer_height(1 + layer)]) rotate([90, 0, 0]) translate([0, 0, -fwall / 2]) resize([1.25, 2]) cylinder(d = 2, h = fwall);
                translate([-0.25 / 2, -fwall / 2, 2]) cube([0.25, fwall, 2]);
            }
        }
        translate([0, 21.5, 0])  {
            union() {
                hull() {
                    cylinder(d = 3 + 3 * twall, h = frame_height);
                    translate([17 - ((3 + 3 * twall) * 1.5), (3 + 3 * twall) * - 0.5, 0])
                        cube([3.1 + 3 * twall, 3 + 3 * twall, frame_height]);
                }
                translate([17, 0, 0]) mirror([0, 1, 0]) nacell();
            }
        }
    }
}

module nacell(height = layer_height(24.5)) {
    nacell_od = 10.25;
    translate([13, 0, -(height - layer_height(1.5) - 15.5)])
    difference() {
        union() {
            hull() {
                cylinder(d = nacell_od, h = height);
                translate([0, 0, -layer_height(1.4)])
                        cylinder(d = 6 + twall, h = layer_height(1.5));
            }
            translate([0, 0, height - layer_height(1.5) - 2.5 -  3.5 - layer_height(0.5)]) {
                hull() {
                    intersection() {
                        union() {
                            cylinder(r = 6.25 + (2 / 2) + twall, h = 3.5 + layer_height(0.5));
                            translate([0, 0, -2]) cylinder(d1 = nacell_od, r2 = 6.25 + (2 / 2) + twall, h = 2);
                        };
                        translate([-2 / 2 - wall, 2 / 2 + wall, -2]) rotate([0, 0, -90]) cube([6.25 + 2 + 2 * twall, 6.25 + 2 + 2 * twall, 3.5 + layer_height(0.5) + 2]);
                    }
                    translate([0, 0, -2]) cylinder(d = nacell_od, h = 3.5 + layer_height(0.5) + 2);
                }
            }
            
            translate([0, 0, -layer_height(1.4)]) {
                hull() {
                    cylinder(d = 7.5 + twall, h = layer_height(1.5));
                    translate([0, 0, -layer_height(0.75)]) 
                        cylinder(d = 6 + twall, h = layer_height(0.75)) ;
                }
                hull() {
                    translate([0, 0, -layer_height(0.75)]) 
                        cylinder(d = 6 + twall, h = layer_height(0.75)) ;
                    translate([0, 0, -layer_height(1)]) 
                        cylinder(d = 6 + twall, h = layer_height(1));
                }
            }
            
            // Nacell Connection
            hull() {
                translate([-13 + ((3 + 3 * twall) * - 0.5), (3 + 3 * twall) * - 0.5, height - layer_height(1.5) - 15.5]) 
                    cube([3 + 3 * twall, 3 + 3 * twall, frame_height]);
                translate([-8, 0, height - layer_height(1.5) - 15.5]) 
                    cylinder(d = 3 + 3 * twall, h = frame_height);
            }
            hull() {
                translate([-8, 0, height - layer_height(1.5) - 15.5]) 
                    cylinder(d = 3 + 3 * twall, h = frame_height);
                translate([0, 0, height - layer_height(1.5) - 15.5])                 
                    cylinder(d = nacell_od, h = layer_height(5));
            }
        }
        
        // Brushed Motor & Landing Pad Stack.
        color("grey") {
            // Cutouts for prop guards
            rotate([0, 0, 45]) {
                translate([0, 0, height - layer_height(1.5) - 1.25]) cube([4, nacell_od, 2.5], center = true);
                rotate([0, 0, 90]) translate([0, 0, height - layer_height(1.5) - 1.25]) cube([4, nacell_od, 2.5], center = true);
            }

            // Need 1.6mm holes at the proper spots for mounting the guards.
            translate([0, 0, height - layer_height(1.5) - 2.5 -  3.5]) {
                translate([0, -6.25, 0]) cylinder(d = 1.6 + nozzle_diameter, h = 3.5);
                translate([6.25, 0, 0]) cylinder(d = 1.6 + nozzle_diameter, h = 3.5);
                rotate([0, 0, -45]) translate([6.5, 0, 0]) cylinder(d = 1.6 + nozzle_diameter, h = 3.5);
            }
            
            // Landing Pad and motor stack
            translate([0, 0, height - layer_height(1.5) - 20]) {
                cylinder(d = motor_tight, h = 15);
                translate([0, 0, 15]) cylinder(d = motor_od, h = 5);
                translate([0, 0, 20]) cylinder(d1 = motor_tight, d2 = 6, h = layer_height(1));
                translate([0, 0, 19]) cylinder(d = 6, h = layer_height(1.5) + 2);
                translate([0, 0, -7]) {
                    sphere(d = 4);
                    cylinder(d = 4, h = 3);
                    translate([0, 0, 3]) cylinder(d = 5, h = 4);
                }
            }
            
            // Friction fit slot.
            rotate([0, 0, 180]) translate([0, -1, height - layer_height(1.5) - 20 - 7]) {
                cube([nacell_od - 1, 2, 7 + 15]);
                translate([nacell_od - 1, 1, 0]) cylinder(d = 2, h = 7 + 15);
            }
            
            // horizontal cut for landing bumper.
            translate([0, 0, height - layer_height(1.5) - 15.5]) cube([20, 20, layer / 4], center = true);
        }
        
        // LED
        color("red") {
            translate([-13, 0, 0]) cylinder(d = 2.9 + nozzle_diameter, h= height);
        }
    }
}
    


