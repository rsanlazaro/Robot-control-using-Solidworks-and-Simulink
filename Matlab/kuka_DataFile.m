% Simscape(TM) Multibody(TM) version: 25.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(11).translation = [0.0 0.0 0.0];
smiData.RigidTransform(11).angle = 0.0;
smiData.RigidTransform(11).axis = [0.0 0.0 0.0];
smiData.RigidTransform(11).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 363 0];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(1).ID = "B[1-1:-:2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0 3.7585601992658104e-12 -3.9581884780369488e-26];  % mm
smiData.RigidTransform(2).angle = 1.0519619473181293e-14;  % rad
smiData.RigidTransform(2).axis = [-1 0 -0];
smiData.RigidTransform(2).ID = "F[1-1:-:2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [260 -75 282];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "B[2-1:-:3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [1.7621459846850485e-12 -3.4106051316484809e-13 -39.999999999990919];  % mm
smiData.RigidTransform(4).angle = 1.0519619473181293e-14;  % rad
smiData.RigidTransform(4).axis = [1 0 0];
smiData.RigidTransform(4).ID = "F[2-1:-:3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 680.00000000000011 -3.0000000000000027];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = "B[3-1:-:4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-346.4999999999996 22.500000000000227 130.00000000001998];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [1 0 0];
smiData.RigidTransform(6).ID = "F[3-1:-:4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [130.00000000000011 0 0];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(7).ID = "B[4-1:-:5-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-1.2096990076315704e-11 -1.1368683772170085e-13 2.2737367544331607e-13];  % mm
smiData.RigidTransform(8).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(8).axis = [1 -4.0873290421852873e-44 -3.4542034091043038e-15];
smiData.RigidTransform(8).ID = "F[4-1:-:5-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 76.999999999999957 -189.99999999999994];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(9).ID = "B[5-1:-:6-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [4.5474735088646412e-13 1.3500311979441904e-11 -145.00000000000014];  % mm
smiData.RigidTransform(10).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(10).axis = [-1 -1.5407439555097846e-33 2.7755575615628815e-17];
smiData.RigidTransform(10).ID = "F[5-1:-:6-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 0];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = "RootGround[1-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(6).mass = 0.0;
smiData.Solid(6).CoM = [0.0 0.0 0.0];
smiData.Solid(6).MoI = [0.0 0.0 0.0];
smiData.Solid(6).PoI = [0.0 0.0 0.0];
smiData.Solid(6).color = [0.0 0.0 0.0];
smiData.Solid(6).opacity = 0.0;
smiData.Solid(6).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 2.6168653207445067;  % kg
smiData.Solid(1).CoM = [-0.039216767499135226 8.3166450607446603 -119.23356845949196];  % mm
smiData.Solid(1).MoI = [17120.607758885588 16287.459456171451 5178.2753906148546];  % kg*mm^2
smiData.Solid(1).PoI = [1574.8751379793973 -0.83817239089071893 -6.7449109796278313];  % kg*mm^2
smiData.Solid(1).color = [0.90980392156862744 0.44313725490196076 0.031372549019607843];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "5*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 70.656654855805215;  % kg
smiData.Solid(2).CoM = [-1.2049510400427896 158.91566716881826 42.638726998003307];  % mm
smiData.Solid(2).MoI = [2152730.9861787651 2204099.9857885689 1737982.0494403522];  % kg*mm^2
smiData.Solid(2).PoI = [60930.218979635538 24318.895470481177 472.27845567477243];  % kg*mm^2
smiData.Solid(2).color = [0.20000000000000001 0.20000000000000001 0.20000000000000001];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 19.996648000646129;  % kg
smiData.Solid(3).CoM = [146.96347351877534 0.07041122331953964 163.0863228662364];  % mm
smiData.Solid(3).MoI = [431278.20449810626 716041.34843742778 540060.1818621133];  % kg*mm^2
smiData.Solid(3).PoI = [3593.1085776506834 -224946.16686128572 6470.5411457373066];  % kg*mm^2
smiData.Solid(3).color = [0.90980392156862744 0.44313725490196076 0.031372549019607843];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 12.08383140020957;  % kg
smiData.Solid(4).CoM = [-237.48158849771491 9.7983621005959627 17.389217089564042];  % mm
smiData.Solid(4).MoI = [56500.797462036477 432811.07249459589 441065.26534448122];  % kg*mm^2
smiData.Solid(4).PoI = [-3337.9569505397931 21842.248434876983 9689.4834246214668];  % kg*mm^2
smiData.Solid(4).color = [0.90980392156862744 0.44313725490196076 0.031372549019607843];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "4*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 11.860842538335003;  % kg
smiData.Solid(5).CoM = [0.16488559229122768 309.41048621195341 50.48116646983069];  % mm
smiData.Solid(5).MoI = [546362.56499966921 55050.546941519926 548727.83180641418];  % kg*mm^2
smiData.Solid(5).PoI = [-23509.770281147852 147.11286667984987 -474.45063160077024];  % kg*mm^2
smiData.Solid(5).color = [0.90980392156862744 0.44313725490196076 0.031372549019607843];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "3*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 1.8560707227038469;  % kg
smiData.Solid(6).CoM = [52.439002084888557 -4.9902781230923842e-05 -62.540874691324326];  % mm
smiData.Solid(6).MoI = [12260.337869981546 16628.90619356557 7062.1285555812983];  % kg*mm^2
smiData.Solid(6).PoI = [-0.04051204094033177 -901.91972995782419 -0.034577991346824197];  % kg*mm^2
smiData.Solid(6).color = [0.90980392156862744 0.44313725490196076 0.031372549019607843];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "6*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(5).Rz.Pos = 0.0;
smiData.RevoluteJoint(5).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 89.999999999999986;  % deg
smiData.RevoluteJoint(1).ID = "[1-1:-:2-1]";

smiData.RevoluteJoint(2).Rz.Pos = -89.999999999999986;  % deg
smiData.RevoluteJoint(2).ID = "[2-1:-:3-1]";

smiData.RevoluteJoint(3).Rz.Pos = -89.999999999999986;  % deg
smiData.RevoluteJoint(3).ID = "[3-1:-:4-1]";

smiData.RevoluteJoint(4).Rz.Pos = 90.000000000000384;  % deg
smiData.RevoluteJoint(4).ID = "[4-1:-:5-1]";

smiData.RevoluteJoint(5).Rz.Pos = 179.99999999999977;  % deg
smiData.RevoluteJoint(5).ID = "[5-1:-:6-1]";

