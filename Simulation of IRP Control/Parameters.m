% clear;
run('PF_M1_Pendulo_2_DataFile.m');
%% Propiedades físicas del PIR
% Masas
m1 = 0.34836; % Masa del brazo
m2 = 0.01909; % Masa del péndulo
M = 0; % Masa de la carga
% Longitudes
l1 = 0.0705; % Longitud del brazo
l2 = 0.0880; % Longitud del péndulo
%% Parámetros del motor DC
% R = 7.101;
% L = 3.4e-3;
% Kt = 0.509; % Kt = Kb
% J = 0.00567;
% Bm = 0.000931;
R = 1.1669;
L = 8.9826e-4;
Kt = 0.0540; % Kt = Kb
J = 2.3442e-6;
Bm = 5.3915e-7;
%% Parámetros del modelo
g = 9.81; % Aceleración de la gravedad

alpha = (M + m1/3 + m2)*l1^2;
beta = (M + m2/3)*l2^2;
gamma = (M + m2/2)*l1*l2;
delta = (M + m2/2)*g*l2;

a1 = -(Kt^2*beta/R + Bm*beta)/(alpha*beta - gamma^2);
a2 = -delta*gamma/(alpha*beta - gamma^2);
a3 = (Kt^2*gamma/R + Bm*gamma)/(alpha*beta - gamma^2);
a4 = alpha*delta/(alpha*beta - gamma^2);

b1 = (Kt*beta/R)/(alpha*beta - gamma^2);
b2 = (-Kt*gamma/R)/(alpha*beta - gamma^2);
%% Matrices A,B,C,D del modelo espacio-estado en tiempo continuo
Ac = [1e-6   1   1e-6   1e-6
      1e-6   a1  a2     0
      1e-6   0   0      1
      1e-6   a3  a4     0];
Bc = [0; b1; 0; b2];
Cc = [0 0 1 0];
Dc = 0;
%% Parámetros de la Respuesta Temporal
Test = 2; % Tiempo de establecimiento (s)
SP = 5; % Sobrepico (%)
epsilon = -log(SP/100)/(sqrt(pi^2 + log(SP/100)^2)); % Coeficiente de amortiguamiento
wn = 4/(epsilon*Test); % Frecuencia natural 
P = [-epsilon*wn + wn*sqrt(1-epsilon^2)*1i;-epsilon*wn - wn*sqrt(1-epsilon^2)*1i;-10*epsilon*wn;-20*epsilon*wn];
k = place(Ac,Bc,P);
syscl = ss(Ac-Bc*k,Bc,Cc,Dc);
figure;
step(syscl);
%% Convirtiendo el modelo espacio-estado a tiempo discreto
fs = 1000;
T = 1/fs;
Ad = expm(Ac*T);
Bd = (Ad-eye(4))/Ac*Bc;
Cd = Cc;
Dd = Dc;
Pz = exp(P*T);
kd = place(Ad,Bd,Pz);
disSyscl = ss(Ad-Bd*kd,Bd,Cd,Dd,T);
figure;
step(disSyscl);