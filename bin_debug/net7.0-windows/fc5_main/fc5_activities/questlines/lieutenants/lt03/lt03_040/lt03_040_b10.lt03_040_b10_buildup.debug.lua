LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b10.domino
-- User graph: LT03_040_B10_BuildUp
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection /> 
]]--
-- *** END OF SCRIPT INPUT REFLECTION ***


export = {
};


function export:LuaDependencies()
    local luaDepTable = {
    };
    return luaDepTable;
end;

function export:Create(cboxRes)
    if (cboxRes:ShouldLoadResources() == true) then
        -- External box dependencies
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[594816581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1747514230.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3469897059.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2465570803.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3141502086.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT03_040_B10 = nil;
    Globals.LT03_040_B10 = {
        eRealFaith = nil,
        fCurrentHealth = 100,
        eRealFaithDialogPoint = nil,
        RealFaith_2 = false,
        RealFaith_1 = false,
        RealFaith_3 = false,
        RealFaith_4 = false,
        RealFaith_5 = false,
        RealFaith_6 = false,
        RealFaith_7 = false,
        ePlayerAttacking = nil,
        iFaithProgress = 100,
        iFaithNumber = 3,
        Faith_Invisible = {
        },
        Faith_Visible = {
        },
        fAngelWaveIntervale = 15,
        bFaithHintTimer = 0.1,
        fBuildUp_Timer = 21,
        fMortarFrequency = 17,
        iNbrMortarPerAttack = 2,
        iFaithTeleportNbr = 2,
        bFaithTeleport = false,
        Faith_Circle = {
        },
        Faith_Random = {
        },
        fProjectileSpeed = 15,
        fTeleportTimer = 13.5,
        bActivateMarker = false,
        RealFaith_8 = false,
        RealFaith_9 = false,
        RealFaith_10 = false,
        eFaithTeleport_FX = "2104423650397529717",
        eLocalPlayer = nil,
        fThresholdHealth = 85,
        iAngelNbr = 0,
        RealFaith_Start = true,
        fTeleportDuration = 2,
        ePlayer1 = nil,
        ePlayer2 = nil,
        PlayersToTarget = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_BuildUp.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enrage",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Out_Mortar",
                delayed = false,
            },
            [3] = {
                name = "Phase1_OUT",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 12,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MultipleOR.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Input",
                dynamicType = 1,
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/OutputOrder_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_040_B10_BuildUp";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp";
    self.Out = DummyFunction;
    self.Enrage = DummyFunction;
    self.Out_Mortar = DummyFunction;
    self.Phase1_OUT = DummyFunction;
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|351294898");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_6_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_IndexList_v2_3 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|379299610");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [0] = {
            connections = {
                [1] = self.f_box_IndexList_v2_3_Output_1,
                [2] = self.f_box_IndexList_v2_3_Output_2,
                [3] = self.f_box_IndexList_v2_3_Output_3,
            },
            count = 4,
        },
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|582392093");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|710512412");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|831563616");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|944287946");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|958833202");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_IndexList_v2_15 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|968190062");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_15_Output_0,
                [1] = self.f_box_IndexList_v2_15_Output_1,
                [2] = self.f_box_IndexList_v2_15_Output_2,
                [3] = self.f_box_IndexList_v2_15_Output_3,
            },
            count = 5,
        },
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1113724976");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_11_Started,
    });
    self.box_Music_Quest_v2_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1359022141");
    l0:SetConnections({
    });
    self.box_IndexList_v2_4 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1365176630");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_4_Output_0,
                [1] = self.f_box_IndexList_v2_4_Output_1,
                [2] = self.f_box_IndexList_v2_4_Output_2,
                [3] = self.f_box_IndexList_v2_4_Output_3,
            },
            count = 5,
        },
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1759559950");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1834207243");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1849340410");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_10_Started,
    });
    self.box_IndexList_v2_21 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2044014431");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_21_Output_0,
                [1] = self.f_box_IndexList_v2_21_Output_1,
                [2] = self.f_box_IndexList_v2_21_Output_2,
                [3] = self.f_box_IndexList_v2_21_Output_3,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2130334667");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_9_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_IsValueNil_v3_27();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|697775604", "697775604", "LT03_040_B10_BuildUp", "In", "box_IsValueNil_v3_27.Group", self, l0:GetLuaBox());
    -- Group
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_35();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1068303359", "1068303359", "LT03_040_B10_BuildUp", "box_Simple_Node_36.Out", "box_SoundShapeModifier_35.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_34();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1991586664", "1991586664", "LT03_040_B10_BuildUp", "box_Simple_Node_37.Out", "box_SoundShapeModifier_34.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_23_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_24();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1326198035", "1326198035", "LT03_040_B10_BuildUp", "box_ParticleSystem_v3_23.Started", "box_ParticleSystem_v3_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|828858283", "828858283", "LT03_040_B10_BuildUp", "box_OutputOrder_v2_7.Out", "box_ParticleSystem_v3_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_18();
    l0 = self.box_Music_Quest_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1409063021", "1409063021", "LT03_040_B10_BuildUp", "box_OutputOrder_v2_7.Out", "box_Music_Quest_v2_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|141097780", "141097780", "LT03_040_B10_BuildUp", "box_OutputOrder_v2_25.Out", "box_Simple_Node_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1335588059", "1335588059", "LT03_040_B10_BuildUp", "box_OutputOrder_v2_25.Out", "box_ParticleSystem_v3_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2016149514", "2016149514", "LT03_040_B10_BuildUp", "box_Delay_v5_6.Started", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_3();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_IndexList_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|398501834", "398501834", "LT03_040_B10_BuildUp", "box_Delay_v5_6.TimeElapsed", "box_IndexList_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_15();
    l0 = self.box_IndexList_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|264597243", "264597243", "LT03_040_B10_BuildUp", "box_MissionBlockLayer_16.Disabled", "box_IndexList_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IndexList_v2_3_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_IndexList_v2_3;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|646900763", "646900763", "LT03_040_B10_BuildUp", "box_IndexList_v2_3.Output", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_3_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_IndexList_v2_3;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1126918126", "1126918126", "LT03_040_B10_BuildUp", "box_IndexList_v2_3.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_3_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_IndexList_v2_3;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2002919909", "2002919909", "LT03_040_B10_BuildUp", "box_IndexList_v2_3.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_14_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1707384937", "1707384937", "LT03_040_B10_BuildUp", "box_MissionBlockLayer_14.Activated", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|319724431", "319724431", "LT03_040_B10_BuildUp", "box_MultipleOR_30.Out", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_1_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|621030346", "621030346", "LT03_040_B10_BuildUp", "box_ParticleSystem_v3_1.Started", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_1_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|213504584", "213504584", "LT03_040_B10_BuildUp", "box_ParticleSystem_v3_1.Stopped", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_12();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1009677928", "1009677928", "LT03_040_B10_BuildUp", "box_Delay_v5_29.TimeElapsed", "box_MissionBlockLayer_12.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_4();
    l0 = self.box_MultipleOR_28;
    l1 = self.box_IndexList_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2084639853", "2084639853", "LT03_040_B10_BuildUp", "box_MultipleOR_28.Out", "box_IndexList_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_17_Out()
    local l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1171906808", "1171906808", "LT03_040_B10_BuildUp", "box_MultipleOR_17.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|37271125", "37271125", "LT03_040_B10_BuildUp", "box_MultipleOR_5.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_15_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_15;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|592916055", "592916055", "LT03_040_B10_BuildUp", "box_IndexList_v2_15.Output", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_15_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_15;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|372940286", "372940286", "LT03_040_B10_BuildUp", "box_IndexList_v2_15.Output", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_15_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_15;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1850552279", "1850552279", "LT03_040_B10_BuildUp", "box_IndexList_v2_15.Output", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_15_Output_3()
    local l0;
    l0 = self.box_IndexList_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|88695581", "88695581", "LT03_040_B10_BuildUp", "box_IndexList_v2_15.Output", "Enrage", l0:GetLuaBox(), self);
    self:Enrage();
