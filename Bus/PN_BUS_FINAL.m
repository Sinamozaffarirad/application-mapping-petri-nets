function PN_model = PN_BUS_FINAL()
    [PN_model] = Init_PN('PN_BUS_FINAL');

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

    % ================================
    % Define Transitions and Places
    % ================================

    % Define Transition Names
    transition_names = {'T1','T2','T3','T4','T5','T6','T7','T8','T9','T10','T11','T12','T13','T14','T15','T16'};

    % Define Places
    [PN_model, p1] = New_Place(PN_model, 'P1', 0, 1, {});
    [PN_model, p2] = New_Place(PN_model, 'P2', 0, 1, {});
    [PN_model, p3] = New_Place(PN_model, 'P3', 0, 1, {});
    [PN_model, p4] = New_Place(PN_model, 'P4', 0, 1, {});
    [PN_model, p5] = New_Place(PN_model, 'P5', 0, 1, {});
    [PN_model, p6] = New_Place(PN_model, 'P6', 0, 1, {});
    [PN_model, p7] = New_Place(PN_model, 'P7', 0, 1, {});
    [PN_model, p8] = New_Place(PN_model, 'P8', 0, 1, {});
    [PN_model, p9] = New_Place(PN_model, 'P9', 0, 1, {});
    [PN_model, p10] = New_Place(PN_model, 'P10', 0, 1, {});
    [PN_model, p11] = New_Place(PN_model, 'P11', 0, 1, {});
    [PN_model, p12] = New_Place(PN_model, 'P12', 0, 1, {});
    [PN_model, p13] = New_Place(PN_model, 'P13', 0, 1, {});
    [PN_model, p14] = New_Place(PN_model, 'P14', 0, 1, {});
    [PN_model, p15] = New_Place(PN_model, 'P15', 0, 1, {});
    [PN_model, p16] = New_Place(PN_model, 'P16', 0, 1, {});
    [PN_model, p17] = New_Place(PN_model, 'P17', 0, 1, {});
    [PN_model, p18] = New_Place(PN_model, 'P18', 0, 1, {});

    % Define Communication Delay Places
    [PN_model, dcp1] = New_Place(PN_model, 'DCP1', 0, 1, {});  % T1 -> T2
    [PN_model, dcp2] = New_Place(PN_model, 'DCP2', 0, 1, {});  % T2 -> T3
    [PN_model, dcp3] = New_Place(PN_model, 'DCP3', 0, 1, {});  % T2 -> T4
    [PN_model, dcp4] = New_Place(PN_model, 'DCP4', 0, 1, {});  % T2 -> T13
    [PN_model, dcp5] = New_Place(PN_model, 'DCP5', 0, 1, {});  % T3 -> T7
    [PN_model, dcp6] = New_Place(PN_model, 'DCP6', 0, 1, {});  % T3 -> T10
    [PN_model, dcp7] = New_Place(PN_model, 'DCP7', 0, 1, {});  % T4 -> T5
    [PN_model, dcp8] = New_Place(PN_model, 'DCP8', 0, 1, {});  % T13 -> T14
    [PN_model, dcp9] = New_Place(PN_model, 'DCP9', 0, 1, {});  % T7 -> T8
    [PN_model, dcp10] = New_Place(PN_model, 'DCP10', 0, 1, {}); % T10 -> T11
    [PN_model, dcp11] = New_Place(PN_model, 'DCP11', 0, 1, {}); % T5 -> T6
    [PN_model, dcp12] = New_Place(PN_model, 'DCP12', 0, 1, {}); % T14 -> T15
    [PN_model, dcp13] = New_Place(PN_model, 'DCP13', 0, 1, {}); % T6 -> T8
    [PN_model, dcp14] = New_Place(PN_model, 'DCP14', 0, 1, {}); % T15 -> T11
    [PN_model, dcp15] = New_Place(PN_model, 'DCP15', 0, 1, {}); % T8 -> T9
    [PN_model, dcp16] = New_Place(PN_model, 'DCP16', 0, 1, {}); % T11 -> T12
    [PN_model, dcp17] = New_Place(PN_model, 'DCP17', 0, 1, {}); % T9 -> T16
    [PN_model, dcp18] = New_Place(PN_model, 'DCP18', 0, 1, {}); % T12 -> T16

    bus_dcp = [dcp1, dcp2, dcp3, dcp4, dcp5, dcp6, dcp7, dcp8, dcp9, dcp10, dcp11, dcp12, dcp13, dcp14, dcp15, dcp16, dcp17, dcp18];

    % ================================
    % 5. Define Mutual Exclusion Places for Shared Bus Access
    % ================================

    [PN_model, mp0] = New_Place(PN_model, 'Bus_Mutex', 1, 1, {[1,2,0,0]});

    [PN_model, mp1] = New_Place(PN_model, 'MP1', 0, 1, {});
    [PN_model, mp2] = New_Place(PN_model, 'MP2', 0, 1, {});
    [PN_model, mp3] = New_Place(PN_model, 'MP3', 0, 1, {});
    [PN_model, mp4] = New_Place(PN_model, 'MP4', 0, 1, {});
    [PN_model, mp5] = New_Place(PN_model, 'MP5', 0, 1, {});
    [PN_model, mp6] = New_Place(PN_model, 'MP6', 0, 1, {});
    [PN_model, mp7] = New_Place(PN_model, 'MP7', 0, 1, {});
    [PN_model, mp8] = New_Place(PN_model, 'MP8', 0, 1, {});
    [PN_model, mp8_2] = New_Place(PN_model, 'MP8_2', 0, 1, {});
    [PN_model, mp9] = New_Place(PN_model, 'MP9', 0, 1, {});
    [PN_model, mp10] = New_Place(PN_model, 'MP10', 0, 1, {});
    [PN_model, mp11] = New_Place(PN_model, 'MP11', 0, 1, {});
    [PN_model, mp11_2] = New_Place(PN_model, 'MP11_2', 0, 1, {});
    [PN_model, mp12] = New_Place(PN_model, 'MP12', 0, 1, {});
    [PN_model, mp13] = New_Place(PN_model, 'MP13', 0, 1, {});
    [PN_model, mp14] = New_Place(PN_model, 'MP14', 0, 1, {});
    [PN_model, mp15] = New_Place(PN_model, 'MP15', 0, 1, {});
    [PN_model, mp16] = New_Place(PN_model, 'MP16', 0, 1, {});
    [PN_model, mp17] = New_Place(PN_model, 'MP17', 0, 1, {});


    % ================================
    % Define Runtime Test Place
    % ================================

    [PN_model,p0]=New_Place(PN_model,'P0',0,1,{[50,0,0,0]});
    %[PN_model,p0]=New_Place(PN_model,'P0',0,1,{[1,50,0,0],[1,51,0,0],[1,52,0,0],[1,53,0,0],[1,54,0,0],[1,55,0,0],[1,56,0,0],[1,57,0,0],[1,58,0,0],[1,59,0,0]});

    % ================================
    % Define Transitions (T1 to T16)
    % ================================

    [PN_model, t1] = New_Transition(PN_model, 'T1', 'General_func', 1, 5, 0, 0, 1);
    [PN_model, t2] = New_Transition(PN_model, 'T2', 'General_func', 1, 3, 0, 0, 1);
    [PN_model, t3] = New_Transition(PN_model, 'T3', 'General_func', 1, 3, 0, 0, 1);
    [PN_model, t4] = New_Transition(PN_model, 'T4', 'General_func', 1, 6, 0, 0, 1);
    [PN_model, t5] = New_Transition(PN_model, 'T5', 'General_func', 1, 1, 0, 0, 1);
    [PN_model, t6] = New_Transition(PN_model, 'T6', 'General_func', 1, 6, 0, 0, 1);
    [PN_model, t7] = New_Transition(PN_model, 'T7', 'General_func', 1, 6, 0, 0, 1);
    [PN_model, t8] = New_Transition(PN_model, 'T8', 'General_func', 1, 5, 0, 0, 1);
    [PN_model, t9] = New_Transition(PN_model, 'T9', 'General_func', 1, 1, 0, 0, 1);
    [PN_model, t10] = New_Transition(PN_model, 'T10', 'General_func', 1, 2, 0, 0, 1);
    [PN_model, t11] = New_Transition(PN_model, 'T11', 'General_func', 1, 3, 0, 0, 1);
    [PN_model, t12] = New_Transition(PN_model, 'T12', 'General_func', 1, 5, 0, 0, 1);
    [PN_model, t13] = New_Transition(PN_model, 'T13', 'General_func', 1, 1, 0, 0, 1);
    [PN_model, t14] = New_Transition(PN_model, 'T14', 'General_func', 1, 5, 0, 0, 1);
    [PN_model, t15] = New_Transition(PN_model, 'T15', 'General_func', 1, 1, 0, 0, 1);
    [PN_model, t16] = New_Transition(PN_model, 'T16', 'General_func', 1, 4, 0, 0, 1);


    t_array = [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16];

    % ================================
    % Create Communication Delay Transitions
    % ================================

    % Create Communication Delay Transitions and assign to individual variables
    for i = 1:length(comm_paths)
        path = comm_paths(i);
        dct_name = path.DCT;
        source_t = path.source;
        target_t = path.target;

        % Determine delay based on PE assignments
        source_idx = find(strcmp(transition_names, source_t));
        target_idx = find(strcmp(transition_names, target_t));

        if isempty(source_idx) || isempty(target_idx)
            error(['Source or target transition not found for ', dct_name]);
        end

        if assignments(source_idx) == assignments(target_idx)
            delay = 0;
        else
            delay = 2;
        end

        % Generate dynamic variable name (e.g., 'dct_1', 'dct_2', ...)
        dctX = sprintf('dct_%d', i);

        % Create DCTx transition with computed delay
        [PN_model, temp_handle] = New_Transition(PN_model, dct_name, 'General_func', 1, delay, 0, 0, 1);

        % Assign the handle to the dynamically named variable (e.g., dct_1 = temp_handle)
        eval([dctX ' = temp_handle;']);
    end

    % ================================
    % Define Mutual Exclusion Transitions for Shared BUS (MT1 to MT16)
    % ================================

    [PN_model, mt1] = New_Transition(PN_model, 'MT1', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt2] = New_Transition(PN_model, 'MT2', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt3] = New_Transition(PN_model, 'MT3', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt4] = New_Transition(PN_model, 'MT4', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt5] = New_Transition(PN_model, 'MT5', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt6] = New_Transition(PN_model, 'MT6', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt7] = New_Transition(PN_model, 'MT7', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt8] = New_Transition(PN_model, 'MT8', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt8_2] = New_Transition(PN_model, 'MT8_2', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt9] = New_Transition(PN_model, 'MT9', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt10] = New_Transition(PN_model, 'MT10', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt11] = New_Transition(PN_model, 'MT11', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt11_2] = New_Transition(PN_model, 'MT11_2', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt12] = New_Transition(PN_model, 'MT12', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt13] = New_Transition(PN_model, 'MT13', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt14] = New_Transition(PN_model, 'MT14', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt15] = New_Transition(PN_model, 'MT15', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt16] = New_Transition(PN_model, 'MT16', 'General_func', 0, 0, 0, 0, 1);
    [PN_model, mt17] = New_Transition(PN_model, 'MT17', 'General_func', 0, 0, 0, 0, 1);


    % ------------------------------------------------------------
    % AUTOMATED MUTUAL EXCLUSION LOGIC FOR PEs
    % ------------------------------------------------------------

    %  Identify all unique PEs in the 'assignments' array
    unique_pes = unique(assignments);

    % For each PE encountered, create:
    %    - A single PE_<ID>_Mutex place with 1 token
    %    - For EACH transition assigned to this PE:
    %         + immediate transition (MT_PE<ID>_T<index>)
    %         + small holding place   (MP_PE<ID>_T<index>)
    %         + arcs to enforce mutual exclusion
    for i = 1:length(unique_pes)
        pe_id = unique_pes(i);

        % Identify all transitions that use this 'pe_id'
        trans_indices = find(assignments == pe_id);

        % Create the mutex place for this PE
        pe_mutex_name = sprintf('PE%d_Mutex', pe_id);
        [PN_model, pe_mutex_place] = New_Place(PN_model, pe_mutex_name, 1, 1, {[1,3,0,0]});   % 1 token, capacity=1

        % For each transition that uses this PE, add the ME handshake
        for j = 1:length(trans_indices)
            t_idx = trans_indices(j);   % e.g. 5 means T5

            % Construct names for the new immediate transition & place
            mt_name = sprintf('MT_PE%d_T%d', pe_id, t_idx);
            mp_name = sprintf('MP_PE%d_T%d', pe_id, t_idx);
            % Corrosponeded Delay communication place
            % Ensure t_idx is a valid positive integer before proceeding
            % Ensure t_idx is valid and falls within the expected range
            if isempty(t_idx)
                error('Invalid transition index: t_idx is empty. Check assignments or transition_names.');
            elseif ~isscalar(t_idx) || t_idx < 1 || t_idx > length(bus_dcp)
                error(['Invalid transition index: t_idx = ', num2str(t_idx), ...
                    '. Ensure it is a positive integer within the range of bus_dcp.']);
            elseif t_idx == 1
                DCp = mp1;
            else
                DCp = bus_dcp(t_idx - 1);
            end

            if t_idx <= 16
                % Create the immediate transition
                [PN_model, mt_handle] = New_Transition(PN_model, mt_name, 'General_func', 0, 0, 0, 0, 1);

                % Create the small holding place
                [PN_model, mp_handle] = New_Place(PN_model, mp_name, 0, 1, {});

                %  Connect the arcs:
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
    PN_model=Weighted_Arc_P2T(PN_model,p13,mt8_2,1);
    PN_model=Weighted_Arc_P2T(PN_model,p14,mt11_2,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp8_2,dct_17,1);
    PN_model=Weighted_Arc_P2T(PN_model,mp11_2,dct_18,1);
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
    % Lambda Functions for Arc Creation
    % ================================

    NeedBusForMT = @(mtName) ...
        any(arrayfun(@(cp) ...
            strcmp(cp.MT, mtName) && ...
            assignments(strcmp(transition_names, cp.source)) ~= ...
            assignments(strcmp(transition_names, cp.target)), ...
            MT_paths));

    % ================================
    % Define Mutual Exclusion Arcs for Shared Bus Access
    % ================================

    % Input arcs from Bus_Mutex to all transitions (T1 to T16)
    PN_model = Weighted_Arc_P2T(PN_model, mp0, mt1, 1);  % Bus_Mutex -> MT1
    PN_model = Weighted_Arc_T2P(PN_model, mt1, mp1, 1);  % MT1 -> MP1
    PN_model = Weighted_Arc_T2P(PN_model, t1, mp0, 1);

    % MT2 → Bus_Mutex arc
    if NeedBusForMT('MT2')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt2, 1);  % Bus_Mutex -> MT2
        PN_model = Weighted_Arc_T2P(PN_model, dct_1, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt2, mp2, 1);  % MT2 -> MP2

    % MT3 → Bus_Mutex arc
    if NeedBusForMT('MT3')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt3, 1);  % Bus_Mutex -> MT3
        PN_model = Weighted_Arc_T2P(PN_model, dct_2, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt3, mp3, 1);  % MT3 -> MP3

    % MT4 → Bus_Mutex arc
    if NeedBusForMT('MT4')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt4, 1);  % Bus_Mutex -> MT4
        PN_model = Weighted_Arc_T2P(PN_model, dct_3, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt4, mp4, 1);  % MT4 -> MP4

    % MT5 → Bus_Mutex arc
    if NeedBusForMT('MT5')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt5, 1);  % Bus_Mutex -> MT5
        PN_model = Weighted_Arc_T2P(PN_model, dct_4, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt5, mp5, 1);  % MT5 -> MP5

    % MT6 → Bus_Mutex arc
    if NeedBusForMT('MT6')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt6, 1);  % Bus_Mutex -> MT6
        PN_model = Weighted_Arc_T2P(PN_model, dct_5, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt6, mp6, 1);  % MT6 -> MP6

    % MT7 → Bus_Mutex arc
    if NeedBusForMT('MT7')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt7, 1);  % Bus_Mutex -> MT7
        PN_model = Weighted_Arc_T2P(PN_model, dct_6, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt7, mp7, 1);  % MT7 -> MP7

    % MT8 → Bus_Mutex arc
    if NeedBusForMT('MT8')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt8, 1);  % Bus_Mutex -> MT8
        PN_model = Weighted_Arc_T2P(PN_model, dct_7, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt8, mp8, 1);  % MT8 -> MP8

    % MT8_2 → Bus_Mutex arc
    if NeedBusForMT('MT8_2')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt8_2, 1);  % Bus_Mutex -> MT8_2
        PN_model = Weighted_Arc_T2P(PN_model, dct_17, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt8_2, mp8_2, 1);  % MT8_2 -> MP8_2

    % MT9 → Bus_Mutex arc
    if NeedBusForMT('MT9')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt9, 1);  % Bus_Mutex -> MT9
        PN_model = Weighted_Arc_T2P(PN_model, dct_8, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt9, mp9, 1);  % MT9 -> MP9

    % MT10 → Bus_Mutex arc
    if NeedBusForMT('MT10')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt10, 1); % Bus_Mutex -> MT10
        PN_model = Weighted_Arc_T2P(PN_model, dct_9, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt10, mp10, 1);% MT10 -> MP10

    % MT11 → Bus_Mutex arc
    if NeedBusForMT('MT11')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt11, 1); % Bus_Mutex -> MT11
        PN_model = Weighted_Arc_T2P(PN_model, dct_10, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt11, mp11, 1);% MT11 -> MP11

    % MT11_2 → Bus_Mutex arc
    if NeedBusForMT('MT11_2')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt11_2, 1); % Bus_Mutex -> MT11_2
        PN_model = Weighted_Arc_T2P(PN_model, dct_17, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt11_2, mp11_2, 1);% MT11_2 -> MP11_2

    % MT12 → Bus_Mutex arc
    if NeedBusForMT('MT12')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt12, 1); % Bus_Mutex -> MT12
        PN_model = Weighted_Arc_T2P(PN_model, dct_11, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt12, mp12, 1);% MT12 -> MP12


    % MT13 → Bus_Mutex arc
    if NeedBusForMT('MT13')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt13, 1); % Bus_Mutex -> MT13
        PN_model = Weighted_Arc_T2P(PN_model, dct_12, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt13, mp13, 1);% MT13 -> MP13


    % MT14 → Bus_Mutex arc
    if NeedBusForMT('MT14')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt14, 1); % Bus_Mutex -> MT14
        PN_model = Weighted_Arc_T2P(PN_model, dct_13, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt14, mp14, 1);% MT14 -> MP14

    % MT15 → Bus_Mutex arc
    if NeedBusForMT('MT15')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt15, 1); % Bus_Mutex -> MT15
        PN_model = Weighted_Arc_T2P(PN_model, dct_14, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt15, mp15, 1);% MT15 -> MP15

    % MT16 → Bus_Mutex arc
    if NeedBusForMT('MT16')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt16, 1); % Bus_Mutex -> MT16
        PN_model = Weighted_Arc_T2P(PN_model, dct_15, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt16, mp16, 1);% MT16 -> MP16

    % MT17 → Bus_Mutex arc
    if NeedBusForMT('MT17')
        PN_model = Weighted_Arc_P2T(PN_model, mp0, mt17, 1); % Bus_Mutex -> MT17
        PN_model = Weighted_Arc_T2P(PN_model, dct_16, mp0, 1);
    end
    PN_model = Weighted_Arc_T2P(PN_model, mt17, mp17, 1);% MT17 -> MP17

end
