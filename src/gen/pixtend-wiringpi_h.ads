pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package Pixtend.wiringPi_h is

   --  TRUE : constant := 1;  --  wiringPi.h:32
   --  unsupported macro: FALSE (!TRUE)
   --  unsupported macro: UNU __attribute__((unused))

   PI_GPIO_MASK : constant := (16#FFFFFFC0#);  --  wiringPi.h:43

   WPI_MODE_PINS : constant := 0;  --  wiringPi.h:49
   WPI_MODE_GPIO : constant := 1;  --  wiringPi.h:50
   WPI_MODE_GPIO_SYS : constant := 2;  --  wiringPi.h:51
   WPI_MODE_PHYS : constant := 3;  --  wiringPi.h:52
   WPI_MODE_PIFACE : constant := 4;  --  wiringPi.h:53
   WPI_MODE_UNINITIALISED : constant := -1;  --  wiringPi.h:54

   INPUT : constant := 0;  --  wiringPi.h:58
   OUTPUT : constant := 1;  --  wiringPi.h:59
   PWM_OUTPUT : constant := 2;  --  wiringPi.h:60
   GPIO_CLOCK : constant := 3;  --  wiringPi.h:61
   SOFT_PWM_OUTPUT : constant := 4;  --  wiringPi.h:62
   SOFT_TONE_OUTPUT : constant := 5;  --  wiringPi.h:63
   PWM_TONE_OUTPUT : constant := 6;  --  wiringPi.h:64

   LOW : constant := 0;  --  wiringPi.h:66
   HIGH : constant := 1;  --  wiringPi.h:67

   PUD_OFF : constant := 0;  --  wiringPi.h:71
   PUD_DOWN : constant := 1;  --  wiringPi.h:72
   PUD_UP : constant := 2;  --  wiringPi.h:73

   PWM_MODE_MS : constant := 0;  --  wiringPi.h:77
   PWM_MODE_BAL : constant := 1;  --  wiringPi.h:78

   INT_EDGE_SETUP : constant := 0;  --  wiringPi.h:82
   INT_EDGE_FALLING : constant := 1;  --  wiringPi.h:83
   INT_EDGE_RISING : constant := 2;  --  wiringPi.h:84
   INT_EDGE_BOTH : constant := 3;  --  wiringPi.h:85

   PI_MODEL_A : constant := 0;  --  wiringPi.h:90
   PI_MODEL_B : constant := 1;  --  wiringPi.h:91
   PI_MODEL_AP : constant := 2;  --  wiringPi.h:92
   PI_MODEL_BP : constant := 3;  --  wiringPi.h:93
   PI_MODEL_2 : constant := 4;  --  wiringPi.h:94
   PI_ALPHA : constant := 5;  --  wiringPi.h:95
   PI_MODEL_CM : constant := 6;  --  wiringPi.h:96
   PI_MODEL_07 : constant := 7;  --  wiringPi.h:97
   PI_MODEL_3B : constant := 8;  --  wiringPi.h:98
   PI_MODEL_ZERO : constant := 9;  --  wiringPi.h:99
   PI_MODEL_CM3 : constant := 10;  --  wiringPi.h:100
   PI_MODEL_ZERO_W : constant := 12;  --  wiringPi.h:101
   PI_MODEL_3BP : constant := 13;  --  wiringPi.h:102
   PI_MODEL_3AP : constant := 14;  --  wiringPi.h:103
   PI_MODEL_CM3P : constant := 16;  --  wiringPi.h:104

   PI_VERSION_1 : constant := 0;  --  wiringPi.h:106
   PI_VERSION_1_1 : constant := 1;  --  wiringPi.h:107
   PI_VERSION_1_2 : constant := 2;  --  wiringPi.h:108
   PI_VERSION_2 : constant := 3;  --  wiringPi.h:109

   PI_MAKER_SONY : constant := 0;  --  wiringPi.h:111
   PI_MAKER_EGOMAN : constant := 1;  --  wiringPi.h:112
   PI_MAKER_EMBEST : constant := 2;  --  wiringPi.h:113
   PI_MAKER_UNKNOWN : constant := 3;  --  wiringPi.h:114
   --  arg-macro: procedure PI_THREAD (X)
   --    void *X (UNU void *dummy)

   WPI_FATAL : constant := 1;  --  wiringPi.h:130
   WPI_ALMOST : constant := 0;  --  wiringPi.h:131

   piModelNames : array (0 .. 19) of Interfaces.C.Strings.chars_ptr  -- wiringPi.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "piModelNames";

   piRevisionNames : array (0 .. 15) of Interfaces.C.Strings.chars_ptr  -- wiringPi.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "piRevisionNames";

   piMakerNames : array (0 .. 15) of Interfaces.C.Strings.chars_ptr  -- wiringPi.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "piMakerNames";

   piMemorySize : aliased array (0 .. 7) of aliased int  -- wiringPi.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "piMemorySize";

   type wiringPiNodeStruct;
   type wiringPiNodeStruct is record
      pinBase : aliased int;  -- wiringPi.h:144
      pinMax : aliased int;  -- wiringPi.h:145
      fd : aliased int;  -- wiringPi.h:147
      data0 : aliased unsigned;  -- wiringPi.h:148
      data1 : aliased unsigned;  -- wiringPi.h:149
      data2 : aliased unsigned;  -- wiringPi.h:150
      data3 : aliased unsigned;  -- wiringPi.h:151
      pinMode : access procedure
           (arg1 : access wiringPiNodeStruct;
            arg2 : int;
            arg3 : int);  -- wiringPi.h:153
      pullUpDnControl : access procedure
           (arg1 : access wiringPiNodeStruct;
            arg2 : int;
            arg3 : int);  -- wiringPi.h:154
      digitalRead : access function (arg1 : access wiringPiNodeStruct; arg2 : int) return int;  -- wiringPi.h:155
      digitalWrite : access procedure
           (arg1 : access wiringPiNodeStruct;
            arg2 : int;
            arg3 : int);  -- wiringPi.h:157
      pwmWrite : access procedure
           (arg1 : access wiringPiNodeStruct;
            arg2 : int;
            arg3 : int);  -- wiringPi.h:159
      analogRead : access function (arg1 : access wiringPiNodeStruct; arg2 : int) return int;  -- wiringPi.h:160
      analogWrite : access procedure
           (arg1 : access wiringPiNodeStruct;
            arg2 : int;
            arg3 : int);  -- wiringPi.h:161
      next : access wiringPiNodeStruct;  -- wiringPi.h:163
   end record
   with Convention => C_Pass_By_Copy;  -- wiringPi.h:142

   wiringPiNodes : access wiringPiNodeStruct  -- wiringPi.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiNodes";

   function wiringPiFailure (fatal : int; message : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- wiringPi.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiFailure";

   function wiringPiFindNode (pin : int) return access wiringPiNodeStruct  -- wiringPi.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiFindNode";

   function wiringPiNewNode (pinBase : int; numPins : int) return access wiringPiNodeStruct  -- wiringPi.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiNewNode";

   procedure wiringPiVersion (major : access int; minor : access int)  -- wiringPi.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiVersion";

   function wiringPiSetup return int  -- wiringPi.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetup";

   function wiringPiSetupSys return int  -- wiringPi.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupSys";

   function wiringPiSetupGpio return int  -- wiringPi.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupGpio";

   function wiringPiSetupPhys return int  -- wiringPi.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupPhys";

   procedure pinModeAlt (pin : int; mode : int)  -- wiringPi.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "pinModeAlt";

   procedure pinMode (pin : int; mode : int)  -- wiringPi.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "pinMode";

   procedure pullUpDnControl (pin : int; pud : int)  -- wiringPi.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "pullUpDnControl";

   function digitalRead (pin : int) return int  -- wiringPi.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "digitalRead";

   procedure digitalWrite (pin : int; value : int)  -- wiringPi.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWrite";

   function digitalRead8 (pin : int) return unsigned  -- wiringPi.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "digitalRead8";

   procedure digitalWrite8 (pin : int; value : int)  -- wiringPi.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWrite8";

   procedure pwmWrite (pin : int; value : int)  -- wiringPi.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "pwmWrite";

   function analogRead (pin : int) return int  -- wiringPi.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "analogRead";

   procedure analogWrite (pin : int; value : int)  -- wiringPi.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "analogWrite";

   function wiringPiSetupPiFace return int  -- wiringPi.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupPiFace";

   function wiringPiSetupPiFaceForGpioProg return int  -- wiringPi.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupPiFaceForGpioProg";

   function piGpioLayout return int  -- wiringPi.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "piGpioLayout";

   function piBoardRev return int  -- wiringPi.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "piBoardRev";

   procedure piBoardId
     (model : access int;
      rev : access int;
      mem : access int;
      maker : access int;
      overVolted : access int)  -- wiringPi.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "piBoardId";

   function wpiPinToGpio (wpiPin : int) return int  -- wiringPi.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "wpiPinToGpio";

   function physPinToGpio (physPin : int) return int  -- wiringPi.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "physPinToGpio";

   procedure setPadDrive (group : int; value : int)  -- wiringPi.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "setPadDrive";

   function getAlt (pin : int) return int  -- wiringPi.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "getAlt";

   procedure pwmToneWrite (pin : int; freq : int)  -- wiringPi.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "pwmToneWrite";

   procedure pwmSetMode (mode : int)  -- wiringPi.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "pwmSetMode";

   procedure pwmSetRange (c_range : unsigned)  -- wiringPi.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "pwmSetRange";

   procedure pwmSetClock (divisor : int)  -- wiringPi.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "pwmSetClock";

   procedure gpioClockSet (pin : int; freq : int)  -- wiringPi.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gpioClockSet";

   function digitalReadByte return unsigned  -- wiringPi.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "digitalReadByte";

   function digitalReadByte2 return unsigned  -- wiringPi.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "digitalReadByte2";

   procedure digitalWriteByte (value : int)  -- wiringPi.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWriteByte";

   procedure digitalWriteByte2 (value : int)  -- wiringPi.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWriteByte2";

   function waitForInterrupt (pin : int; mS : int) return int  -- wiringPi.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "waitForInterrupt";

   function wiringPiISR
     (pin : int;
      mode : int;
      c_function : access procedure) return int  -- wiringPi.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiISR";

   function piThreadCreate (fn : access function (arg1 : System.Address) return System.Address) return int  -- wiringPi.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "piThreadCreate";

   procedure piLock (key : int)  -- wiringPi.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "piLock";

   procedure piUnlock (key : int)  -- wiringPi.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "piUnlock";

   function piHiPri (pri : int) return int  -- wiringPi.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "piHiPri";

   procedure c_delay (howLong : unsigned)  -- wiringPi.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "delay";

   procedure delayMicroseconds (howLong : unsigned)  -- wiringPi.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "delayMicroseconds";

   function millis return unsigned  -- wiringPi.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "millis";

   function micros return unsigned  -- wiringPi.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "micros";

end Pixtend.wiringPi_h;