end;

function export:f_box_ParticleSystem_v3_24_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_16();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|402524455", "402524455", "LT03_040_B10_BuildUp", "box_ParticleSystem_v3_24.Started", "box_MissionBlockLayer_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_12_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_21();
    l0 = self.box_IndexList_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|309673529", "309673529", "LT03_040_B10_BuildUp", "box_MissionBlockLayer_12.Activated", "box_IndexList_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_11_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|127030695", "127030695", "LT03_040_B10_BuildUp", "box_PlayDialog_v6_11.Started", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IndexList_v2_4_Output_0()
    local l0;
    l0 = self.box_IndexList_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|674115480", "674115480", "LT03_040_B10_BuildUp", "box_IndexList_v2_4.Output", "Phase1_OUT", l0:GetLuaBox(), self);
    self:Phase1_OUT();
end;

function export:f_box_IndexList_v2_4_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|607461311", "607461311", "LT03_040_B10_BuildUp", "box_IndexList_v2_4.Output", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_4_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|731715389", "731715389", "LT03_040_B10_BuildUp", "box_IndexList_v2_4.Output", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_4_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1043202371", "1043202371", "LT03_040_B10_BuildUp", "box_IndexList_v2_4.Output", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_HealthModifier_v2_26_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1800265679", "1800265679", "LT03_040_B10_BuildUp", "box_HealthModifier_v2_26.Damaged", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1674629196", "1674629196", "LT03_040_B10_BuildUp", "box_ParticleSystem_v3_19.Started", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|566267109", "566267109", "LT03_040_B10_BuildUp", "box_MultipleOR_13.Out", "box_ParticleSystem_v3_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_27_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_26();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1803377051", "1803377051", "LT03_040_B10_BuildUp", "box_IsValueNil_v3_27.No", "box_HealthModifier_v2_26.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_27_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1602091544", "1602091544", "LT03_040_B10_BuildUp", "box_IsValueNil_v3_27.Yes", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = self.box_Delay_v5_2;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1575612630", "1575612630", "LT03_040_B10_BuildUp", "box_Delay_v5_2.TimeElapsed", "box_ParticleSystem_v3_1.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_10_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1330728413", "1330728413", "LT03_040_B10_BuildUp", "box_PlayDialog_v6_10.Started", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_21_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_21;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1352920021", "1352920021", "LT03_040_B10_BuildUp", "box_IndexList_v2_21.Output", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_21_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_14();
    l0 = self.box_IndexList_v2_21;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|832809792", "832809792", "LT03_040_B10_BuildUp", "box_IndexList_v2_21.Output", "box_MissionBlockLayer_14.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_21_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_31();
    l0 = self.box_IndexList_v2_21;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1009261940", "1009261940", "LT03_040_B10_BuildUp", "box_IndexList_v2_21.Output", "box_MissionBlockLayer_31.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_21_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_21;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2028545825", "2028545825", "LT03_040_B10_BuildUp", "box_IndexList_v2_21.Output", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MissionBlockLayer_31_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1533891832", "1533891832", "LT03_040_B10_BuildUp", "box_MissionBlockLayer_31.Activated", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ParticleSystem_v3_22_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|684301342", "684301342", "LT03_040_B10_BuildUp", "box_ParticleSystem_v3_22.Started", "box_ParticleSystem_v3_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_9_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|731223442", "731223442", "LT03_040_B10_BuildUp", "box_PlayDialog_v6_9.Started", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|@Start_Firefly_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|@Stop_Firefly_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|3218522");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_23_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104373268937981790",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|58330355");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|159463083");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|355706228");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_16_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160215886473126",
        -- missionLayerId,
        [1] = "27160247424077043",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_3()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|539824322");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_14_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160215886473126",
        -- missionLayerId,
        [1] = "27160255225180407",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|650991334");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_1_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_1_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103955875350761878",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.15,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_15()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|978606409");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_24_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104373190879887180",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1092518708");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_12_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160215886473126",
        -- missionLayerId,
        [1] = "27160247424077043",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = "2104454556592198284",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3141502086",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_18()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 7,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3469897059",
        -- StopEvent,
        [7] = "594816581",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_4()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1463576980");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_26_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#8ACCBCD8",
        -- value,
        [3] = 105,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1500710831");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104519950359093117",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1683157225");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104519950359093117",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1684519495");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104373183007178570",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|1760426264");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_27_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_27_Yes,
    });
    params = {
        -- group,
        [7] = "#8ACCBCD8",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = Globals.LT03_040_B10.fBuildUp_Timer,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = "2104454556592198284",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2465570803",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_21()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2113399138");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_31_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160215886473126",
        -- missionLayerId,
        [1] = "27160257095112159",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_BuildUp|2114740803");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_22_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104373222412664661",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "2104454556592198284",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1747514230",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Enrage()
    
end;
function export:Out_Mortar()
    
end;
function export:Phase1_OUT()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enrage" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_Mortar" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Phase1_OUT" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
