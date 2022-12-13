LUAC]�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_005/lt01_005_b60.domino
-- User graph: GAM_LT01_005_Hostage_B60
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
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1133280135.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1916179695.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3148418297.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4281749327.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B60.GAM_LT01_005_Hostage_B60.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StopMortarDialog",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
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
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
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
    self._name = "GAM_LT01_005_Hostage_B60";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60";
    self.eDrunkGuy = nil;
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|31098023");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_4_Started,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|207579877");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_2_LoopingEnded,
        -- Started,
        [3] = self.f_box_Delay_v5_2_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_Gate_v3_16 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|289145677");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_16_Out,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|481166273");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_1_Started,
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|549299935");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_5_Started,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|708464758");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 1,
        },
    });
    self.box_Gate_v3_17 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|751420614");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_17_Out,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1067501847");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_9_Started,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1083176379");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1277084302");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_15_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1656077439");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_3 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1829045590");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_3_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_3_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_3_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_3_LoadedIdReceived,
    });
    self.box_Random_6 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1944337561");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_6_Output_0,
                [1] = self.f_box_Random_6_Output_1,
                [2] = self.f_box_Random_6_Output_2,
            },
            count = 3,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_3();
    l0 = self.box_CharacterLoadedIdListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|691641387", "691641387", "GAM_LT01_005_Hostage_B60", "In", "box_CharacterLoadedIdListener_3.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:StopMortarDialog()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|2126427940", "2126427940", "GAM_LT01_005_Hostage_B60", "StopMortarDialog", "box_Gate_v3_17.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|42376889", "42376889", "GAM_LT01_005_Hostage_B60", "StopMortarDialog", "box_Gate_v3_16.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_10();
    l0 = self.box_PlayDialog_v6_4;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|291855565", "291855565", "GAM_LT01_005_Hostage_B60", "box_PlayDialog_v6_4.Started", "box_Print_v2_10.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_2_LoopingEnded()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|258033562", "258033562", "GAM_LT01_005_Hostage_B60", "box_Delay_v5_2.LoopingEnded", "box_Delay_v5_2.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_11();
    l0 = self.box_Delay_v5_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|612248100", "612248100", "GAM_LT01_005_Hostage_B60", "box_Delay_v5_2.Started", "box_Print_v2_11.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_6();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_Random_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1623812820", "1623812820", "GAM_LT01_005_Hostage_B60", "box_Delay_v5_2.TimeElapsed", "box_Random_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Gate_v3_16;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1603746441", "1603746441", "GAM_LT01_005_Hostage_B60", "box_Gate_v3_16.Out", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1233615549", "1233615549", "GAM_LT01_005_Hostage_B60", "box_PlayDialog_v6_1.Started", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_8();
    l0 = self.box_PlayDialog_v6_5;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1804715802", "1804715802", "GAM_LT01_005_Hostage_B60", "box_PlayDialog_v6_5.Started", "box_Print_v2_8.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_OnceOnly_v3_14;
    l1 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|2069918164", "2069918164", "GAM_LT01_005_Hostage_B60", "box_OnceOnly_v3_14.Out", "box_Gate_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_Gate_v3_17;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|109874384", "109874384", "GAM_LT01_005_Hostage_B60", "box_Gate_v3_17.Out", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_7();
    l0 = self.box_PlayDialog_v6_9;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|945467155", "945467155", "GAM_LT01_005_Hostage_B60", "box_PlayDialog_v6_9.Started", "box_Print_v2_7.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_OnceOnly_v3_13;
    l1 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|479611578", "479611578", "GAM_LT01_005_Hostage_B60", "box_OnceOnly_v3_13.Out", "box_Gate_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_OnceOnly_v3_15;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|420693576", "420693576", "GAM_LT01_005_Hostage_B60", "box_OnceOnly_v3_15.Out", "box_PlayDialog_v6_4.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1291618954", "1291618954", "GAM_LT01_005_Hostage_B60", "box_Delay_v5_12.TimeElapsed", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived();
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_CharacterLoadedIdListener_3;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1501639505", "1501639505", "GAM_LT01_005_Hostage_B60", "box_CharacterLoadedIdListener_3.LoadedIdReceived", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_6_Output_0()
    local l0, l1;
    l0 = self.box_Random_6;
    l1 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|261281215", "261281215", "GAM_LT01_005_Hostage_B60", "box_Random_6.Output", "box_OnceOnly_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_6_Output_1()
    local l0, l1;
    l0 = self.box_Random_6;
    l1 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|741298578", "741298578", "GAM_LT01_005_Hostage_B60", "box_Random_6.Output", "box_OnceOnly_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_6_Output_2()
    local l0, l1;
    l0 = self.box_Random_6;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|2036456398", "2036456398", "GAM_LT01_005_Hostage_B60", "box_Random_6.Output", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    params = {
        -- Group,
        [0] = self.eDrunkGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1133280135",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 99,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_16()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = self.eDrunkGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1916179695",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    DrawTextToScreen("Comment: Use the mortar!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Use the mortar!");
    params = {
        -- Group,
        [0] = self.eDrunkGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4281749327",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_17()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|880995529");
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
        [8] = "LOOK! A flare! More peggies are gonna be here any minute.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    DrawTextToScreen("Comment: We gotta stop 'em dead, use the mortar!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: We gotta stop 'em dead, use the mortar!");
    params = {
        -- Group,
        [0] = self.eDrunkGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3148418297",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1173337171");
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
        [8] = "Use the mortar!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1284563680");
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
        [8] = "We gotta stop 'em dead, use the mortar!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B60.domino|@GAM_LT01_005_Hostage_B60|1768829670");
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
        [8] = "These peggies are really fuckin' determined to get us in John's bunker.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184608221198",
    };
    return params;
end;

function export:OnEnter_box_Random_6()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
                [0] = 0.4,
                [1] = 0.3,
                [2] = 0.3,
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_3;
    self.eDrunkGuy = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopMortarDialog" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
