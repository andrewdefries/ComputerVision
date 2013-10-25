//
open("/home/chemonkey/Documents/zPushingThePhenotypes/SlantPlateDemo/CLK024F02_SlantPlates/TestLarge.jpg");
//
selectWindow("TestLarge.jpg");
//
run("8-bit");
run("Median...", "radius=1");
run("Subtract Background...", "rolling=7 light");
//
setAutoThreshold("Default dark");
//run("Threshold...");
setAutoThreshold("Huang dark");
setThreshold(251, 255);
//
run("Convert to Mask");
//
run("Invert");
//
saveAs("Jpeg", "/home/chemonkey/Documents/zPushingThePhenotypes/SlantPlateDemo/CLK024F02_SlantPlates/TestLargeD_b4Particles.jpg");
//
run("Analyze Particles...", "size=1000 circularity=0.00-1.00 show=Outlines display clear");
//
saveAs("Jpeg", "/home/chemonkey/Documents/zPushingThePhenotypes/SlantPlateDemo/CLK024F02_SlantPlates/TestLargeD_Particles.jpg");
//
run("Close All");

