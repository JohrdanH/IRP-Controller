% Simscape(TM) Multibody(TM) version: 7.3

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(12).translation = [0.0 0.0 0.0];
smiData.RigidTransform(12).angle = 0.0;
smiData.RigidTransform(12).axis = [0.0 0.0 0.0];
smiData.RigidTransform(12).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-12 37.000000000000007 0];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = 'B[PF_M1_Brazo-1:-:PF_M1_Pendulo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-46.999999999999957 -8.5830648144380461e-14 -8.2156503822261584e-15];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962562 0.57735026918962562 0.57735026918962595];
smiData.RigidTransform(2).ID = 'F[PF_M1_Brazo-1:-:PF_M1_Pendulo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 170.00000000000003 0];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(3).ID = 'B[PF_M1_Base_Motor-1:-:PF_M1_Brazo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-25.000000000000028 0 -5.8841820305133297e-15];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(4).ID = 'F[PF_M1_Base_Motor-1:-:PF_M1_Brazo-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 0];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = 'AssemblyGround[PF_M1_Pendulo-1:PF_M1_Acople-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [10.499999999999995 -80.000000000000014 0];  % mm
smiData.RigidTransform(6).angle = 1.4545655354999119;  % rad
smiData.RigidTransform(6).axis = [0 1 0];
smiData.RigidTransform(6).ID = 'AssemblyGround[PF_M1_Pendulo-1:PF_M1_Barra-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = 'AssemblyGround[PF_M1_Base_Motor-1:PF_M1_Base-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [0 36.000000000000028 0];  % mm
smiData.RigidTransform(8).angle = 2.0121161266408127;  % rad
smiData.RigidTransform(8).axis = [-0 -1 -0];
smiData.RigidTransform(8).ID = 'AssemblyGround[PF_M1_Base_Motor-1:DC Motor-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'AssemblyGround[PF_M1_Brazo-1:P2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-12 37.000000000000007 0];  % mm
smiData.RigidTransform(10).angle = 0;  % rad
smiData.RigidTransform(10).axis = [0 0 0];
smiData.RigidTransform(10).ID = 'AssemblyGround[PF_M1_Brazo-1:DELTA - ES3-01PG6941 - Incremental Rotary Encoder-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [-24.999999999999996 0 0];  % mm
smiData.RigidTransform(11).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(11).axis = [0.57735026918962584 0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(11).ID = 'AssemblyGround[PF_M1_Brazo-1:Mounting Hub-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [0 0 0];  % mm
smiData.RigidTransform(12).angle = 0;  % rad
smiData.RigidTransform(12).axis = [0 0 0];
smiData.RigidTransform(12).ID = 'RootGround[PF_M1_Base_Motor-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(7).mass = 0.0;
smiData.Solid(7).CoM = [0.0 0.0 0.0];
smiData.Solid(7).MoI = [0.0 0.0 0.0];
smiData.Solid(7).PoI = [0.0 0.0 0.0];
smiData.Solid(7).color = [0.0 0.0 0.0];
smiData.Solid(7).opacity = 0.0;
smiData.Solid(7).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.0056134152790425643;  % kg
smiData.Solid(1).CoM = [6.0151248148700747 0 0];  % mm
smiData.Solid(1).MoI = [0.20000053049419189 0.18183508896148046 0.16208629873943459];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'PF_M1_Acople*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.013477432483900207;  % kg
smiData.Solid(2).CoM = [0 44.000000000000007 0];  % mm
smiData.Solid(2).MoI = [8.7184949178663622 0.042116976512188133 8.7184949178663622];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.77647058823529413 0.75686274509803919 0.73725490196078436];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'PF_M1_Barra*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 1.0380794265519422;  % kg
smiData.Solid(3).CoM = [0 66.549095694925526 0];  % mm
smiData.Solid(3).MoI = [4634.1816412332173 3750.6794684422453 4634.1816412332173];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [1 1 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'PF_M1_Base*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 1.0266642658526788;  % kg
smiData.Solid(4).CoM = [0.88109325242537884 52.449051808564583 0];  % mm
smiData.Solid(4).MoI = [1149.1155015274139 218.87332848090745 1161.5362096681451];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 36.170196216499214];  % kg*mm^2
smiData.Solid(4).color = [0.20000000000000001 0.20000000000000001 0.20000000000000001];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'DC Motor*:*Predeterminado';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.039966755783157455;  % kg
smiData.Solid(5).CoM = [4.4872963407396931 12.848369420754127 0];  % mm
smiData.Solid(5).MoI = [16.997450150609051 24.474434248034456 27.059878220258344];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 -6.6744739220854568];  % kg*mm^2
smiData.Solid(5).color = [1 1 1];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'P2*:*Predeterminado';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.30156521547391824;  % kg
smiData.Solid(6).CoM = [17.560566127177015 0.79193911522218263 0.00033545495309661504];  % mm
smiData.Solid(6).MoI = [56.435309511542307 58.99204244108882 66.571473383548366];  % kg*mm^2
smiData.Solid(6).PoI = [9.6198851146118663e-05 -0.0030880568390435695 3.9020811691854536];  % kg*mm^2
smiData.Solid(6).color = [0.6470588235294118 0.61960784313725492 0.58823529411764708];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = 'DELTA - ES3-01PG6941 - Incremental Rotary Encoder*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.006824018054142106;  % kg
smiData.Solid(7).CoM = [-0.38335849354541018 -6.5544513185219767e-06 3.1476285078386774];  % mm
smiData.Solid(7).MoI = [0.30555620600200123 0.2813086922023148 0.52506777111924074];  % kg*mm^2
smiData.Solid(7).PoI = [1.0140185649692465e-07 -0.0007793581847280103 3.1431817064740412e-07];  % kg*mm^2
smiData.Solid(7).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = 'Mounting Hub*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 2.0285881497601705;  % deg
smiData.RevoluteJoint(1).ID = '[PF_M1_Brazo-1:-:PF_M1_Pendulo-1]';

smiData.RevoluteJoint(2).Rz.Pos = 1.9929100138508942;  % deg
smiData.RevoluteJoint(2).ID = '[PF_M1_Base_Motor-1:-:PF_M1_Brazo-1]';

