LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_020/key02_020_b10.domino
-- User graph: _KEY02_020_BarrelSpawner
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
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetVehicleSpeed.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsImpulse.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetValueNil.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Spawner_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015257210583630.ark.fcb]], "CEntityArchetypeRes");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY02_020_B10 = nil;
    Globals.KEY02_020_B10 = {
        Global_Trailer = nil,
        Global_Strategic = nil,
        Global_BarrelTarget = nil,
        Global_Semi = nil,
        Global_Driver = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10._KEY02_020_BarrelSpawner.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GetVehicleSpeed.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "vehicleId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "currentSpeed",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/PhysicsImpulse.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AngularAmplitude",
                type = "float",
            },
            [1] = {
                name = "AngularVector",
                type = "list",
            },
            [2] = {
                name = "DirectionAmplitude",
                type = "float",
            },
            [3] = {
                name = "DirectionEntityID",
                type = "entity",
            },
            [4] = {
                name = "DirectionVector",
                type = "list",
            },
            [5] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
            [0] = {
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetValueNil.lua")] = {
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
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "bool",
                type = "bool",
            },
            [2] = {
                name = "ent",
                type = "entity",
            },
            [3] = {
                name = "float",
                type = "float",
            },
            [4] = {
                name = "group",
                type = "group",
            },
            [5] = {
                name = "int",
                type = "int",
            },
            [6] = {
                name = "oasis",
                type = "oasis",
            },
            [7] = {
                name = "sound",
                type = "Sound",
            },
            [8] = {
                name = "str",
                type = "string",
            },
        },
        dataOutCount = 9,
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
    metadataTable[GetPathID("Domino/System/Spawner_v2.lua")] = {
        stateless = true,
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "archetype",
                type = "archetype",
            },
            [1] = {
                name = "pitch",
                type = "float",
            },
            [2] = {
                name = "roll",
                type = "float",
            },
            [3] = {
                name = "target",
                type = "entity",
            },
            [4] = {
                name = "xPos",
                type = "float",
            },
            [5] = {
                name = "yaw",
                type = "float",
            },
            [6] = {
                name = "yPos",
                type = "float",
            },
            [7] = {
                name = "zPos",
                type = "float",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
            [1] = {
                name = "spawned",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
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
    self._name = "_KEY02_020_BarrelSpawner";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner";
    self.var_Strategic = nil;
    self.var_Barrel = nil;
    self.var_Trailer = nil;
    self.var_Target = nil;
    self.box_EntityStatusListener_25 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|96705891");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_25_Loaded,
    });
    self.box_Bind_v4_23 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|120666888");
    l0:SetConnections({
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|309347821");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|371525951");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_Bind_v4_6 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|636645185");
    l0:SetConnections({
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|710225437");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|819880017");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|956389578");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_Gate_v3_18 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1160114793");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_18_Out,
    });
    self.box_Bind_v4_16 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1242656202");
    l0:SetConnections({
    });
    self.box_Bind_v4_58 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1533667621");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_58_UnBound,
    });
    self.box_Gate_v3_20 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1865077877");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_20_Out,
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1991389504");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|807899377", "807899377", "_KEY02_020_BarrelSpawner", "Disable", "box_Simple_Node_62.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_16();
    l0 = self.box_Bind_v4_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1830759646", "1830759646", "_KEY02_020_BarrelSpawner", "box_Simple_Node_62.Out", "box_Bind_v4_16.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
    params = self:OnEnter_box_GetLocalPlayer_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1911697691", "1911697691", "_KEY02_020_BarrelSpawner", "box_Simple_Node_62.Out", "box_GetLocalPlayer_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Bind_v4_6();
    l0 = self.box_Bind_v4_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1494211347", "1494211347", "_KEY02_020_BarrelSpawner", "box_Simple_Node_62.Out", "box_Bind_v4_6.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_18();
    l0 = self.box_Gate_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1170778043", "1170778043", "_KEY02_020_BarrelSpawner", "box_Simple_Node_62.Out", "box_Gate_v3_18.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1323468156", "1323468156", "_KEY02_020_BarrelSpawner", "box_Simple_Node_62.Out", "box_Delay_v5_27.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|497221442", "497221442", "_KEY02_020_BarrelSpawner", "box_Simple_Node_62.Out", "box_Delay_v5_3.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|898042516", "898042516", "_KEY02_020_BarrelSpawner", "box_Simple_Node_62.Out", "box_Gate_v3_20.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|192258726", "192258726", "_KEY02_020_BarrelSpawner", "box_Simple_Node_10.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_25_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Spawner_v2_1();
    l0 = self.box_EntityStatusListener_25;
    l1 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|130609432", "130609432", "_KEY02_020_BarrelSpawner", "box_EntityStatusListener_25.Loaded", "box_Spawner_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1192122392", "1192122392", "_KEY02_020_BarrelSpawner", "box_MultipleOR_32.Out", "box_Delay_v5_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_33();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|934726350", "934726350", "_KEY02_020_BarrelSpawner", "box_Delay_v5_34.TimeElapsed", "box_StaticBreakableBreaker_33.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_22_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_23();
    l0 = self.box_Bind_v4_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|275060483", "275060483", "_KEY02_020_BarrelSpawner", "box_GetLocalPlayer_v2_22.Out", "box_Bind_v4_23.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_16();
    l0 = self.box_Bind_v4_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|176950175", "176950175", "_KEY02_020_BarrelSpawner", "box_OutputOrder_v2_24.Out", "box_Bind_v4_16.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1571024442", "1571024442", "_KEY02_020_BarrelSpawner", "box_OutputOrder_v2_24.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Floats_28_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetValueNil_29();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1983559849", "1983559849", "_KEY02_020_BarrelSpawner", "box_Compare_Floats_28.A_ge_B", "box_SetValueNil_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_28_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_18();
    l0 = self.box_Gate_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|126561649", "126561649", "_KEY02_020_BarrelSpawner", "box_Compare_Floats_28.A_lt_B", "box_Gate_v3_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetVehicleSpeed_31();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|870066054", "870066054", "_KEY02_020_BarrelSpawner", "box_Delay_v5_3.TimeElapsed", "box_GetVehicleSpeed_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1699888082", "1699888082", "_KEY02_020_BarrelSpawner", "box_Simple_Node_30.Out", "box_Simple_Node_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|437427374", "437427374", "_KEY02_020_BarrelSpawner", "box_MultipleOR_4.Out", "box_Gate_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_58();
    l0 = self.box_Delay_v5_27;
    l1 = self.box_Bind_v4_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1811762446", "1811762446", "_KEY02_020_BarrelSpawner", "box_Delay_v5_27.TimeElapsed", "box_Bind_v4_58.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_18_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_18;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1914524219", "1914524219", "_KEY02_020_BarrelSpawner", "box_Gate_v3_18.Out", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetValueNil_29_Out()
    local params, l0;
    self:OnExit_box_SetValueNil_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|823065924", "823065924", "_KEY02_020_BarrelSpawner", "box_SetValueNil_29.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_58_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsImpulse_11();
    l0 = self.box_Bind_v4_58;
    l1 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|524316118", "524316118", "_KEY02_020_BarrelSpawner", "box_Bind_v4_58.UnBound", "box_PhysicsImpulse_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Spawner_v2_1_Error()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1275238764", "1275238764", "_KEY02_020_BarrelSpawner", "box_Spawner_v2_1.Error", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Spawner_v2_1_Out()
    local params, l0;
    self:OnExit_box_Spawner_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1646050293", "1646050293", "_KEY02_020_BarrelSpawner", "box_Spawner_v2_1.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1452555321", "1452555321", "_KEY02_020_BarrelSpawner", "box_Simple_Node_21.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_25();
    l0 = self.box_Gate_v3_20;
    l1 = self.box_EntityStatusListener_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|2088754394", "2088754394", "_KEY02_020_BarrelSpawner", "box_Gate_v3_20.Out", "box_EntityStatusListener_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|541677905", "541677905", "_KEY02_020_BarrelSpawner", "box_OutputOrder_v2_35.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1753155680", "1753155680", "_KEY02_020_BarrelSpawner", "box_OutputOrder_v2_35.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_EntityStatusListener_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|2011704547", "2011704547", "_KEY02_020_BarrelSpawner", "box_EntityStatusListener_17.Loaded", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsImpulse_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1158121516", "1158121516", "_KEY02_020_BarrelSpawner", "box_PhysicsImpulse_11.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetVehicleSpeed_31_Out()
    local params, l0;
    self:OnExit_box_GetVehicleSpeed_31_Out();
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_28();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1376162530", "1376162530", "_KEY02_020_BarrelSpawner", "box_GetVehicleSpeed_31.Out", "box_Compare_Floats_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|@n_DisableBarrels");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|@n_NextBarrel");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.var_Trailer,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = l0:GetDataOutValue(0),
        -- EntityB,
        [2] = Globals.KEY02_020_B10.Global_Strategic,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|406102252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|410977403");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|423604538");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_28_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_28_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_currentSpeed_box_GetVehicleSpeed_31,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|526015670");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.var_Barrel,
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|540165501");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_6()
    local params;
    params = {
        -- BoneName,
        [0] = "GUNNER_POSITION_98",
        -- EntityA,
        [1] = self.var_Trailer,
        -- EntityB,
        [2] = self.var_Strategic,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|739032981");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_18()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_16()
    local params;
    params = {
        -- EntityA,
        [1] = self.var_Strategic,
        -- EntityB,
        [2] = self.var_Barrel,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1477024539");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_58()
    local params;
    params = {
        -- EntityA,
        [1] = self.var_Strategic,
        -- EntityB,
        [2] = self.var_Barrel,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1722610842");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_Spawner_v2_1_Error,
        -- Out,
        [1] = self.f_box_Spawner_v2_1_Out,
    });
    params = {
        -- archetype,
        [0] = "9015257210583630",
        -- pitch,
        [1] = 90,
        -- roll,
        [2] = 0,
        -- target,
        [3] = self.var_Strategic,
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = -1.3,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1851496812");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_20()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|1918633624");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.var_Barrel,
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|2025795350");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PhysicsImpulse_11_Out,
    });
    params = {
        -- AngularAmplitude,
        [0] = 0,
        -- DirectionAmplitude,
        [2] = 75,
        -- DirectionEntityID,
        [3] = self.var_Target,
        -- targets,
        [5] = self.var_Barrel,
    };
    return params;
end;

function export:OnEnter_box_GetVehicleSpeed_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetVehicleSpeed_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_BarrelSpawner|2092614026");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetVehicleSpeed_31_Out,
    });
    params = {
        -- vehicleId,
        [0] = self.var_Trailer,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_22_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_Bind_v4_23;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetValueNil_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    self.var_Barrel = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Spawner_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.var_Barrel = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetVehicleSpeed_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    self._sld_currentSpeed_box_GetVehicleSpeed_31 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
