function PN_model=PN_NOC_FINAL()
    [PN_model] = Init_PN('PN_NOC_FINAL');

    % ================================
    % Define Processing Elements (PEs)
    % ================================

    % Assign each Processing Element (PE) to a unique number
    PE1 = 1;
    PE2 = 2;
    PE3 = 3;
    PE4 = 4;
    PE5 = 5;
    PE6 = 6;
    PE7 = 7;
    PE8 = 8;
    PE9 = 9;
    PE10 = 10;
    PE11 = 11;
    PE12 = 12;
    PE13 = 13;
    PE14 = 14;
    PE15 = 15;
    PE16 = 16;

    % Assign each Transition (T1 to T16) to its corresponding PE


    T1 = PE1;
    T2 = PE1;
    T3 = PE1;
    T4 = PE4;
    T5 = PE4;
    T6 = PE4;
    T7 = PE1;
    T8 = PE1;
    T9 = PE1;
    T10 = PE10;
    T11 = PE10;
    T12 = PE10;
    T13 = PE2;
    T14 = PE2;
    T15 = PE2;
    T16 = PE1;

    % T1 = PE2;
    % T2 = PE2;
    % T3 = PE6;
    % T4 = PE1;
    % T5 = PE1;
    % T6 = PE5;
    % T7 = PE9;
    % T8 = PE10;
    % T9 = PE9;
    % T10 = PE6;
    % T11 = PE7;
    % T12 = PE11;
    % T13 = PE3;
    % T14 = PE4;
    % T15 = PE8;
    % T16 = PE11;

    % ================================
    % Create Assignments Array
    % ================================

    assignments = [T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16];

    % ================================
    % Define Communication Paths
    % ================================

    % Define Communication Paths
    % Each entry is a struct with DCT name, source transition, and target transition
    comm_paths = [
        struct('DCT', 'DCT1', 'source', 'T1', 'target', 'T2');
        struct('DCT', 'DCT2', 'source', 'T2', 'target', 'T3');
        struct('DCT', 'DCT3', 'source', 'T2', 'target', 'T4');
        struct('DCT', 'DCT12', 'source', 'T2', 'target', 'T13');
        struct('DCT', 'DCT6', 'source', 'T3', 'target', 'T7');
        struct('DCT', 'DCT9', 'source', 'T3', 'target', 'T10');
        struct('DCT', 'DCT4', 'source', 'T4', 'target', 'T5');
        struct('DCT', 'DCT13', 'source', 'T13', 'target', 'T14');
        struct('DCT', 'DCT7', 'source', 'T7', 'target', 'T8');
        struct('DCT', 'DCT10', 'source', 'T10', 'target', 'T11');
        struct('DCT', 'DCT5', 'source', 'T5', 'target', 'T6');
        struct('DCT', 'DCT14', 'source', 'T14', 'target', 'T15');
        struct('DCT', 'DCT17', 'source', 'T6', 'target', 'T8');
        struct('DCT', 'DCT18', 'source', 'T15', 'target', 'T11');
        struct('DCT', 'DCT8', 'source', 'T8', 'target', 'T9');
        struct('DCT', 'DCT11', 'source', 'T11', 'target', 'T12');
        struct('DCT', 'DCT15', 'source', 'T9', 'target', 'T16');
        struct('DCT', 'DCT16', 'source', 'T12', 'target', 'T16');
    ];

    % Define MT_paths with DCT association
    MT_paths = [
        struct('MT', 'MT2', 'source', 'T1', 'target', 'T2', 'DCT', 'DCT1');
        struct('MT', 'MT3', 'source', 'T2', 'target', 'T3', 'DCT', 'DCT2');
        struct('MT', 'MT4', 'source', 'T2', 'target', 'T4', 'DCT', 'DCT3');
        struct('MT', 'MT13', 'source', 'T2', 'target', 'T13', 'DCT', 'DCT12');
        struct('MT', 'MT7', 'source', 'T3', 'target', 'T7', 'DCT', 'DCT6');
        struct('MT', 'MT10', 'source', 'T3', 'target', 'T10', 'DCT', 'DCT9');
        struct('MT', 'MT5', 'source', 'T4', 'target', 'T5', 'DCT', 'DCT4');
        struct('MT', 'MT14', 'source', 'T13', 'target', 'T14', 'DCT', 'DCT13');
        struct('MT', 'MT8', 'source', 'T7', 'target', 'T8', 'DCT', 'DCT7');
        struct('MT', 'MT11', 'source', 'T10', 'target', 'T11', 'DCT', 'DCT10');
        struct('MT', 'MT6', 'source', 'T5', 'target', 'T6', 'DCT', 'DCT5');
        struct('MT', 'MT15', 'source', 'T14', 'target', 'T15', 'DCT', 'DCT14');
        struct('MT', 'MT82', 'source', 'T6', 'target', 'T8', 'DCT', 'DCT17');
        struct('MT', 'MT112', 'source', 'T15', 'target', 'T11', 'DCT', 'DCT18');
        struct('MT', 'MT9', 'source', 'T8', 'target', 'T9', 'DCT', 'DCT8');
        struct('MT', 'MT12', 'source', 'T11', 'target', 'T12', 'DCT', 'DCT11');
        struct('MT', 'MT16', 'source', 'T9', 'target', 'T16', 'DCT', 'DCT15');
        struct('MT', 'MT17', 'source', 'T12', 'target', 'T16', 'DCT', 'DCT16');
    ];

    % Define Transition Names
    transition_names = {'T1','T2','T3','T4','T5','T6','T7','T8','T9','T10','T11','T12','T13','T14','T15','T16'};

    %Define Places
    [PN_model,p1]=New_Place(PN_model,'P1',0,1,{});
    [PN_model,p2]=New_Place(PN_model,'P2',0,1,{});
    [PN_model,p3]=New_Place(PN_model,'P3',0,1,{});
    [PN_model,p4]=New_Place(PN_model,'P4',0,1,{});
    [PN_model,p5]=New_Place(PN_model,'P5',0,1,{});
    [PN_model,p6]=New_Place(PN_model,'P6',0,1,{});
    [PN_model,p7]=New_Place(PN_model,'P7',0,1,{});
    [PN_model,p8]=New_Place(PN_model,'P8',0,1,{});
    [PN_model,p9]=New_Place(PN_model,'P9',0,1,{});
    [PN_model,p10]=New_Place(PN_model,'P10',0,1,{});
    [PN_model,p11]=New_Place(PN_model,'P11',0,1,{});
    [PN_model,p12]=New_Place(PN_model,'P12',0,1,{});
    [PN_model,p13]=New_Place(PN_model,'P13',0,1,{});
    [PN_model,p14]=New_Place(PN_model,'P14',0,1,{});
    [PN_model,p15]=New_Place(PN_model,'P15',0,1,{});
    [PN_model,p16]=New_Place(PN_model,'P16',0,1,{});
    [PN_model,p17]=New_Place(PN_model,'P17',0,1,{});
    [PN_model,p18]=New_Place(PN_model,'P18',0,1,{});
    %Define Communication Delay Places
    [PN_model,dcp1]=New_Place(PN_model,'DCP1',0,1,{});  % T1 -> T2
    [PN_model,dcp2]=New_Place(PN_model,'DCP2',0,1,{});  % T2 -> T3
    [PN_model,dcp3]=New_Place(PN_model,'DCP3',0,1,{});  % T2 -> T4
    [PN_model,dcp4]=New_Place(PN_model,'DCP4',0,1,{});  % T2 -> T13
    [PN_model,dcp5]=New_Place(PN_model,'DCP5',0,1,{});  % T3 -> T7
    [PN_model,dcp6]=New_Place(PN_model,'DCP6',0,1,{});  % T3 -> T10
    [PN_model,dcp7]=New_Place(PN_model,'DCP7',0,1,{});  % T4 -> T5
    [PN_model,dcp8]=New_Place(PN_model,'DCP8',0,1,{});  % T13 -> T14
    [PN_model,dcp9]=New_Place(PN_model,'DCP9',0,1,{});  % T7 -> T8
    [PN_model,dcp10]=New_Place(PN_model,'DCP10',0,1,{}); % T10 -> T11
    [PN_model,dcp11]=New_Place(PN_model,'DCP11',0,1,{}); % T5 -> T6
    [PN_model,dcp12]=New_Place(PN_model,'DCP12',0,1,{}); % T14 -> T15
    [PN_model,dcp13]=New_Place(PN_model,'DCP13',0,1,{}); % T6 -> T8
    [PN_model,dcp14]=New_Place(PN_model,'DCP14',0,1,{}); % T15 -> T11
    [PN_model,dcp15]=New_Place(PN_model,'DCP15',0,1,{}); % T8 -> T9
    [PN_model,dcp16]=New_Place(PN_model,'DCP16',0,1,{}); % T11 -> T12
    [PN_model,dcp17]=New_Place(PN_model,'DCP17',0,1,{}); % T9 -> T16
    [PN_model,dcp18]=New_Place(PN_model,'DCP18',0,1,{}); % T12 -> T16

    NOC_dcp = [dcp1, dcp2, dcp3, dcp4, dcp5, dcp6, dcp7, dcp8, dcp9, dcp10, dcp11, dcp12, dcp13, dcp14, dcp15, dcp16, dcp17, dcp18];

    % ================================
    % 5. Define Mutual Exclusion Places for NOC LINKS
    % ================================

    [PN_model, Lmp12] = New_Place(PN_model, 'L1to2_Mutex', 1, 1, {[1,1,0,0]});
    [PN_model, Lmp15] = New_Place(PN_model, 'L1to5_Mutex', 1, 1, {[1,2,0,0]});
    [PN_model, Lmp21] = New_Place(PN_model, 'L2to1_Mutex', 1, 1, {[1,3,0,0]});
    [PN_model, Lmp26] = New_Place(PN_model, 'L2to6_Mutex', 1, 1, {[1,4,0,0]});
    [PN_model, Lmp23] = New_Place(PN_model, 'L2to3_Mutex', 1, 1, {[1,5,0,0]});
    [PN_model, Lmp34] = New_Place(PN_model, 'L3to4_Mutex', 1, 1, {[1,6,0,0]});
    [PN_model, Lmp32] = New_Place(PN_model, 'L3to2_Mutex', 1, 1, {[1,7,0,0]});
    [PN_model, Lmp37] = New_Place(PN_model, 'L3to7_Mutex', 1, 1, {[1,8,0,0]});
    [PN_model, Lmp48] = New_Place(PN_model, 'L4to8_Mutex', 1, 1, {[1,9,0,0]});
    [PN_model, Lmp43] = New_Place(PN_model, 'L4to3_Mutex', 1, 1, {[1,10,0,0]});

    [PN_model, Lmp56] = New_Place(PN_model, 'L5to6_Mutex', 1, 1, {[1,11,0,0]});
    [PN_model, Lmp51] = New_Place(PN_model, 'L5to1_Mutex', 1, 1, {[1,12,0,0]});
    [PN_model, Lmp59] = New_Place(PN_model, 'L5to9_Mutex', 1, 1, {[1,13,0,0]});
    [PN_model, Lmp65] = New_Place(PN_model, 'L6to5_Mutex', 1, 1, {[1,14,0,0]});
    [PN_model, Lmp67] = New_Place(PN_model, 'L6to7_Mutex', 1, 1, {[1,15,0,0]});
    [PN_model, Lmp62] = New_Place(PN_model, 'L6to2_Mutex', 1, 1, {[1,16,0,0]});
    [PN_model, Lmp610] = New_Place(PN_model, 'L6to10_Mutex', 1, 1, {[1,17,0,0]});
    [PN_model, Lmp76] = New_Place(PN_model, 'L7to6_Mutex', 1, 1, {[1,18,0,0]});
    [PN_model, Lmp78] = New_Place(PN_model, 'L7to8_Mutex', 1, 1, {[1,19,0,0]});
    [PN_model, Lmp73] = New_Place(PN_model, 'L7to3_Mutex', 1, 1, {[1,20,0,0]});
    [PN_model, Lmp711] = New_Place(PN_model, 'L7to11_Mutex', 1, 1, {[1,21,0,0]});
    [PN_model, Lmp87] = New_Place(PN_model, 'L8to7_Mutex', 1, 1, {[1,22,0,0]});
    [PN_model, Lmp84] = New_Place(PN_model, 'L8to4_Mutex', 1, 1, {[1,23,0,0]});
    [PN_model, Lmp812] = New_Place(PN_model, 'L8to12_Mutex', 1, 1, {[1,24,0,0]});

    [PN_model, Lmp910] = New_Place(PN_model, 'L9to10_Mutex', 1, 1, {[1,25,0,0]});
    [PN_model, Lmp95] = New_Place(PN_model, 'L9to5_Mutex', 1, 1, {[1,26,0,0]});
    [PN_model, Lmp913] = New_Place(PN_model, 'L9to13_Mutex', 1, 1, {[1,27,0,0]});
    [PN_model, Lmp109] = New_Place(PN_model, 'L10to9_Mutex', 1, 1, {[1,28,0,0]});
    [PN_model, Lmp1011] = New_Place(PN_model, 'L10to11_Mutex', 1, 1, {[1,29,0,0]});
    [PN_model, Lmp106] = New_Place(PN_model, 'L10to6_Mutex', 1, 1, {[1,30,0,0]});
    [PN_model, Lmp1014] = New_Place(PN_model, 'L10to14_Mutex', 1, 1, {[1,31,0,0]});
    [PN_model, Lmp1110] = New_Place(PN_model, 'L11to10_Mutex', 1, 1, {[1,32,0,0]});
    [PN_model, Lmp1112] = New_Place(PN_model, 'L11to12_Mutex', 1, 1, {[1,33,0,0]});
    [PN_model, Lmp117] = New_Place(PN_model, 'L11to7_Mutex', 1, 1, {[1,34,0,0]});
    [PN_model, Lmp1115] = New_Place(PN_model, 'L11to15_Mutex', 1, 1, {[1,35,0,0]});
    [PN_model, Lmp1211] = New_Place(PN_model, 'L12to11_Mutex', 1, 1, {[1,36,0,0]});
    [PN_model, Lmp1216] = New_Place(PN_model, 'L12to16_Mutex', 1, 1, {[1,37,0,0]});
    [PN_model, Lmp128] = New_Place(PN_model, 'L12to8_Mutex', 1, 1, {[1,38,0,0]});

    [PN_model, Lmp1314] = New_Place(PN_model, 'L13to14_Mutex', 1, 1, {[1,39,0,0]});
    [PN_model, Lmp139] = New_Place(PN_model, 'L13to9_Mutex', 1, 1, {[1,40,0,0]});
    [PN_model, Lmp1413] = New_Place(PN_model, 'L14to13_Mutex', 1, 1, {[1,41,0,0]});
    [PN_model, Lmp1415] = New_Place(PN_model, 'L14to15_Mutex', 1, 1, {[1,42,0,0]});
    [PN_model, Lmp1410] = New_Place(PN_model, 'L14to10_Mutex', 1, 1, {[1,43,0,0]});
    [PN_model, Lmp1514] = New_Place(PN_model, 'L15to14_Mutex', 1, 1, {[1,44,0,0]});
    [PN_model, Lmp1516] = New_Place(PN_model, 'L15to16_Mutex', 1, 1, {[1,45,0,0]});
    [PN_model, Lmp1511] = New_Place(PN_model, 'L15to11_Mutex', 1, 1, {[1,46,0,0]});
    [PN_model, Lmp1612] = New_Place(PN_model, 'L16to12_Mutex', 1, 1, {[1,47,0,0]});
    [PN_model, Lmp1615] = New_Place(PN_model, 'L16to15_Mutex', 1, 1, {[1,48,0,0]});

    % Store all mutex link handles in a structured variable
    Links_mutex.L1to2_Mutex = Lmp12;
    Links_mutex.L1to5_Mutex = Lmp15;
    Links_mutex.L2to1_Mutex = Lmp21;
    Links_mutex.L2to6_Mutex = Lmp26;
    Links_mutex.L2to3_Mutex = Lmp23;
    Links_mutex.L3to4_Mutex = Lmp34;
    Links_mutex.L3to2_Mutex = Lmp32;
    Links_mutex.L3to7_Mutex = Lmp37;
    Links_mutex.L4to8_Mutex = Lmp48;
    Links_mutex.L4to3_Mutex = Lmp43;

    Links_mutex.L5to6_Mutex = Lmp56;
    Links_mutex.L5to1_Mutex = Lmp51;
    Links_mutex.L5to9_Mutex = Lmp59;
    Links_mutex.L6to5_Mutex = Lmp65;
    Links_mutex.L6to7_Mutex = Lmp67;
    Links_mutex.L6to2_Mutex = Lmp62;
    Links_mutex.L6to10_Mutex = Lmp610;
    Links_mutex.L7to6_Mutex = Lmp76;
    Links_mutex.L7to8_Mutex = Lmp78;
    Links_mutex.L7to3_Mutex = Lmp73;
    Links_mutex.L7to11_Mutex = Lmp711;
    Links_mutex.L8to7_Mutex = Lmp87;
    Links_mutex.L8to4_Mutex = Lmp84;
    Links_mutex.L8to12_Mutex = Lmp812;

    Links_mutex.L9to10_Mutex = Lmp910;
    Links_mutex.L9to5_Mutex = Lmp95;
    Links_mutex.L9to13_Mutex = Lmp913;
    Links_mutex.L10to9_Mutex = Lmp109;
    Links_mutex.L10to11_Mutex = Lmp1011;
    Links_mutex.L10to6_Mutex = Lmp106;
    Links_mutex.L10to14_Mutex = Lmp1014;
    Links_mutex.L11to10_Mutex = Lmp1110;
    Links_mutex.L11to12_Mutex = Lmp1112;
    Links_mutex.L11to7_Mutex = Lmp117;
    Links_mutex.L11to15_Mutex = Lmp1115;
    Links_mutex.L12to11_Mutex = Lmp1211;
    Links_mutex.L12to16_Mutex = Lmp1216;
    Links_mutex.L12to8_Mutex = Lmp128;

    Links_mutex.L13to14_Mutex = Lmp1314;
    Links_mutex.L13to9_Mutex = Lmp139;
    Links_mutex.L14to13_Mutex = Lmp1413;
    Links_mutex.L14to15_Mutex = Lmp1415;
    Links_mutex.L14to10_Mutex = Lmp1410;
    Links_mutex.L15to14_Mutex = Lmp1514;
    Links_mutex.L15to16_Mutex = Lmp1516;
    Links_mutex.L15to11_Mutex = Lmp1511;
    Links_mutex.L16to12_Mutex = Lmp1612;
    Links_mutex.L16to15_Mutex = Lmp1615;

    [PN_model, mp1] = New_Place(PN_model, 'MP1', 0, 1, {});
    [PN_model, mp2] = New_Place(PN_model, 'MP2', 0, 1, {});
    [PN_model, mp3] = New_Place(PN_model, 'MP3', 0, 1, {});
    [PN_model, mp4] = New_Place(PN_model, 'MP4', 0, 1, {});
    [PN_model, mp5] = New_Place(PN_model, 'MP5', 0, 1, {});
    [PN_model, mp6] = New_Place(PN_model, 'MP6', 0, 1, {});
    [PN_model, mp7] = New_Place(PN_model, 'MP7', 0, 1, {});
    [PN_model, mp8] = New_Place(PN_model, 'MP8', 0, 1, {});
    [PN_model, mp82] = New_Place(PN_model, 'MP82', 0, 1, {});
    [PN_model, mp9] = New_Place(PN_model, 'MP9', 0, 1, {});
    [PN_model, mp10] = New_Place(PN_model, 'MP10', 0, 1, {});
    [PN_model, mp11] = New_Place(PN_model, 'MP11', 0, 1, {});
    [PN_model, mp112] = New_Place(PN_model, 'MP112', 0, 1, {});
    [PN_model, mp12] = New_Place(PN_model, 'MP12', 0, 1, {});
    [PN_model, mp13] = New_Place(PN_model, 'MP13', 0, 1, {});
    [PN_model, mp14] = New_Place(PN_model, 'MP14', 0, 1, {});
    [PN_model, mp15] = New_Place(PN_model, 'MP15', 0, 1, {});
    [PN_model, mp16] = New_Place(PN_model, 'MP16', 0, 1, {});
    [PN_model, mp17] = New_Place(PN_model, 'MP17', 0, 1, {});

    % ================================
    % Define Runtime Test Place
    % ================================

    [PN_model,p0]=New_Place(PN_model,'P0',0,1,{[1,0,0,0]});
    %[PN_model,p0]=New_Place(PN_model,'P0',0,1,{[1,50,0,0],[1,51,0,0],[1,52,0,0],[1,53,0,0],[1,54,0,0],[1,55,0,0],[1,56,0,0],[1,57,0,0],[1,58,0,0],[1,59,0,0]});

    % ================================
    % Define Transitions (T1 to T16)
    % ================================

    [PN_model,t1]=New_Transition(PN_model,'T1', 'General_func',1,5,0,0,1);
    [PN_model,t2]=New_Transition(PN_model,'T2', 'General_func',1,3,0,0,1);
    [PN_model,t3]=New_Transition(PN_model,'T3', 'General_func',1,3,0,0,1);
    [PN_model,t4]=New_Transition(PN_model,'T4', 'General_func',1,6,0,0,1);
    [PN_model,t5]=New_Transition(PN_model,'T5', 'General_func',1,1,0,0,1);
    [PN_model,t6]=New_Transition(PN_model,'T6', 'General_func',1,6,0,0,1);
    [PN_model,t7]=New_Transition(PN_model,'T7', 'General_func',1,6,0,0,1);
    [PN_model,t8]=New_Transition(PN_model,'T8', 'General_func',1,5,0,0,1);
    [PN_model,t9]=New_Transition(PN_model,'T9', 'General_func',1,1,0,0,1);
    [PN_model,t10]=New_Transition(PN_model,'T10', 'General_func',1,2,0,0,1);
    [PN_model,t11]=New_Transition(PN_model,'T11', 'General_func',1,3,0,0,1);
    [PN_model,t12]=New_Transition(PN_model,'T12', 'General_func',1,5,0,0,1);
    [PN_model,t13]=New_Transition(PN_model,'T13', 'General_func',1,1,0,0,1);
    [PN_model,t14]=New_Transition(PN_model,'T14', 'General_func',1,5,0,0,1);
    [PN_model,t15]=New_Transition(PN_model,'T15', 'General_func',1,1,0,0,1);
    [PN_model,t16]=New_Transition(PN_model,'T16', 'General_func',1,4,0,0,1);

    t_array = [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16];

    % ================================
    % Define Mutual Exclusion Transitions for NOC Links (MT1 to MT16)
    % ================================

    [PN_model, mt1] = New_Transition(PN_model, 'MT1', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt2] = New_Transition(PN_model, 'MT2', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt3] = New_Transition(PN_model, 'MT3', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt4] = New_Transition(PN_model, 'MT4', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt5] = New_Transition(PN_model, 'MT5', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt6] = New_Transition(PN_model, 'MT6', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt7] = New_Transition(PN_model, 'MT7', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt8] = New_Transition(PN_model, 'MT8', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt82] = New_Transition(PN_model, 'MT82', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt9] = New_Transition(PN_model, 'MT9', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt10] = New_Transition(PN_model, 'MT10', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt11] = New_Transition(PN_model, 'MT11', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt112] = New_Transition(PN_model, 'MT112', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt12] = New_Transition(PN_model, 'MT12', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt13] = New_Transition(PN_model, 'MT13', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt14] = New_Transition(PN_model, 'MT14', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt15] = New_Transition(PN_model, 'MT15', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt16] = New_Transition(PN_model, 'MT16', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt17] = New_Transition(PN_model, 'MT17', 'General_func', 0, 0, 0, 0, 1);

    % ================================
    % Create Communication Delay Transitions
    % ================================

    % Initialize a struct to store DCT handles by their names for easy access
    dct_handles = struct();

    % Create Communication Delay Transitions and assign to individual variables
    for i = 1:length(comm_paths)
        path = comm_paths(i);
        dct_name = path.DCT;
        source_t = path.source;
        target_t = path.target;

        % Find the index of source and target transitions in transition_names
        source_idx = find(strcmp(transition_names, source_t));
        target_idx = find(strcmp(transition_names, target_t));

        if isempty(source_idx) || isempty(target_idx)
            error(['Source or target transition not found for ', dct_name]);
        end

        % Get the PE assigned to source and target transitions
        source_PE = assignments(source_idx);
        target_PE = assignments(target_idx);

        % Compute (x, y) coordinates based on the PE number in a 4x4 grid
        source_x = mod(source_PE - 1, 4);
        source_y = floor((source_PE - 1) / 4);
        target_x = mod(target_PE - 1, 4);
        target_y = floor((target_PE - 1) / 4);

        % Compute Manhattan distance as the delay
        delay = abs(target_x - source_x) + abs(target_y - source_y);

        % Extract the numeric part from dct_name (e.g., 'DCT1' -> 1)
        number_str = regexp(dct_name, '\d+', 'match');
        if isempty(number_str)
            error(['No numeric part found in DCT name ', dct_name]);
        end
        dct_number = str2double(number_str{1});

        % Generate dynamic variable name using dct_number (e.g., 'dct_1')
        dctX = sprintf('dct_%d', dct_number);

        % Create DCTx transition with computed delay
        [PN_model, temp_handle] = New_Transition(PN_model, dct_name, 'General_func', 1, delay, 0, 0, 1);

        % Assign the handle to the dynamically named variable (e.g., dct_1 = temp_handle)
        eval([dctX ' = temp_handle;']);

        % Store the handle in the struct
        dct_handles.(dct_name) = temp_handle;

    end
    % ================================
    % Define Mutual Exclusion Arcs for Shared NOC Links Access
    % ================================

    % Initialize arrays to track created arcs to prevent duplicates
    created_P2T_arcs = zeros(0, 3);
    created_T2P_arcs = zeros(0, 3);

    % Define a helper map from transition name to its index for easy reference
    transition_map = containers.Map(transition_names, 1:length(transition_names));

    % Iterate over each communication path to establish mutual exclusion arcs
    for i = 1:length(MT_paths)
        path = MT_paths(i);
        dct_name = path.DCT;
        source_t = path.source;
        target_t = path.target;

        % Find the index of source and target transitions
        source_idx = transition_map(source_t);
        target_idx = transition_map(target_t);

        if isempty(source_idx) || isempty(target_idx)
            error(['Source or target transition not found for ', dct_name]);
        end

        % Get the PE assigned to source and target transitions
        source_PE = assignments(source_idx);
        target_PE = assignments(target_idx);

        % Retrieve the corresponding DCT handle using eval
        if isfield(dct_handles, dct_name)
            dct_handle = dct_handles.(dct_name);
        else
            error(['DCT handle variable ', dct_name, ' does not exist.']);
        end

        % Retrieve the corresponding MTx transition handle
        mt_struct = MT_paths(i);
        mt_name = mt_struct.MT;

        num_str = regexp(mt_name, '\d+', 'match');
        if isempty(num_str)
            error(['No numeric part found in MT name ', mt_name]);
        end
        mt_var = ['mt' num_str{1}];
        try
            mt_handle = eval(mt_var);
        catch
            error(['MT handle variable ', mt_var, ' does not exist.']);
        end

        source_x = mod(source_PE - 1, 4);
        source_y = floor((source_PE - 1) / 4);
        target_x = mod(target_PE - 1, 4);
        target_y = floor((target_PE - 1) / 4);

        % Determine the XY routing path
        current_x = source_x;
        current_y = source_y;
        current_PE = source_PE;
        path_links = {};  % Cell array to store link names

        % Move in X direction
        while current_x ~= target_x
            if target_x > current_x
                next_x = current_x + 1;
                next_PE = current_PE + 1;
            else
                next_x = current_x - 1;
                next_PE = current_PE - 1;
            end
            link_name = sprintf('L%dto%d_Mutex', current_PE, next_PE);
            path_links{end+1} = link_name;
            current_PE = next_PE;
            current_x = next_x;
        end

        % Move in Y direction
        while current_y ~= target_y
            if target_y > current_y
                next_y = current_y + 1;
                next_PE = current_PE + 4;
            else
                next_y = current_y - 1;
                next_PE = current_PE - 4;
            end
            link_name = sprintf('L%dto%d_Mutex', current_PE, next_PE);
            path_links{end+1} = link_name;
            current_PE = next_PE;
            current_y = next_y;
        end

         % Create arcs from each link mutex place to the MTx transition
        for j = 1:length(path_links)
            link_name = path_links{j};  % e.g., 'L1to2_Mutex'

            % Retrieve the mutex place handle from Links_mutex
            if isfield(Links_mutex, link_name)
                link_mutex_handle = Links_mutex.(link_name);
            else
                error(['Mutex link ', link_name, ' not found in Links_mutex.']);
            end

            % Check and create P2T arc only if it doesn't exist
            arc_p2t = [link_mutex_handle, mt_handle, 1];
            if ~ismember(arc_p2t, created_P2T_arcs, 'rows')
                PN_model = Weighted_Arc_P2T(PN_model, link_mutex_handle, mt_handle, 1);
                created_P2T_arcs = [created_P2T_arcs; arc_p2t];
            end

            % Check and create T2P arc only if it doesn't exist
            arc_t2p = [dct_handle, link_mutex_handle, 1];
            if ~ismember(arc_t2p, created_T2P_arcs, 'rows')
                PN_model = Weighted_Arc_T2P(PN_model, dct_handle, link_mutex_handle, 1);
                created_T2P_arcs = [created_T2P_arcs; arc_t2p];
            end
        end
    end



    % ------------------------------------------------------------
    % AUTOMATED MUTUAL EXCLUSION LOGIC FOR PEs
    % ------------------------------------------------------------

    unique_pes = unique(assignments);

    for i = 1:length(unique_pes)
        pe_id = unique_pes(i);

        % Identify all transitions that use this 'pe_id'
        trans_indices = find(assignments == pe_id);

        pe_mutex_name = sprintf('PE%d_Mutex', pe_id);
        [PN_model, pe_mutex_place] = New_Place(PN_model, pe_mutex_name, 1, 1, {[1,3,0,0]});

        for j = 1:length(trans_indices)
            t_idx = trans_indices(j);

            % Construct names for the new immediate transition & place
            mt_name = sprintf('MT_PE%d_T%d', pe_id, t_idx);
            mp_name = sprintf('MP_PE%d_T%d', pe_id, t_idx);
            % Corrosponeded Delay communication place
            if isempty(t_idx)
                error('Invalid transition index: t_idx is empty. Check assignments or transition_names.');
            elseif ~isscalar(t_idx) || t_idx < 1 || t_idx > length(NOC_dcp)
                error(['Invalid transition index: t_idx = ', num2str(t_idx), ...
                    '. Ensure it is a positive integer within the range of NOC_dcp.']);
            elseif t_idx == 1
                DCp = mp1;
            else
                DCp = NOC_dcp(t_idx - 1);
            end

            if t_idx <= 16
                [PN_model, mt_handle] = New_Transition(PN_model, mt_name, 'General_func', 0, 0, 0, 0, 1);

                [PN_model, mp_handle] = New_Place(PN_model, mp_name, 0, 1, {});

                % Mutex place -> immediate transition
                PN_model = Weighted_Arc_P2T(PN_model, pe_mutex_place, mt_handle, 1);

                PN_model = Weighted_Arc_P2T(PN_model, DCp, mt_handle, 1);

                if t_idx == 8
                    PN_model = Weighted_Arc_P2T(PN_model, dcp17, mt_handle, 1);
                elseif t_idx == 11
                    PN_model = Weighted_Arc_P2T(PN_model, dcp18, mt_handle, 1);
                elseif t_idx == 16
                    PN_model = Weighted_Arc_P2T(PN_model, dcp16, mt_handle, 1);
                end

                % immediate transition -> holding place
                PN_model = Weighted_Arc_T2P(PN_model, mt_handle, mp_handle, 1);

                % holding place -> actual normal transition
                PN_model = Weighted_Arc_P2T(PN_model, mp_handle, t_array(t_idx), 1);

                % normal transition -> back to the PE_Mutex place
                PN_model = Weighted_Arc_T2P(PN_model, t_array(t_idx), pe_mutex_place, 1);
            end
        end
    end


    % ================================
    % Add Communication Arcs
    % ================================

    % Runtime Test Arc P0 -> MT1
    PN_model=Weighted_Arc_P2T(PN_model,p0,mt1,1);

    PN_model=Weighted_Arc_T2P(PN_model,t1,p1,1);
    PN_model=Weighted_Arc_P2T(PN_model,p1,mt2,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp2,dct_1,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_1,dcp1,1);

    PN_model=Weighted_Arc_T2P(PN_model,t2,p2,1);
    PN_model=Weighted_Arc_T2P(PN_model,t2,p3,1);
    PN_model=Weighted_Arc_T2P(PN_model,t2,p4,1);
    PN_model=Weighted_Arc_P2T(PN_model,p2,mt3,1);
    PN_model=Weighted_Arc_P2T(PN_model,p3,mt4,1);
    PN_model=Weighted_Arc_P2T(PN_model,p4,mt13,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp3,dct_2,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp4,dct_3,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp13,dct_12,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_2,dcp2,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_3,dcp3,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_12,dcp12,1);

    PN_model=Weighted_Arc_T2P(PN_model,t3,p5,1);
    PN_model=Weighted_Arc_T2P(PN_model,t3,p6,1);
    PN_model=Weighted_Arc_T2P(PN_model,t4,p7,1);
    PN_model=Weighted_Arc_T2P(PN_model,t13,p8,1);
    PN_model=Weighted_Arc_P2T(PN_model,p5,mt7,1);
    PN_model=Weighted_Arc_P2T(PN_model,p6,mt10,1);
    PN_model=Weighted_Arc_P2T(PN_model,p7,mt5,1);
    PN_model=Weighted_Arc_P2T(PN_model,p8,mt14,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp7,dct_6,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp10,dct_9,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp5,dct_4,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp14,dct_13,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_6,dcp6,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_9,dcp9,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_4,dcp4,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_13,dcp13,1);

    PN_model=Weighted_Arc_T2P(PN_model,t7,p9,1);
    PN_model=Weighted_Arc_T2P(PN_model,t10,p10,1);
    PN_model=Weighted_Arc_T2P(PN_model,t5,p11,1);
    PN_model=Weighted_Arc_T2P(PN_model,t14,p12,1);
    PN_model=Weighted_Arc_P2T(PN_model,p9,mt8,1);
    PN_model=Weighted_Arc_P2T(PN_model,p10,mt11,1);
    PN_model=Weighted_Arc_P2T(PN_model,p11,mt6,1);
    PN_model=Weighted_Arc_P2T(PN_model,p12,mt15,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp8,dct_7,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp11,dct_10,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp6,dct_5,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp15,dct_14,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_7,dcp7,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_10,dcp10,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_5,dcp5,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_14,dcp14,1);

    PN_model=Weighted_Arc_T2P(PN_model,t6,p13,1);
    PN_model=Weighted_Arc_T2P(PN_model,t15,p14,1);
    PN_model=Weighted_Arc_P2T(PN_model,p13,mt82,1);
    PN_model=Weighted_Arc_P2T(PN_model,p14,mt112,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp82,dct_17,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp112,dct_18,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_17,dcp17,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_18,dcp18,1);

    PN_model=Weighted_Arc_T2P(PN_model,t8,p15,1);
    PN_model=Weighted_Arc_T2P(PN_model,t11,p16,1);
    PN_model=Weighted_Arc_P2T(PN_model,p15,mt9,1);
    PN_model=Weighted_Arc_P2T(PN_model,p16,mt12,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp9,dct_8,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp12,dct_11,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_8,dcp8,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_11,dcp11,1);

    PN_model=Weighted_Arc_T2P(PN_model,t9,p17,1);
    PN_model=Weighted_Arc_T2P(PN_model,t12,p18,1);
    PN_model=Weighted_Arc_P2T(PN_model,p17,mt16,1);
    PN_model=Weighted_Arc_P2T(PN_model,p18,mt17,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp16,dct_15,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp17,dct_16,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_15,dcp15,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_16,dcp16,1);


    % ================================
    % arcs from MTx to MPx
    % ================================

    PN_model = Weighted_Arc_T2P(PN_model, mt1, mp1, 1);  % MT1 -> MP1

    PN_model = Weighted_Arc_T2P(PN_model, mt2, mp2, 1);  % MT2 -> MP2

    PN_model = Weighted_Arc_T2P(PN_model, mt3, mp3, 1);  % MT3 -> MP3

    PN_model = Weighted_Arc_T2P(PN_model, mt4, mp4, 1);  % MT4 -> MP4

    PN_model = Weighted_Arc_T2P(PN_model, mt5, mp5, 1);  % MT5 -> MP5

    PN_model = Weighted_Arc_T2P(PN_model, mt6, mp6, 1);  % MT6 -> MP6

    PN_model = Weighted_Arc_T2P(PN_model, mt7, mp7, 1);  % MT7 -> MP7

    PN_model = Weighted_Arc_T2P(PN_model, mt8, mp8, 1);  % MT8 -> MP8

    PN_model = Weighted_Arc_T2P(PN_model, mt82, mp82, 1);  % MT82 -> MP82

    PN_model = Weighted_Arc_T2P(PN_model, mt9, mp9, 1);  % MT9 -> MP9

    PN_model = Weighted_Arc_T2P(PN_model, mt10, mp10, 1);% MT10 -> MP10

    PN_model = Weighted_Arc_T2P(PN_model, mt11, mp11, 1);% MT11 -> MP11

    PN_model = Weighted_Arc_T2P(PN_model, mt112, mp112, 1);% MT112 -> MP112

    PN_model = Weighted_Arc_T2P(PN_model, mt12, mp12, 1);% MT12 -> MP12

    PN_model = Weighted_Arc_T2P(PN_model, mt13, mp13, 1);% MT13 -> MP13

    PN_model = Weighted_Arc_T2P(PN_model, mt14, mp14, 1);% MT14 -> MP14

    PN_model = Weighted_Arc_T2P(PN_model, mt15, mp15, 1);% MT15 -> MP15

    PN_model = Weighted_Arc_T2P(PN_model, mt16, mp16, 1);% MT16 -> MP16

    PN_model = Weighted_Arc_T2P(PN_model, mt17, mp17, 1);% MT17 -> MP17


end
