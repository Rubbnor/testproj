with MicroBit.Console; use MicroBit.Console;
use MicroBit;
with MicroBit.MotorDriver; 
with DFR0548;

-- USN PROJECT TEMPLATE INTELLIGENT REAL-TIME SYSTEMS
-- Project name: [project name]
-- Project members: [name, name, .. ]


--This is a project template for the MicroBit v2, built against the embedded-nrf52833
--runtime (a Ravenscar/Jorvik-style profile) so we have a language-supported real-time
--OS for embedded targets. The runtime ships with the gnat_arm_elf toolchain that Alire
--installs, so there is nothing to copy by hand.

--Check out the many examples in the ADL for the MicroBit v2 to see:
--  1) How the various drivers can be used like the accelerometer,speaker  or wireless communication via radio
--  2) How ADA features like the Math library and Bounded_Vectors (Containers) can be used
--  3) How to structure your Ada tasks with a protected object to synchronize data or with entries to synchronize flow
--  4) How to perform a execution time analysis
--  5) How to integrate your Ada project with a Unity project over USB

-- Open a View > Cross Platforms > Serial Ports to see Put_Line output. Set the baud rate to 115.200
procedure Main with Priority => 0 is

   Motor_speed : constant := 2000; --Def speed

   procedure Move_forward is 
   begin 
      MotorDriver.Drive (MotorDriver.Forward, (Motor_speed, Motor_speed, Motor_speed, Motor_speed));
      end Move_forward;
   
   procedure Move_backward is
   begin 
      MotorDriver.Drive (MotorDriver.Backward, (Motor_speed, Motor_speed, Motor_speed, Motor_speed));
      end Move_backward;
   
   procedure Move_right is
   begin 
      MotorDriver.Drive (MotorDriver.Right, (Motor_speed, Motor_speed, Motor_speed, Motor_speed));
      end Move_right;
   
   procedure Move_left is 
   begin
      MotorDriver.Drive (MotorDriver.Left, (Motor_speed, Motor_speed, Motor_speed, Motor_speed));
      end Move_left;
   
   procedure Move_stop is
   begin
      MotorDriver.Drive (MotorDriver.Stop);
      end Move_stop;


begin
   Put_Line ("Car Neval started!");




   loop
      Move_right;
      delay 2.0;

      Move_stop;
      delay 2.0;

      Move_left;
      delay 2.0;

      Move_stop;
      delay 2.0;

      Move_backward;
      delay 2.0;

      Move_stop;
      delay 2.0;

   end loop;
end Main;
