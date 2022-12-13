LUACɉ  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_005/key02_005_b30.domino
-- User graph: KEY02_005_ChaseSequence
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Time" Type="Core|float" />
    <DataIn Name="E_Vehicle" Type="Nomad|entity{}" />
    <DataIn Name="E_Gunner" Type="Nomad|entity{}" />
    <DataIn Name="E_ModulateSTP" Type="Nomad|entity{}" />
    <DataIn Name="EngineBreakToggle" Type="Core|bool" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceVehicleCrash.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY02_005_B30 = nil;
    Globals.KEY02_005_B30 = {
        var_Reloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B30.KEY02_005_ChaseSequence.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "E_Gunner",
                type = "entity",
            },
            [1] = {
                name = "E_ModulateSTP",
                type = "entity",
            },
            [2] = {
                name = "E_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "EngineBreakToggle",
                type = "bool",
            },
            [4] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ForceVehicleCrash.lua")] = {
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
            [0] = {
                name = "gasPedal",
                type = "float",
            },
            [1] = {
                name = "steeringWheel",
                type = "float",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
            [0] = {
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY02_005_ChaseSequence";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence";
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|153807164");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|418523960");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 9,
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_VehicleDamageListener_v2_7 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|578475821");
    l0:SetConnections({
        -- MajorDamage,
        [5] = self.f_box_VehicleDamageListener_v2_7_MajorDamage,
        -- MinorDamage,
        [6] = self.f_box_VehicleDamageListener_v2_7_MinorDamage,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_7_OnFire,
    });
    self.box_HealthListener_v6_5 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|930836979");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_5_Critical,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_5_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_5_Killed,
    });
    self.box_Random_3 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1298297879");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_3_Output_0,
                [1] = self.f_box_Random_3_Output_1,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1444835322");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_EntityStatusListener_14 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1449571862");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_14_Loaded,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_14();
    l0 = self.box_EntityStatusListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1962591158", "1962591158", "KEY02_005_ChaseSequence", "Start", "box_EntityStatusListener_14.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_6();
    l0 = self.box_EntityStatusListener_15;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|425903053", "425903053", "KEY02_005_ChaseSequence", "box_EntityStatusListener_15.Loaded", "box_UseContextualActionModifier_v3_6.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_11();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|677317058", "677317058", "KEY02_005_ChaseSequence", "box_MultipleOR_2.Out", "box_RandomFloat_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_11_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceVehicleCrash_9();
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|398207536", "398207536", "KEY02_005_ChaseSequence", "box_RandomFloat_v2_11.Out", "box_ForceVehicleCrash_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|2035140670", "2035140670", "KEY02_005_ChaseSequence", "box_OutputOrder_v2_10.Out", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_7();
    l0 = self.box_VehicleDamageListener_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|2055356993", "2055356993", "KEY02_005_ChaseSequence", "box_OutputOrder_v2_10.Out", "box_VehicleDamageListener_v2_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_5();
    l0 = self.box_HealthListener_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|829038097", "829038097", "KEY02_005_ChaseSequence", "box_OutputOrder_v2_10.Out", "box_HealthListener_v6_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_7_MajorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_7;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|975606875", "975606875", "KEY02_005_ChaseSequence", "box_VehicleDamageListener_v2_7.MajorDamage", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_7_MinorDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Random_3();
    l0 = self.box_VehicleDamageListener_v2_7;
    l1 = self.box_Random_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1170306966", "1170306966", "KEY02_005_ChaseSequence", "box_VehicleDamageListener_v2_7.MinorDamage", "box_Random_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VehicleDamageListener_v2_7_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_7;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|679764844", "679764844", "KEY02_005_ChaseSequence", "box_VehicleDamageListener_v2_7.OnFire", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_HealthListener_v6_5_Critical()
    local l0, l1;
    l0 = self.box_HealthListener_v6_5;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|454456415", "454456415", "KEY02_005_ChaseSequence", "box_HealthListener_v6_5.Critical", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_HealthListener_v6_5_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_5;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1869385760", "1869385760", "KEY02_005_ChaseSequence", "box_HealthListener_v6_5.Downed", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_HealthListener_v6_5_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_5;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|380510624", "380510624", "KEY02_005_ChaseSequence", "box_HealthListener_v6_5.Killed", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_UseContextualActionModifier_v3_6_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1568591580", "1568591580", "KEY02_005_ChaseSequence", "box_UseContextualActionModifier_v3_6.Disabled", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_3_Output_0()
    local l0, l1;
    l0 = self.box_Random_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|802249697", "802249697", "KEY02_005_ChaseSequence", "box_Random_3.Output", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Random_3_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = self.box_Random_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1783274117", "1783274117", "KEY02_005_ChaseSequence", "box_Random_3.Output", "box_Simple_Node_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1552387396", "1552387396", "KEY02_005_ChaseSequence", "box_Delay_v5_1.TimeElapsed", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_14_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|2039262718", "2039262718", "KEY02_005_ChaseSequence", "box_EntityStatusListener_14.Loaded", "box_EntityStatusListener_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|@DontForceCrash");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.E_ModulateSTP,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|543503978");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_11_Out,
    });
    params = {
        -- Max,
        [0] = 1,
        -- Min,
        [1] = -1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|566627449");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_7()
    local params;
    params = {
        -- Vehicle,
        [0] = self.E_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_5()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.E_Gunner,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1248730387");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_6_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = self.E_ModulateSTP,
    };
    return params;
end;

function export:OnEnter_box_Random_3()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
                [0] = 30,
                [1] = 70,
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Time,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.E_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B30.domino|@KEY02_005_ChaseSequence|1795335769");
    l0:SetConnections({
    });
    params = {
        -- gasPedal,
        [0] = self._sld_Result_box_RandomFloat_v2_11,
        -- steeringWheel,
        [1] = self._sld_Result_box_RandomFloat_v2_11,
        -- vehicle,
        [2] = self.E_Vehicle,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_11 = l0:GetDataOutValue(0);
    self._sld_Result_box_RandomFloat_v2_11 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="E_Gunner" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="E_ModulateSTP" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="E_Vehicle" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="EngineBreakToggle" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="Time" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
