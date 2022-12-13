LUAC�T -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/g6/g6_cultlocation_01.domino
-- User graph: G6_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Outposts/G6/G6_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2380161706.bnk]], "CSoundResource");
        cboxRes:LoadResource([[645095631.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2201765626.bnk]], "CSoundResource");
        cboxRes:LoadResource([[974905219.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.G6_CultLocation_01 = nil;
    Globals.G6_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/G6/G6_CultLocation_01.G6_CultLocation_01_LVL01.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "Finish",
                delayed = false,
            },
            [2] = {
                name = "Finish_WrongActor",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Convo_STP",
                type = "entity",
            },
            [1] = {
                name = "NPC",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "In_CultLocation_Cleanup",
            },
            [2] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "CallReinforcement_Wave1",
                delayed = true,
            },
            [1] = {
                name = "CallReinforcement_Wave2",
                delayed = true,
            },
            [2] = {
                name = "CultLocationCompleted_HostilityElimination",
                delayed = false,
            },
            [3] = {
                name = "CustomScript",
                delayed = false,
            },
            [4] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "alarm_in_setup",
                type = "bool",
            },
            [1] = {
                name = "Alarm01",
                type = "group",
            },
            [2] = {
                name = "Alarm02",
                type = "group",
            },
            [3] = {
                name = "Alarm03",
                type = "group",
            },
            [4] = {
                name = "CultLoc_Music_Type",
                type = "Sound",
            },
            [5] = {
                name = "CultLocationNPC_Group",
                type = "group",
            },
            [6] = {
                name = "SafeHouseEntity",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CallReinforcement",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ReinforcementCalled",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ReinforcementPos01",
                type = "entity",
            },
            [1] = {
                name = "ReinforcementPos02",
                type = "entity",
            },
            [2] = {
                name = "ReinforcementPos03",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ReinforcementsPositionInfo",
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
            [0] = {
                name = "Direction",
                type = "string",
            },
            [1] = {
                name = "Type",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "e_Vehicles_proximitytrigger",
                type = "entity",
            },
            [1] = {
                name = "Vehicles_list",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "G6_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.box_SoundModifier_v2_25 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|27030104");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_25_Finished,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|84902561");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_OnceOnly_v3_41 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|100409943");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_41_Out_0,
            },
            count = 2,
        },
    });
    self.box_Switch_24 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|143934020");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_24_Output_0,
                [1] = self.f_box_Switch_24_Output_1,
                [2] = self.f_box_Switch_24_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|377154630");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|437711203");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|496448535");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_2_ReinforcementCalled,
    });
    self.box_SoundModifier_v2_23 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|535646652");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_23_Finished,
    });
    self.box_SpawnAI_45 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|540716443");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_45_Spawned,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|598016100");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_ProximityRadiusListener_v3_36 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|690530434");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_36_SomeoneNear,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|723422757");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|869866980");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_43_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Cult_Location_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|890629565");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled,
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|990563307");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_Out,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1133735546");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_SoundModifier_v2_26 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1244407229");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_26_Finished,
    });
    self.box_CultLocation_Vehicles_Manager_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1310400876");
    l0:SetConnections({
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1346173383");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_10_Spawned,
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1609397857");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_6_Spawned,
    });
    self.box_NarrativeScriptedConvoSafe_34 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1865801426");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_NarrativeScriptedConvoSafe_34_Error,
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_34_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_34_Finish_WrongActor,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1936187766");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_NarrativeScriptedConvoSafe_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1998050211");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_NarrativeScriptedConvoSafe_12_Error,
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_12_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_12_Finish_WrongActor,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|2041768166");
    l0:SetConnections({
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|2071762612");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1429330401", "1429330401", "G6_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1398731625", "1398731625", "G6_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1584815875", "1584815875", "G6_CultLocation_01_LVL01", "box_Simple_Node_30.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1881014317", "1881014317", "G6_CultLocation_01_LVL01", "box_Simple_Node_47.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1364147342", "1364147342", "G6_CultLocation_01_LVL01", "box_Simple_Node_47.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1469267444", "1469267444", "G6_CultLocation_01_LVL01", "box_Simple_Node_31.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|192673830", "192673830", "G6_CultLocation_01_LVL01", "box_Simple_Node_20.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_24();
    l0 = self.box_Switch_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1526851246", "1526851246", "G6_CultLocation_01_LVL01", "box_Simple_Node_32.Out", "box_Switch_24.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|873949236", "873949236", "G6_CultLocation_01_LVL01", "box_Simple_Node_21.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_17();
    l0 = self.box_CultLocation_Vehicles_Manager_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|14891611", "14891611", "G6_CultLocation_01_LVL01", "box_Simple_Node_22.Out", "box_CultLocation_Vehicles_Manager_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_2();
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|963652218", "963652218", "G6_CultLocation_01_LVL01", "box_Simple_Node_18.Out", "box_Brick_Cult_Location_Reinforcements_2.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_4();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|177162144", "177162144", "G6_CultLocation_01_LVL01", "box_Simple_Node_19.Out", "box_Brick_Cult_Location_Reinforcements_4.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_25_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_SoundModifier_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|754959026", "754959026", "G6_CultLocation_01_LVL01", "box_SoundModifier_v2_25.Finished", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_44_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_44;
    l1 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1159087130", "1159087130", "G6_CultLocation_01_LVL01", "box_MultipleOR_44.Out", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_41_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = self.box_OnceOnly_v3_41;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1264469559", "1264469559", "G6_CultLocation_01_LVL01", "box_OnceOnly_v3_41.Out", "box_UseContextualActionModifier_v3_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1651530613", "1651530613", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_29.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1169040079", "1169040079", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_29.Out", "box_Simple_Node_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_24_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_23();
    l0 = self.box_Switch_24;
    l1 = self.box_SoundModifier_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1598336088", "1598336088", "G6_CultLocation_01_LVL01", "box_Switch_24.Output", "box_SoundModifier_v2_23.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_24_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_25();
    l0 = self.box_Switch_24;
    l1 = self.box_SoundModifier_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|151934481", "151934481", "G6_CultLocation_01_LVL01", "box_Switch_24.Output", "box_SoundModifier_v2_25.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_24_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_26();
    l0 = self.box_Switch_24;
    l1 = self.box_SoundModifier_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1868651495", "1868651495", "G6_CultLocation_01_LVL01", "box_Switch_24.Output", "box_SoundModifier_v2_26.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = self.box_Delay_v5_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1502367134", "1502367134", "G6_CultLocation_01_LVL01", "box_Delay_v5_39.TimeElapsed", "box_Simple_Node_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_34();
    l0 = self.box_NarrativeScriptedConvoSafe_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|285100297", "285100297", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_38.Out", "box_NarrativeScriptedConvoSafe_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_12();
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|78319053", "78319053", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_38.Out", "box_NarrativeScriptedConvoSafe_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_2_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_8();
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|2006313501", "2006313501", "G6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_2.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_8.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_23_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_SoundModifier_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|2058533295", "2058533295", "G6_CultLocation_01_LVL01", "box_SoundModifier_v2_23.Finished", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_45_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_46();
    l0 = self.box_SpawnAI_45;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|632753682", "632753682", "G6_CultLocation_01_LVL01", "box_SpawnAI_45.Spawned", "box_Print_v2_46.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1475786032", "1475786032", "G6_CultLocation_01_LVL01", "box_MultipleOR_15.Out", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_36_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_ProximityRadiusListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|724758377", "724758377", "G6_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_36.SomeoneNear", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_42_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_42;
    l1 = self.box_OnceOnly_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1983757557", "1983757557", "G6_CultLocation_01_LVL01", "box_MultipleOR_42.Out", "box_OnceOnly_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1632212856", "1632212856", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_7.Out", "box_Simple_Node_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1084693552", "1084693552", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_7.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1853667503", "1853667503", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_7.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|2051948911", "2051948911", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_7.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_OnceOnly_v3_43;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1291003436", "1291003436", "G6_CultLocation_01_LVL01", "box_OnceOnly_v3_43.Out", "box_UseContextualActionModifier_v3_33.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_5();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|903022691", "903022691", "G6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_4.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_5.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1293296546", "1293296546", "G6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave1", "box_Simple_Node_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|190721133", "190721133", "G6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave2", "box_Simple_Node_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1662528471", "1662528471", "G6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CustomScript", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1853460865", "1853460865", "G6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_24();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_Switch_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|698449250", "698449250", "G6_CultLocation_01_LVL01", "box_Delay_v5_28.TimeElapsed", "box_Switch_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_26_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_SoundModifier_v2_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1719330002", "1719330002", "G6_CultLocation_01_LVL01", "box_SoundModifier_v2_26.Finished", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_10_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_3();
    l0 = self.box_SpawnAI_10;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1515404392", "1515404392", "G6_CultLocation_01_LVL01", "box_SpawnAI_10.Spawned", "box_Print_v2_3.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_6_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_11();
    l0 = self.box_SpawnAI_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|342137337", "342137337", "G6_CultLocation_01_LVL01", "box_SpawnAI_6.Spawned", "box_Print_v2_11.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|166168493", "166168493", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_Print_v2_16.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|843081728", "843081728", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_13_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_36();
    l0 = self.box_ProximityRadiusListener_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1754212754", "1754212754", "G6_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_13.Out", "box_ProximityRadiusListener_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_34_Error()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_34;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1659577970", "1659577970", "G6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_34.Error", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_NarrativeScriptedConvoSafe_34_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_34;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1656817219", "1656817219", "G6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_34.Finish", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeScriptedConvoSafe_34_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_34;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1516688793", "1516688793", "G6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_34.Finish_WrongActor", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_MultipleOR_27;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|393244", "393244", "G6_CultLocation_01_LVL01", "box_MultipleOR_27.Out", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_13();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1391464088", "1391464088", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_40.Out", "box_GetPlayerGroup_v2_13.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1229775368", "1229775368", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_40.Out", "box_Delay_v5_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Error()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1581096184", "1581096184", "G6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Error", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|998984189", "998984189", "G6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Finish", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|87791381", "87791381", "G6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Finish_WrongActor", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|625271187", "625271187", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_9.Out", "box_SpawnAI_10.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1151192486", "1151192486", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_9.Out", "box_SpawnAI_6.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_45();
    l0 = self.box_SpawnAI_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|2029736446", "2029736446", "G6_CultLocation_01_LVL01", "box_OutputOrder_v2_9.Out", "box_SpawnAI_45.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1402245062", "1402245062", "G6_CultLocation_01_LVL01", "box_MultipleOR_14.Out", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@Adelaide");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@convofail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@dialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@Play_Conversation");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@Spawn_Extra_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|@Wave_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_25()
    local params;
    params = {
        -- Pawns,
        [0] = "2103980954855946353",
        -- SoundId,
        [1] = "2201765626",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|131517215");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_24()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|375622077");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "convo",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|415843614");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_5()
    local params;
    params = {
        -- Type,
        [1] = "water",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_2()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2099738184494617798",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_23()
    local params;
    params = {
        -- Pawns,
        [0] = "2103980954855946353",
        -- SoundId,
        [1] = "2380161706",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_45()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100980814303988602",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2099738184494617789",
        -- nearZone,
        [4] = 60,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|861684928");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2099738184494617800",
        -- ReinforcementPos02,
        [1] = "2101036027910040175",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|951497346");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104739978423571375",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#A519AB63",
        -- Alarm02,
        [2] = "#3C10FAD9",
        -- CultLoc_Music_Type,
        [4] = "974905219",
        -- CultLocationNPC_Group,
        [5] = "#CA290239",
        -- SafeHouseEntity,
        [6] = "2099738184494617789",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1118263438");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ExtraNPC_01",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1240498690");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ExtraNPC_02",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_26()
    local params;
    params = {
        -- Pawns,
        [0] = "2103980954855946353",
        -- SoundId,
        [1] = "645095631",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_17()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103387778600417304",
        -- Vehicles_list,
        [1] = Globals.G6_CultLocation_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099776779410478874",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099776728000894455",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1647706094");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1660950847");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1666920218");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ExtraNPC_03",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1746912635");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104739976800375723",
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_34()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2104740016994391117",
        -- NPC,
        [1] = "2099738184494617793",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|1997891879");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_12()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2104740014922404937",
        -- NPC,
        [1] = "2099776782709299064",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_LVL01|2002226906");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_8()
    local params;
    params = {
        -- Type,
        [1] = "water",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_13_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_36;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
