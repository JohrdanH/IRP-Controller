/*
  Stabilization of an Inverted Rotary Pendulum
  using a State-Space Feedback Controller
  around its upward position

  Hardware:
  - Teensy 4.0
  - Motor driver for two motors in a designed PCB
  - DC Motor 24V 3000 RPM with Encoder 100 pulses per revolution
  - Encoder 5V 1024 pulses per revolution with 2 channels (A,B)
  - Steel Rod
  - Mechanical Structure made with 3D Printer

*/

#define ENCAM1 2 // Channel A of Encoder 100 PPR
#define ENCBM1 3 // Channel B of Encoder 100 PPR
#define ENCAM2 4 // Channel A of Encoder 1024 PPR
#define ENCBM2 5 // Channel B of Encoder 1024 PPR
#define INA 7 // Timer FlexPWM1.3 - PWM Output to DC Motor CW direction
#define INB 8 // Timer FlexPWM1.3 - PWM Output to DC Motor CCW direction

//Gains K1, K2, K3, K4
//
//double K1 =  -0.679823287396430; //Gains calculated using pole placement with SP = 20% Ts = 4s
//double K2 =  -0.906954547193577;
//double K3 =  -14.7265763767098;
//double K4 =  -1.35643669788940;

//double K1 =  -0.299143366874695; //Gains calculated using pole placement with SP = 5% Ts = 4s
//double K2 =  -0.851790602386917;
//double K3 =  -15.3274699001836;
//double K4 =  -1.30654012868679;

double K1 =  -0.945438131445806; //Gains calculated using pole placement with SP = 5% Ts = 3s
double K2 =  -1.30374175390291;
double K3 =  -18.2714824178363;
double K4 =  -2.06633632968468;

double Ki =  60;

double Ts = 0.001;

double u = 0; 

double pos1 = 0;
double prev_pos1 = 0;
double pos2 = 0;

double phi = 0; // Angular Position of DC Motor Shaft
double theta = 0; // Angular Position of Steel Rod
double phi_dot = 0; // Angular Velocity of DC Motor Shaft
double theta_dot = 0; // Angular Velocity of Steel Rod

double phi_1 = 0;
double theta_1 = 0;
double phi_dot_1 = 0;

double z = 0;
double z_1 = 0;

long int prevT = micros();
float prev_Th = 0;

long prev_timestamp_us = micros();
long pulse_timestamp = 0;
long prev_pulse_timestamp = 0;
long pulse_timestamp2 = 0;
long prev_pulse_timestamp2 = 0;
int dir = 0; // Direction of DC Motor CW = 0 | CCW = 1
int s = 0;
int pwmOut = 0;

void setup() {
  Serial.begin(128000);
  pinMode(ENCAM1, INPUT);
  pinMode(ENCBM1, INPUT);
  pinMode(ENCAM2, INPUT);
  pinMode(ENCBM2, INPUT);
  attachInterrupt(digitalPinToInterrupt(ENCAM1),readEncoder1,RISING);
  attachInterrupt(digitalPinToInterrupt(ENCAM2),readEncoder2,RISING);
  analogWriteFrequency(7, 36620); // Teensy 4.1 pin 8 also changes to 36.62 kHz, ideal for 12 bits resolution
  analogWriteResolution(12);
  Serial.println("LABEL,HORA,PHI_DOT");
  
}

void loop() {
  if(micros() - prevT > 1000){
      prevT = micros();

      z = z_1 - theta_1*Ts;
      theta_dot = (1/Ts)*theta - (1/Ts)*theta_1;
      
      u = - K1*phi - K2*phi_dot - K3*theta - K4*theta_dot - Ki*z; // Add -Ki*z to include integral action

      if(u > 24){
        u = 24;
        s = 1;
      }
      if(u < -24){
        u = -24;
        s = -1;
      }
      pwmOut = map(abs(u),0,24,600,4095); // DC Motor dead zone: It starts moving at a value of 600 
      
      if(u >= 0){
        dir = 1;
        
      }
      else{
        dir = 0;
      }

      if(theta > -0.73 && theta < 0.73){ // Stabilization range 
        if(dir == 1){
          analogWrite(INA,pwmOut);
          analogWrite(INB,0);
        }
        else if(dir == 0){
          analogWrite(INB,pwmOut);
          analogWrite(INA,0);
        }
      }
      else{
        analogWrite(INB,0);
        analogWrite(INA,0);
      }
      phi_1 = phi;
      theta_1 = theta;
      prev_pos1 = pos1;
      Serial.print("DATA,TIME,");
      Serial.println(phi_dot);
    }
}


void readEncoder1(){
  int b1 = digitalRead(ENCBM1);
  pulse_timestamp = micros();  
  float Ts = (pulse_timestamp - prev_pulse_timestamp) * 1e-6f; // Calculate transcurred time between pulses
  prev_pulse_timestamp = pulse_timestamp;
  
  if(b1>0){
    pos1++;
    phi_dot =  (2*PI/100.0)/Ts;
    if(phi_dot > 1000 || phi_dot < -1000){ // Remove outliers
      phi_dot = 0;
    }
  }
  else{
    pos1--;
    phi_dot =  -(2*PI/100.0)/Ts;
    if(phi_dot > 1000 || phi_dot < -1000){ // Remove outliers
      phi_dot = 0;
    }
  }
  
  phi = pos1*6.2832/100.0; // Experimental test: 100 pulses per revolution
  phi_dot_1 = phi_dot;
}

void readEncoder2(){
  int b2 = digitalRead(ENCBM2);
  pulse_timestamp2 = micros();  
  float Ts = (pulse_timestamp2 - prev_pulse_timestamp2) * 1e-6f; // Calculate transcurred time between pulses
  prev_pulse_timestamp2 = pulse_timestamp2;
  
  if(b2>0){
    pos2--;
    theta_dot =  -(2*PI/1024.0)/Ts; // rad/s
  }
  else{
    pos2++;
    theta_dot =  (2*PI/1024.0)/Ts; // rad/s
  }
  theta = pos2*6.2832/1024.0; // rad
}
