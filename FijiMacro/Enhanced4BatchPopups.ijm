//
dir1 = getDirectory("Choose Source Directory ");
//
dir2 = getDirectory("Choose Destination Directory ");
list = getFileList(dir1);
setBatchMode(true);
for (i=0; i<list.length; i++) {
showProgress(i+1, list.length);
filename = dir1 + list[i];
if (endsWith(filename, "JPG")) {
open(filename);
// INSERT MACRO HERE
makeRectangle(412, 360, 3248, 2272);
//
run("Crop");
////
run("8-bit");
run("Median...", "radius=5");
run("Subtract Background...", "rolling=10 light");
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
//
run("Analyze Particles...", "size=100 circularity=0.00-1.00 show=Outlines display clear");
saveAs("jpg", dir2+list[i]);
//
resultOut = dir2+File.nameWithoutExtension;

selectWindow("Results");
saveAs("Results", resultOut+"-Result.txt");
//

close();
}
}
