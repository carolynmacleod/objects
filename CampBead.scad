
// Module names are of the form poly_<inkscape-path-id>().
// As a result you can associate a polygon in this OpenSCAD program with the
//  corresponding SVG element in the Inkscape document by looking for 
//  the XML element with the attribute id="inkscape-path-id".

// Paths have their own variables so they can be imported and used 
//  in polygon(points) structures in other programs.
// The NN_points is the list of all polygon XY vertices. 
// There may be an NN_paths variable as well. If it exists then it 
//  defines the nested paths. Both must be used in the 
//  polygon(points, paths) variant of the command.

profile_scale = 25.4/90; //made in inkscape in mm

// helper functions to determine the X,Y dimensions of the profiles
function min_x(shape_points) = min([ for (x = shape_points) min(x[0])]);
function max_x(shape_points) = max([ for (x = shape_points) max(x[0])]);
function min_y(shape_points) = min([ for (x = shape_points) min(x[1])]);
function max_y(shape_points) = max([ for (x = shape_points) max(x[1])]);

height = 5;
width = 1;


path3748_0_points = [[0.077872,95.503570],[-2.122076,85.049308],[-3.873795,73.919759],[-5.031635,63.208250],[-5.449948,54.008110],[-5.724268,50.431320],[-9.656184,53.377010],[-14.437322,57.011760],[-19.421141,60.413117],[-29.680960,66.353541],[-34.799027,68.811553],[-39.803911,70.874061],[-44.616645,72.500536],[-49.158263,73.650450],[-56.220931,74.455018],[-59.790633,74.474729],[-62.884265,74.218630],[-68.434658,72.837341],[-73.454553,70.464186],[-77.854039,67.217291],[-81.543207,63.214781],[-84.432147,58.574784],[-86.430948,53.415424],[-87.449700,47.854828],[-87.398494,42.011120],[-86.823148,37.857356],[-85.650612,33.894190],[-84.708009,31.080750],[-87.232812,28.366280],[-89.515706,25.648534],[-91.467909,22.770045],[-93.080933,19.755555],[-94.346291,16.629805],[-95.255495,13.417535],[-95.800054,10.143485],[-95.971483,6.832397],[-95.761291,3.509010],[-94.583483,-2.234581],[-92.233186,-7.915150],[-88.983095,-13.371513],[-85.168486,-17.824042],[-80.728933,-21.331010],[-75.604009,-23.950688],[-72.400324,-25.106059],[-69.458433,-25.784388],[-66.041134,-26.101019],[-61.411223,-26.171298],[-55.026728,-25.987217],[-50.072660,-25.184653],[-43.482440,-23.504344],[-37.318628,-21.350890],[-31.615068,-18.737875],[-26.405606,-15.678882],[-24.386596,-14.464297],[-23.851197,-14.241871],[-23.748002,-14.334757],[-27.354107,-17.943350],[-34.127160,-23.405029],[-38.847101,-26.934642],[-40.288737,-30.043616],[-45.089037,-41.454261],[-48.493116,-51.995923],[-50.524642,-61.756987],[-51.033094,-66.372417],[-51.207282,-70.825842],[-50.763032,-78.153720],[-50.169859,-81.316552],[-49.305603,-84.210791],[-48.152475,-86.885547],[-46.692688,-89.389927],[-44.908451,-91.773041],[-42.781977,-94.083997],[-40.175272,-96.422590],[-37.540768,-98.213421],[-34.640380,-99.592869],[-31.236023,-100.697313],[-27.253236,-101.358691],[-22.390205,-101.579499],[-17.515244,-101.359665],[-13.496664,-100.699113],[-10.458586,-99.708958],[-7.457506,-98.396132],[-4.665861,-96.845862],[-2.256088,-95.143377],[0.023362,-93.297570],[2.340462,-95.118450],[7.053441,-98.147797],[12.282505,-100.257636],[17.953865,-101.425777],[23.993732,-101.630030],[27.577879,-101.337403],[30.747863,-100.790524],[33.649746,-99.956161],[36.429592,-98.801078],[40.617536,-96.263010],[44.155599,-93.002901],[47.024530,-89.071714],[49.205077,-84.520412],[50.677989,-79.399956],[51.424016,-73.761311],[51.423907,-67.655439],[50.658412,-61.133302],[49.294627,-54.542032],[47.441512,-47.859419],[45.066578,-41.012479],[42.137335,-33.928226],[38.621294,-26.533676],[34.485964,-18.755845],[29.698857,-10.521748],[24.227482,-1.758400],[20.868462,3.972080],[23.659278,1.413635],[29.305383,-4.823834],[35.917872,-12.583528],[41.607842,-19.708650],[43.694423,-22.378479],[45.402837,-23.847528],[47.759671,-24.702719],[51.791512,-25.530973],[56.198358,-26.046945],[61.575432,-26.219391],[66.798103,-26.048179],[70.741742,-25.533173],[73.809744,-24.659685],[76.721652,-23.517074],[79.470395,-22.110430],[82.048902,-20.444844],[84.450101,-18.525406],[86.666921,-16.357207],[88.692292,-13.945336],[90.519142,-11.294884],[93.204853,-6.199010],[95.005130,-1.004507],[95.925498,4.215877],[95.971483,9.389391],[95.148610,14.443286],[93.462405,19.304812],[90.918393,23.901220],[87.522102,28.159760],[84.847892,31.005290],[85.970702,34.510540],[86.846450,37.752052],[87.407889,41.004717],[87.656947,44.240345],[87.595553,47.430741],[87.225633,50.547715],[86.549116,53.563075],[85.567930,56.448627],[84.284002,59.176180],[81.500497,63.480330],[78.218854,67.091123],[74.463109,69.998590],[70.257297,72.192764],[65.625452,73.663677],[60.591611,74.401361],[55.179809,74.395848],[49.414082,73.637170],[45.309328,72.649029],[40.901110,71.216193],[31.469694,67.161921],[21.710667,61.765317],[12.214862,55.317340],[4.233233,48.472864],[-3.069548,40.978580],[-5.380138,38.527580],[-4.762967,40.233446],[-2.669768,43.856439],[3.073392,52.207340],[5.783672,55.636990],[5.996212,59.339660],[6.935081,67.634341],[8.741514,76.826501],[11.196431,85.973311],[14.080752,94.131940],[14.984232,96.326500],[12.365882,98.978250],[9.747532,101.630030],[5.658952,101.630030],[1.570352,101.630030],[0.078002,95.503540],[0.077872,95.503570]];

module poly_path3748(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path3748_0_points);
  }
}

// The shapes
//poly_path3748(height, width);
union(){
    translate([0,29,2.5])
        difference(){
            cylinder(h=5, r=3, center=true, $fn=300);
            cylinder(h=5, r=2.5, center=true, $fn=300);
        }
difference(){
    poly_path3748(height, width);

    union(){
        translate([-3, 17, 2])
            linear_extrude(5)
                text("4th", 4);
         translate([-10, 12, 2])
            linear_extrude(5)
                text("Thornhill", 4);
        translate([-7, 7, 2])
            linear_extrude(5)
                text("Sparks", 4);
    }
 }
}