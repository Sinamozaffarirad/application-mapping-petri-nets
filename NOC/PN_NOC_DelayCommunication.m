function PN_model=PN_NOC_DelayCommunication()
    [PN_model] = Init_PN('PN_NOC_DelayCommunication');

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
        struct('DCT', 'DCT4', 'source', 'T2', 'target', 'T13');
        struct('DCT', 'DCT5', 'source', 'T3', 'target', 'T7');
        struct('DCT', 'DCT6', 'source', 'T3', 'target', 'T10');
        struct('DCT', 'DCT7', 'source', 'T4', 'target', 'T5');
        struct('DCT', 'DCT8', 'source', 'T13', 'target', 'T14');
        struct('DCT', 'DCT9', 'source', 'T7', 'target', 'T8');
        struct('DCT', 'DCT10', 'source', 'T10', 'target', 'T11');
        struct('DCT', 'DCT11', 'source', 'T5', 'target', 'T6');
        struct('DCT', 'DCT12', 'source', 'T14', 'target', 'T15');
        struct('DCT', 'DCT13', 'source', 'T6', 'target', 'T8');
        struct('DCT', 'DCT14', 'source', 'T15', 'target', 'T11');
        struct('DCT', 'DCT15', 'source', 'T8', 'target', 'T9');
        struct('DCT', 'DCT16', 'source', 'T11', 'target', 'T12');
        struct('DCT', 'DCT17', 'source', 'T9', 'target', 'T16');
        struct('DCT', 'DCT18', 'source', 'T12', 'target', 'T16');
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

    %Runtime Test Place
    [PN_model,p0]=New_Place(PN_model,'P0',0,1,{[1,1,0,0]});

    %Define Transitions
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
    %Define Communication Delay Transitions
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

        % Generate dynamic variable name (e.g., 'dct_1', 'dct_2', ...)
        dctX = sprintf('dct_%d', i);

        % Create DCTx transition with computed delay
        [PN_model, temp_handle] = New_Transition(PN_model, dct_name, 'General_func', 1, delay, 0, 0, 1);

        % Assign the handle to the dynamically named variable (e.g., dct_1 = temp_handle)
        eval([dctX ' = temp_handle;']);
    end


    %Add Communication Arcs

    %Runtime Test Arc P2T
    PN_model=Weighted_Arc_P2T(PN_model,p0,t1,1);

    PN_model=Weighted_Arc_T2P(PN_model,t1,p1,1);
    PN_model=Weighted_Arc_P2T(PN_model,p1,dct_1,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_1,dcp1,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp1,t2,1);

    PN_model=Weighted_Arc_T2P(PN_model,t2,p2,1);
    PN_model=Weighted_Arc_T2P(PN_model,t2,p3,1);
    PN_model=Weighted_Arc_T2P(PN_model,t2,p4,1);
    PN_model=Weighted_Arc_P2T(PN_model,p2,dct_2,1);
    PN_model=Weighted_Arc_P2T(PN_model,p3,dct_3,1);
    PN_model=Weighted_Arc_P2T(PN_model,p4,dct_4,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_2,dcp2,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_3,dcp3,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_4,dcp4,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp2,t3,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp3,t4,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp4,t13,1);

    PN_model=Weighted_Arc_T2P(PN_model,t3,p5,1);
    PN_model=Weighted_Arc_T2P(PN_model,t3,p6,1);
    PN_model=Weighted_Arc_T2P(PN_model,t4,p7,1);
    PN_model=Weighted_Arc_T2P(PN_model,t13,p8,1);
    PN_model=Weighted_Arc_P2T(PN_model,p5,dct_5,1);
    PN_model=Weighted_Arc_P2T(PN_model,p6,dct_6,1);
    PN_model=Weighted_Arc_P2T(PN_model,p7,dct_7,1);
    PN_model=Weighted_Arc_P2T(PN_model,p8,dct_8,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_5,dcp5,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_6,dcp6,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_7,dcp7,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_8,dcp8,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp5,t7,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp6,t10,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp7,t5,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp8,t14,1);

    PN_model=Weighted_Arc_T2P(PN_model,t7,p9,1);
    PN_model=Weighted_Arc_T2P(PN_model,t10,p10,1);
    PN_model=Weighted_Arc_T2P(PN_model,t5,p11,1);
    PN_model=Weighted_Arc_T2P(PN_model,t14,p12,1);
    PN_model=Weighted_Arc_P2T(PN_model,p9,dct_9,1);
    PN_model=Weighted_Arc_P2T(PN_model,p10,dct_10,1);
    PN_model=Weighted_Arc_P2T(PN_model,p11,dct_11,1);
    PN_model=Weighted_Arc_P2T(PN_model,p12,dct_12,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_9,dcp9,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_10,dcp10,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_11,dcp11,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_12,dcp12,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp9,t8,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp10,t11,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp11,t6,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp12,t15,1);

    PN_model=Weighted_Arc_T2P(PN_model,t6,p13,1);
    PN_model=Weighted_Arc_T2P(PN_model,t15,p14,1);
    PN_model=Weighted_Arc_P2T(PN_model,p13,dct_13,1);
    PN_model=Weighted_Arc_P2T(PN_model,p14,dct_14,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_13,dcp13,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_14,dcp14,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp13,t8,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp14,t11,1);

    PN_model=Weighted_Arc_T2P(PN_model,t8,p15,1);
    PN_model=Weighted_Arc_T2P(PN_model,t11,p16,1);
    PN_model=Weighted_Arc_P2T(PN_model,p15,dct_15,1);
    PN_model=Weighted_Arc_P2T(PN_model,p16,dct_16,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_15,dcp15,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_16,dcp16,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp15,t9,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp16,t12,1);

    PN_model=Weighted_Arc_T2P(PN_model,t9,p17,1);
    PN_model=Weighted_Arc_T2P(PN_model,t12,p18,1);
    PN_model=Weighted_Arc_P2T(PN_model,p17,dct_17,1);
    PN_model=Weighted_Arc_P2T(PN_model,p18,dct_18,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_17,dcp17,1);
    PN_model=Weighted_Arc_T2P(PN_model,dct_18,dcp18,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp17,t16,1);
    PN_model=Weighted_Arc_P2T(PN_model,dcp18,t16,1);

end
