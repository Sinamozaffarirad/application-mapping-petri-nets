function PN_model=PN_Initial()
[PN_model] = Init_PN('PN_Initial');

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

%Add Communication Arcs
PN_model=Weighted_Arc_T2P(PN_model,t1,p1,1);

PN_model=Weighted_Arc_P2T(PN_model,p1,t2,1);

PN_model=Weighted_Arc_T2P(PN_model,t2,p2,1);
PN_model=Weighted_Arc_T2P(PN_model,t2,p3,1);
PN_model=Weighted_Arc_T2P(PN_model,t2,p4,1);

PN_model=Weighted_Arc_P2T(PN_model,p2,t3,1);
PN_model=Weighted_Arc_P2T(PN_model,p3,t4,1);
PN_model=Weighted_Arc_P2T(PN_model,p4,t13,1);

PN_model=Weighted_Arc_T2P(PN_model,t3,p5,1);
PN_model=Weighted_Arc_T2P(PN_model,t3,p6,1);
PN_model=Weighted_Arc_T2P(PN_model,t4,p7,1);
PN_model=Weighted_Arc_T2P(PN_model,t13,p8,1);

PN_model=Weighted_Arc_P2T(PN_model,p5,t7,1);
PN_model=Weighted_Arc_P2T(PN_model,p6,t10,1);
PN_model=Weighted_Arc_P2T(PN_model,p7,t5,1);
PN_model=Weighted_Arc_P2T(PN_model,p8,t14,1);

PN_model=Weighted_Arc_T2P(PN_model,t7,p9,1);
PN_model=Weighted_Arc_T2P(PN_model,t10,p10,1);
PN_model=Weighted_Arc_T2P(PN_model,t5,p11,1);
PN_model=Weighted_Arc_T2P(PN_model,t14,p12,1);

PN_model=Weighted_Arc_P2T(PN_model,p9,t8,1);
PN_model=Weighted_Arc_P2T(PN_model,p10,t11,1);
PN_model=Weighted_Arc_P2T(PN_model,p11,t6,1);
PN_model=Weighted_Arc_P2T(PN_model,p12,t15,1);

PN_model=Weighted_Arc_T2P(PN_model,t6,p13,1);
PN_model=Weighted_Arc_T2P(PN_model,t15,p14,1);

PN_model=Weighted_Arc_P2T(PN_model,p13,t8,1);
PN_model=Weighted_Arc_P2T(PN_model,p14,t11,1);

PN_model=Weighted_Arc_T2P(PN_model,t8,p15,1);
PN_model=Weighted_Arc_T2P(PN_model,t11,p16,1);

PN_model=Weighted_Arc_P2T(PN_model,p15,t9,1);
PN_model=Weighted_Arc_P2T(PN_model,p16,t12,1);

PN_model=Weighted_Arc_T2P(PN_model,t9,p17,1);
PN_model=Weighted_Arc_T2P(PN_model,t12,p18,1);

PN_model=Weighted_Arc_P2T(PN_model,p17,t16,1);
PN_model=Weighted_Arc_P2T(PN_model,p18,t16,1);
