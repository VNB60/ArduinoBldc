[1mdiff --git a/examples/myMotor/myMotor.ino b/examples/myMotor/myMotor.ino[m
[1mindex a414222..dfdc626 100644[m
[1m--- a/examples/myMotor/myMotor.ino[m
[1m+++ b/examples/myMotor/myMotor.ino[m
[36m@@ -18,6 +18,8 @@[m [mvoid loop() {[m
     Serial.println(myMotor.currentRef,4);  [m
     Serial.print("Actual Speed:");[m
     Serial.println(myMotor.debug);//myMotor.getActualSpeed(),4);[m
[32m+[m[32m    Serial.print("DC Link voltage:");[m
[32m+[m[32m    Serial.println(myMotor.getDcLinkVoltage(),4);[m
   [m
     /* read commands from serial port */[m
     while (Serial.available()) {[m
[36m@@ -41,6 +43,18 @@[m [mvoid loop() {[m
             if (inputString.startsWith(String("stop"))){[m
                 myMotor.stop();             [m
             }[m
[32m+[m[32m            if (inputString.startsWith(String("Ki="))){[m
[32m+[m[32m                inputString = inputString.substring(3);[m
[32m+[m[32m                char floatVar[5];[m
[32m+[m[32m                inputString.toCharArray(floatVar,5);[m
[32m+[m[32m                myMotor.Kint = atoi(floatVar);[m[41m             [m
[32m+[m[32m            }[m
[32m+[m[32m            if (inputString.startsWith(String("Kp="))){[m
[32m+[m[32m                inputString = inputString.substring(3);[m
[32m+[m[32m                char floatVar[5];[m
[32m+[m[32m                inputString.toCharArray(floatVar,5);[m
[32m+[m[32m                myMotor.Kprp = atoi(floatVar);[m[41m               [m
[32m+[m[32m            }[m
             inputString = ""; [m
         }[m
     }[m
warning: LF will be replaced by CRLF in examples/myMotor/myMotor.ino.
The file will have its original line endings in your working directory.
