pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
--  with Pixtend.arm_linux_gnueabihf_bits_stdint_uintn_h;

package Pixtend.pixtend_h is

   type pixtOut is record
      byDigOut : aliased unsigned_char;  -- pixtend.h:36
      byRelayOut : aliased unsigned_char;  -- pixtend.h:37
      byGpioOut : aliased unsigned_char;  -- pixtend.h:38
      wPwm0 : aliased unsigned_short;  -- pixtend.h:39
      wPwm1 : aliased unsigned_short;  -- pixtend.h:40
      byPwm0Ctrl0 : aliased unsigned_char;  -- pixtend.h:41
      byPwm0Ctrl1 : aliased unsigned_char;  -- pixtend.h:42
      byPwm0Ctrl2 : aliased unsigned_char;  -- pixtend.h:43
      byGpioCtrl : aliased unsigned_char;  -- pixtend.h:44
      byUcCtrl : aliased unsigned_char;  -- pixtend.h:45
      byAiCtrl0 : aliased unsigned_char;  -- pixtend.h:46
      byAiCtrl1 : aliased unsigned_char;  -- pixtend.h:47
      byPiStatus : aliased unsigned_char;  -- pixtend.h:48
      byAux0 : aliased unsigned_char;  -- pixtend.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- pixtend.h:35

   type anon1799_array1800 is array (0 .. 31) of aliased unsigned_char;
   type pixtOutV2S is record
      byModelOut : aliased unsigned_char;  -- pixtend.h:53
      byUCMode : aliased unsigned_char;  -- pixtend.h:54
      byUCCtrl0 : aliased unsigned_char;  -- pixtend.h:55
      byUCCtrl1 : aliased unsigned_char;  -- pixtend.h:56
      byDigitalInDebounce01 : aliased unsigned_char;  -- pixtend.h:57
      byDigitalInDebounce23 : aliased unsigned_char;  -- pixtend.h:58
      byDigitalInDebounce45 : aliased unsigned_char;  -- pixtend.h:59
      byDigitalInDebounce67 : aliased unsigned_char;  -- pixtend.h:60
      byDigitalOut : aliased unsigned_char;  -- pixtend.h:61
      byRelayOut : aliased unsigned_char;  -- pixtend.h:62
      byGPIOCtrl : aliased unsigned_char;  -- pixtend.h:63
      byGPIOOut : aliased unsigned_char;  -- pixtend.h:64
      byGPIODebounce01 : aliased unsigned_char;  -- pixtend.h:65
      byGPIODebounce23 : aliased unsigned_char;  -- pixtend.h:66
      byPWM0Ctrl0 : aliased unsigned_char;  -- pixtend.h:67
      wPWM0Ctrl1 : aliased unsigned_short;  -- pixtend.h:68
      wPWM0A : aliased unsigned_short;  -- pixtend.h:69
      wPWM0B : aliased unsigned_short;  -- pixtend.h:70
      byPWM1Ctrl0 : aliased unsigned_char;  -- pixtend.h:71
      byPWM1Ctrl1 : aliased unsigned_char;  -- pixtend.h:72
      byPWM1A : aliased unsigned_char;  -- pixtend.h:73
      byPWM1B : aliased unsigned_char;  -- pixtend.h:74
      byJumper10V : aliased unsigned_char;  -- pixtend.h:75
      byGPIO0Dht11 : aliased unsigned_char;  -- pixtend.h:76
      byGPIO1Dht11 : aliased unsigned_char;  -- pixtend.h:77
      byGPIO2Dht11 : aliased unsigned_char;  -- pixtend.h:78
      byGPIO3Dht11 : aliased unsigned_char;  -- pixtend.h:79
      abyRetainDataOut : aliased anon1799_array1800;  -- pixtend.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- pixtend.h:52

   type anon1802_array1804 is array (0 .. 63) of aliased unsigned_char;
   type pixtOutV2L is record
      byModelOut : aliased unsigned_char;  -- pixtend.h:84
      byUCMode : aliased unsigned_char;  -- pixtend.h:85
      byUCCtrl0 : aliased unsigned_char;  -- pixtend.h:86
      byUCCtrl1 : aliased unsigned_char;  -- pixtend.h:87
      byDigitalInDebounce01 : aliased unsigned_char;  -- pixtend.h:88
      byDigitalInDebounce23 : aliased unsigned_char;  -- pixtend.h:89
      byDigitalInDebounce45 : aliased unsigned_char;  -- pixtend.h:90
      byDigitalInDebounce67 : aliased unsigned_char;  -- pixtend.h:91
      byDigitalInDebounce89 : aliased unsigned_char;  -- pixtend.h:92
      byDigitalInDebounce1011 : aliased unsigned_char;  -- pixtend.h:93
      byDigitalInDebounce1213 : aliased unsigned_char;  -- pixtend.h:94
      byDigitalInDebounce1415 : aliased unsigned_char;  -- pixtend.h:95
      byDigitalOut0 : aliased unsigned_char;  -- pixtend.h:96
      byDigitalOut1 : aliased unsigned_char;  -- pixtend.h:97
      byRelayOut : aliased unsigned_char;  -- pixtend.h:98
      byGPIOCtrl : aliased unsigned_char;  -- pixtend.h:99
      byGPIOOut : aliased unsigned_char;  -- pixtend.h:100
      byGPIODebounce01 : aliased unsigned_char;  -- pixtend.h:101
      byGPIODebounce23 : aliased unsigned_char;  -- pixtend.h:102
      byPWM0Ctrl0 : aliased unsigned_char;  -- pixtend.h:103
      wPWM0Ctrl1 : aliased unsigned_short;  -- pixtend.h:104
      wPWM0A : aliased unsigned_short;  -- pixtend.h:105
      wPWM0B : aliased unsigned_short;  -- pixtend.h:106
      byPWM1Ctrl0 : aliased unsigned_char;  -- pixtend.h:107
      wPWM1Ctrl1 : aliased unsigned_short;  -- pixtend.h:108
      wPWM1A : aliased unsigned_short;  -- pixtend.h:109
      wPWM1B : aliased unsigned_short;  -- pixtend.h:110
      byPWM2Ctrl0 : aliased unsigned_char;  -- pixtend.h:111
      wPWM2Ctrl1 : aliased unsigned_short;  -- pixtend.h:112
      wPWM2A : aliased unsigned_short;  -- pixtend.h:113
      wPWM2B : aliased unsigned_short;  -- pixtend.h:114
      byJumper10V : aliased unsigned_char;  -- pixtend.h:115
      byGPIO0Dht11 : aliased unsigned_char;  -- pixtend.h:116
      byGPIO1Dht11 : aliased unsigned_char;  -- pixtend.h:117
      byGPIO2Dht11 : aliased unsigned_char;  -- pixtend.h:118
      byGPIO3Dht11 : aliased unsigned_char;  -- pixtend.h:119
      abyRetainDataOut : aliased anon1802_array1804;  -- pixtend.h:120
   end record
   with Convention => C_Pass_By_Copy;  -- pixtend.h:83

   type pixtOutDAC is record
      wAOut0 : aliased unsigned_short;  -- pixtend.h:124
      wAOut1 : aliased unsigned_short;  -- pixtend.h:125
   end record
   with Convention => C_Pass_By_Copy;  -- pixtend.h:123

   type pixtIn is record
      byDigIn : aliased unsigned_char;  -- pixtend.h:129
      wAi0 : aliased unsigned_short;  -- pixtend.h:130
      wAi1 : aliased unsigned_short;  -- pixtend.h:131
      wAi2 : aliased unsigned_short;  -- pixtend.h:132
      wAi3 : aliased unsigned_short;  -- pixtend.h:133
      byGpioIn : aliased unsigned_char;  -- pixtend.h:134
      wTemp0 : aliased unsigned_short;  -- pixtend.h:135
      wTemp1 : aliased unsigned_short;  -- pixtend.h:136
      wTemp2 : aliased unsigned_short;  -- pixtend.h:137
      wTemp3 : aliased unsigned_short;  -- pixtend.h:138
      wHumid0 : aliased unsigned_short;  -- pixtend.h:139
      wHumid1 : aliased unsigned_short;  -- pixtend.h:140
      wHumid2 : aliased unsigned_short;  -- pixtend.h:141
      wHumid3 : aliased unsigned_short;  -- pixtend.h:142
      byUcVersionL : aliased unsigned_char;  -- pixtend.h:143
      byUcVersionH : aliased unsigned_char;  -- pixtend.h:144
      byUcStatus : aliased unsigned_char;  -- pixtend.h:145
      rAi0 : aliased float;  -- pixtend.h:146
      rAi1 : aliased float;  -- pixtend.h:147
      rAi2 : aliased float;  -- pixtend.h:148
      rAi3 : aliased float;  -- pixtend.h:149
      rTemp0 : aliased float;  -- pixtend.h:150
      rTemp1 : aliased float;  -- pixtend.h:151
      rTemp2 : aliased float;  -- pixtend.h:152
      rTemp3 : aliased float;  -- pixtend.h:153
      rHumid0 : aliased float;  -- pixtend.h:154
      rHumid1 : aliased float;  -- pixtend.h:155
      rHumid2 : aliased float;  -- pixtend.h:156
      rHumid3 : aliased float;  -- pixtend.h:157
   end record
   with Convention => C_Pass_By_Copy;  -- pixtend.h:128

   type anon1808_array1800 is array (0 .. 31) of aliased unsigned_char;
   type pixtInV2S is record
      byFirmware : aliased unsigned_char;  -- pixtend.h:161
      byHardware : aliased unsigned_char;  -- pixtend.h:162
      byModelIn : aliased unsigned_char;  -- pixtend.h:163
      byUCState : aliased unsigned_char;  -- pixtend.h:164
      byUCWarnings : aliased unsigned_char;  -- pixtend.h:165
      byDigitalIn : aliased unsigned_char;  -- pixtend.h:166
      wAnalogIn0 : aliased unsigned_short;  -- pixtend.h:167
      wAnalogIn1 : aliased unsigned_short;  -- pixtend.h:168
      byGPIOIn : aliased unsigned_char;  -- pixtend.h:169
      wTemp0 : aliased unsigned_short;  -- pixtend.h:170
      byTemp0Error : aliased unsigned_char;  -- pixtend.h:171
      wTemp1 : aliased unsigned_short;  -- pixtend.h:172
      byTemp1Error : aliased unsigned_char;  -- pixtend.h:173
      wTemp2 : aliased unsigned_short;  -- pixtend.h:174
      byTemp2Error : aliased unsigned_char;  -- pixtend.h:175
      wTemp3 : aliased unsigned_short;  -- pixtend.h:176
      byTemp3Error : aliased unsigned_char;  -- pixtend.h:177
      wHumid0 : aliased unsigned_short;  -- pixtend.h:178
      wHumid1 : aliased unsigned_short;  -- pixtend.h:179
      wHumid2 : aliased unsigned_short;  -- pixtend.h:180
      wHumid3 : aliased unsigned_short;  -- pixtend.h:181
      rAnalogIn0 : aliased float;  -- pixtend.h:182
      rAnalogIn1 : aliased float;  -- pixtend.h:183
      rTemp0 : aliased float;  -- pixtend.h:184
      rTemp1 : aliased float;  -- pixtend.h:185
      rTemp2 : aliased float;  -- pixtend.h:186
      rTemp3 : aliased float;  -- pixtend.h:187
      rHumid0 : aliased float;  -- pixtend.h:188
      rHumid1 : aliased float;  -- pixtend.h:189
      rHumid2 : aliased float;  -- pixtend.h:190
      rHumid3 : aliased float;  -- pixtend.h:191
      abyRetainDataIn : aliased anon1808_array1800;  -- pixtend.h:192
   end record
   with Convention => C_Pass_By_Copy;  -- pixtend.h:160

   type anon1809_array1804 is array (0 .. 63) of aliased unsigned_char;
   type pixtInV2L is record
      byFirmware : aliased unsigned_char;  -- pixtend.h:196
      byHardware : aliased unsigned_char;  -- pixtend.h:197
      byModelIn : aliased unsigned_char;  -- pixtend.h:198
      byUCState : aliased unsigned_char;  -- pixtend.h:199
      byUCWarnings : aliased unsigned_char;  -- pixtend.h:200
      byDigitalIn0 : aliased unsigned_char;  -- pixtend.h:201
      byDigitalIn1 : aliased unsigned_char;  -- pixtend.h:202
      wAnalogIn0 : aliased unsigned_short;  -- pixtend.h:203
      wAnalogIn1 : aliased unsigned_short;  -- pixtend.h:204
      wAnalogIn2 : aliased unsigned_short;  -- pixtend.h:205
      wAnalogIn3 : aliased unsigned_short;  -- pixtend.h:206
      wAnalogIn4 : aliased unsigned_short;  -- pixtend.h:207
      wAnalogIn5 : aliased unsigned_short;  -- pixtend.h:208
      byGPIOIn : aliased unsigned_char;  -- pixtend.h:209
      wTemp0 : aliased unsigned_short;  -- pixtend.h:210
      byTemp0Error : aliased unsigned_char;  -- pixtend.h:211
      wTemp1 : aliased unsigned_short;  -- pixtend.h:212
      byTemp1Error : aliased unsigned_char;  -- pixtend.h:213
      wTemp2 : aliased unsigned_short;  -- pixtend.h:214
      byTemp2Error : aliased unsigned_char;  -- pixtend.h:215
      wTemp3 : aliased unsigned_short;  -- pixtend.h:216
      byTemp3Error : aliased unsigned_char;  -- pixtend.h:217
      wHumid0 : aliased unsigned_short;  -- pixtend.h:218
      wHumid1 : aliased unsigned_short;  -- pixtend.h:219
      wHumid2 : aliased unsigned_short;  -- pixtend.h:220
      wHumid3 : aliased unsigned_short;  -- pixtend.h:221
      rAnalogIn0 : aliased float;  -- pixtend.h:222
      rAnalogIn1 : aliased float;  -- pixtend.h:223
      rAnalogIn2 : aliased float;  -- pixtend.h:224
      rAnalogIn3 : aliased float;  -- pixtend.h:225
      rAnalogIn4 : aliased float;  -- pixtend.h:226
      rAnalogIn5 : aliased float;  -- pixtend.h:227
      rTemp0 : aliased float;  -- pixtend.h:228
      rTemp1 : aliased float;  -- pixtend.h:229
      rTemp2 : aliased float;  -- pixtend.h:230
      rTemp3 : aliased float;  -- pixtend.h:231
      rHumid0 : aliased float;  -- pixtend.h:232
      rHumid1 : aliased float;  -- pixtend.h:233
      rHumid2 : aliased float;  -- pixtend.h:234
      rHumid3 : aliased float;  -- pixtend.h:235
      abyRetainDataIn : aliased anon1809_array1804;  -- pixtend.h:236
   end record
   with Convention => C_Pass_By_Copy;  -- pixtend.h:195

   function crc16_calc (crc : unsigned_short; data : unsigned_char) return unsigned_short  -- pixtend.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "crc16_calc";

   function Spi_AutoMode (OutputData : access pixtOut; InputData : access pixtIn) return int  -- pixtend.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_AutoMode";

   function Spi_AutoModeV2S (OutputData : access pixtOutV2S; InputData : access pixtInV2S) return int  -- pixtend.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_AutoModeV2S";

   function Spi_AutoModeV2L (OutputData : access pixtOutV2L; InputData : access pixtInV2L) return int  -- pixtend.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_AutoModeV2L";

   function Spi_AutoModeDAC (OutputDataDAC : access pixtOutDAC) return int  -- pixtend.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_AutoModeDAC";

   function Spi_Set_Dout (value : int) return int  -- pixtend.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_Dout";

   function Spi_Get_Dout return unsigned_char  -- pixtend.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_Dout";

   function Spi_Get_Din return int  -- pixtend.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_Din";

   function Spi_Get_Ain (Idx : int) return unsigned_short  -- pixtend.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_Ain";

   function Spi_Set_Aout (channel : int; value : unsigned_short) return int  -- pixtend.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_Aout";

   function Spi_Set_Relays (value : int) return int  -- pixtend.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_Relays";

   function Spi_Get_Relays return unsigned_char  -- pixtend.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_Relays";

   function Spi_Get_Temp (Idx : int) return unsigned_short  -- pixtend.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_Temp";

   function Spi_Get_Hum (Idx : int) return unsigned_short  -- pixtend.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_Hum";

   function Spi_Set_Servo (channel : int; value : int) return int  -- pixtend.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_Servo";

   function Spi_Set_Pwm (channel : int; value : unsigned_short) return int  -- pixtend.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_Pwm";

   function Spi_Set_PwmControl
     (value0 : int;
      value1 : int;
      value2 : int) return int  -- pixtend.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_PwmControl";

   function Spi_Set_GpioControl (value : int) return int  -- pixtend.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_GpioControl";

   function Spi_Set_UcControl (value : int) return int  -- pixtend.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_UcControl";

   function Spi_Set_AiControl (value0 : int; value1 : int) return int  -- pixtend.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_AiControl";

   function Spi_Set_RaspStat (value : int) return int  -- pixtend.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_RaspStat";

   function Spi_Setup (spi_device : int) return int  -- pixtend.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Setup";

   function Spi_SetupV2 (spi_device : int) return int  -- pixtend.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_SetupV2";

   function Spi_uC_Reset return int  -- pixtend.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_uC_Reset";

   function Spi_Get_uC_Status return int  -- pixtend.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_uC_Status";

   function Spi_Get_uC_Version return unsigned_short  -- pixtend.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_uC_Version";

   function Change_Gpio_Mode (pin : char; mode : char) return int  -- pixtend.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "Change_Gpio_Mode";

   function Change_Serial_Mode (mode : unsigned_char) return int  -- pixtend.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "Change_Serial_Mode";

   function Spi_Set_Gpio (value : int) return int  -- pixtend.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Set_Gpio";

   function Spi_Get_Gpio return int  -- pixtend.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "Spi_Get_Gpio";

end Pixtend.pixtend_h;
