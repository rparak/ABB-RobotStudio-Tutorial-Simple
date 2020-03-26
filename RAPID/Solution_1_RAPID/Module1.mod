MODULE Module1
	CONST robtarget Target_10:=[[302,0.004,360.999],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_20_3:=[[-100,-400,339.482109829],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_20:=[[-100,-400,150],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_30_2:=[[250,0,224.88153549],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_30:=[[250,0,150],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_40_2:=[[100,-517.298,237.997639317],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_40:=[[100,-517.298,150],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_40_2_2:=[[-144.23137906,-420.892869102,321.185791052],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_50_2:=[[450,-67.298,322.949199197],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_50:=[[450,-67.298,150],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_60_2:=[[200,-317.298,307.543483677],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_60:=[[200,-317.298,150],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_70_2:=[[500,182.702,228.799643124],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_70:=[[500,182.702,150],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: romanp
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !****** Home Position ******!
        MoveAbsJ [[0,0,0,0,90,0],[9E9,9E9,9E9,9E9,9E9,9E9]]\NoEOffs,v100,fine,smc_gripper\WObj:=wobj0;
        !****** Pick and Place - Object 1 ******!
        Path_10;
        !****** Pick and Place - Object 2 ******!
        Path_20;
        !****** Pick and Place - Object 3 ******!
        Path_30;
    ENDPROC
	PROC Path_10()
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_20_3,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_20,v100,fine,smc_gripper\WObj:=wobj0;
	    PulseDO object_1_att;
	    WaitTime 1;
	    MoveL Target_20_3,v100,fine,smc_gripper\WObj:=wobj0;
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_30_2,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_30,v100,fine,smc_gripper\WObj:=wobj0;
	    PulseDO object_1_det;
	    WaitTime 1;
	    MoveL Target_30_2,v100,fine,smc_gripper\WObj:=wobj0;
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	ENDPROC
	PROC Path_20()
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_40_2,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_40,v100,fine,smc_gripper\WObj:=wobj0;
	    PulseDO object_2_att;
	    WaitTime 1;
	    MoveL Target_40_2,v100,fine,smc_gripper\WObj:=wobj0;
	    MoveL Target_40_2_2,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_50_2,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_50,v100,fine,smc_gripper\WObj:=wobj0;
	    PulseDO object_2_det;
	    WaitTime 1;
	    MoveL Target_50_2,v100,fine,smc_gripper\WObj:=wobj0;
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	ENDPROC
	PROC Path_30()
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_60_2,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_60,v100,fine,smc_gripper\WObj:=wobj0;
	    PulseDO object_3_att;
	    WaitTime 1;
	    MoveL Target_60_2,v100,fine,smc_gripper\WObj:=wobj0;
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_70_2,v100,z100,smc_gripper\WObj:=wobj0;
	    MoveL Target_70,v100,fine,smc_gripper\WObj:=wobj0;
	    PulseDO object_3_det;
	    WaitTime 1;
	    MoveL Target_70_2,v100,fine,smc_gripper\WObj:=wobj0;
	    MoveL Target_10,v100,z100,smc_gripper\WObj:=wobj0;
	ENDPROC
ENDMODULE