Dear Imagej and Fiji users,

I have an image analysis problems and would like your ideas and opinions. I will present here, briefly, my image processing goals to get us started:

My images are large so I have been working on a cropped version to prevent crashes, but downstream dealing with whole 4000 x 3000 may be a problem. I'm not concerned now, but if we can simplify my analysis/process to make larger photos process easier I have interest now.

A cropped version of the input image is here:
############################
https://github.com/andrewdefries/ComputerVision/blob/master/SampleImages/Test.jpg


A picture can be found below showing an individual seedlings in a crop of the large image. I did some thresholding and edge detecting in Fiji to get some plant outlines, but I think some shape filters would be a good place to start filtering objects for segmentation and local thresholding.

I have tried some suggestions from your esteemed colleagues shown here:
###########################
https://github.com/andrewdefries/ComputerVision/tree/master/FijiMacro


The question and answer below between Ignacio Arganda-Carreras and I recapitulate the problem. Please read.

################
#####
Regarding your questions:
################
#####

Q1) What do you exactly want to segment? Each individual plant or each set of plants? I'm asking because I see that sometimes you have some of them crossing each other.

*He is referring to  
###########
https://github.com/andrewdefries/ComputerVision/blob/master/SampleImages/TestLargeD_b4Particles.jpg

Answer: The goal was to have seedlings grow separately, but as you noticed some have crossed each other, or are twisted together. I would like to find a function or if-else statement to separate these seedlings from each other for further analysis.


Q2) What do you want to measure? Number of plants? branches? lengths?

Answer: Please see the image linked below this sentence with drawing on it to follow my explanations.  My goal is to extract data from 200-300 plants per plate. I will now elucidate the colored lines drawn on said photo, color by color.

##############
https://github.com/andrewdefries/ComputerVision/blob/master/SampleImages/SegmentationGoalsNColor.jpg


Red lines
########
The red vertical lines represent the stem of the plant. I have been using the length of this ROI using the hand polyline tool as my experimental variable. I would like to find an automated way to decide where to put a polyline vector in the center of the stem organ. Secondly, I would like to use the outline of this organ to do a volume estimation, if possible.

Purple lines
########
The purple lines represent the root, and I treat these similarly to the stem organ. I ignore the arborization of the root now as it is not a primary concern for my tracking at the moment. I use the length of the root as my experimental value.

Green oval
#######
This represents the cotyledon organ which is where the plant grows its new organs. The angle of the geen oval with respect to the stem changes over time, and I have been ignoring this angle change for lack of a proper method to extract the data from the images.

You can see this angle change significantly during the seven days of observation. I put the symbols alpha and beta on the seedling on the right to describe the polyline vectors I have been collecting. Seen in this image:
##########
https://github.com/andrewdefries/ComputerVision/blob/master/SampleImages/SoilEmergenceA.png

Notice on the second link below that the cotyledon opens up and peels back. I would like to have a time series of the angles theta and gamma shown. Also, it is desired to approximate the angles of change for the cotyledon with respect to the other organs, if possible. Shown here:
##########
https://github.com/andrewdefries/ComputerVision/blob/master/SampleImages/SoilEmergenceB.png


Yellow line
#######

This line is showing the stem-root border. If you zoom or look at the original photo you can see a tuft of root hairs, or sometimes a seed is still attached at this point which can be used to anchor the measurements perhaps.

Cyan seedling
###########

I hand drew this to show some more angles, areas that can be calculated to inform my model. For instance, the royal blue area bound below the cotyledon extending to the stem-root border should be represented in an area under the curve graph. The same is true of the opposite side, shown in dull green. 

We could make a bounding triangular ROI using the points 1,2, and 3 shown, such as the connection of the cotyledon to the stem and the root-stem border. Please let me know how to plan this for the workflow.

Q3) Are these your final images or you're experimenting with the setup? I'm asking because maybe you can facilitate the segmentation before imaging by creating a more unified background (of one specific solid color) or by using a grid paper with numbered squares, for example.

Answer: I have a set ~500 of images I did without a grid, in the format you see. I used a uniform LED transilluminator, but the plastic itself creates excessive brightness near the edges. I have been cropping this out.

Once I'm done extracting data from this image set I can re-build my imaging apparatus. I'm also thinking of using high res flatbed scranners to avoid artifacts of parallax that come with photography. I'm looking to build a new platform to optimize conditions for the image analysis, but have to get the data out to justify new projects.

Thank you so much for your assistance. I look forward to your responses. Please feel free to collaborate on github to facilitate executable code.

Andrew Defries PhD


