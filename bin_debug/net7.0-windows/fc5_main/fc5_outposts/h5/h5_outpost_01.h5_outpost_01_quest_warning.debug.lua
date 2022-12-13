LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h5/h5_outpost_01.domino
-- User graph: H5_Outpost_01_QUEST_Warning
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Vehicle" Type="Nomad|entity{}" />
    <DataIn Name="WarningDistance" Type="Core|float" />
    <DataIn Name="FailDistance" Type="Core|float" />
    <DataIn Name="use2d" Type="Core|bool" />
    <DataIn Name="isCoop" Type="Core|bool" />
    <DataIn Name="Host" Type="Nomad|entity{}" />
    <DataIn Name="Client" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
        
        -- Load resources
        cboxRes:LoadResource([[872277581.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.H5_Outpost_01 = nil;
    Globals.H5_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_QUEST_Warning.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "EnableTrucks",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FailDistanceEntered",
                delayed = false,
            },
            [1] = {
                name = "WarningDistanceEntered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Client",
                type = "entity",
            },
            [1] = {
                name = "FailDistance",
                type = "float",
            },
            [2] = {
                name = "Host",
                type = "entity",
            },
            [3] = {
                name = "isCoop",
                type = "bool",
            },
            [4] = {
                name = "use2d",
                type = "bool",
            },
            [5] = {
                name = "Vehicle",
                type = "entity",
            },
            [6] = {
                name = "WarningDistance",
                type = "float",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "pawns",
                type = "group",
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
    self._name = "H5_Outpost_01_QUEST_Warning";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning";
    self.WarningDistanceEntered = DummyFunction;
    self.FailDistanceEntered = DummyFunction;
    self.eCurrentPlayerWarn = nil;
    self.eCurrentPlayerFail = nil;
    self.gPlayers = nil;
    self.box_DisplayCustomUIMsg_v4_11 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|696414826");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_9 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|929587898");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_9_Started,
    });
    self.box_MultipleAND_v2_1 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1142180136");
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
        [0] = self.f_box_MultipleAND_v2_1_Out,
    });
    self.box_Gate_v3_3 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1221484590");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_3_Out,
    });
    self.box_ProximityRadiusListener_v3_5 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1247388865");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_5_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_5_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_5_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_5_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_5_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_5_SomeoneNear,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1502175358");
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
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1739134768");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_ProximityRadiusListener_v3_13 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1980847595");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_13_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_13_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_13_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_13_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_13_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_13_SomeoneNear,
    });
    self.box_Gate_v3_14 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|2110452965");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_14_Out,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1710838600", "1710838600", "H5_Outpost_01_QUEST_Warning", "Disable", "box_OutputOrder_v2_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:EnableTrucks()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_7();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|789304233", "789304233", "H5_Outpost_01_QUEST_Warning", "EnableTrucks", "box_GetPlayerGroup_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|333916650", "333916650", "H5_Outpost_01_QUEST_Warning", "box_Simple_Node_22.Out", "box_Gate_v3_3.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1834851986", "1834851986", "H5_Outpost_01_QUEST_Warning", "box_Simple_Node_22.Out", "box_Gate_v3_14.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|117009016", "117009016", "H5_Outpost_01_QUEST_Warning", "box_Simple_Node_21.Out", "box_MultipleAND_v2_1.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1216389680", "1216389680", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_10.Out", "box_Gate_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_17();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1125100946", "1125100946", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_10.Out", "box_SetEntity_v2_17.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_13();
    l0 = self.box_ProximityRadiusListener_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|438242781", "438242781", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_16.Out", "box_ProximityRadiusListener_v3_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_5();
    l0 = self.box_ProximityRadiusListener_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|2070498401", "2070498401", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_16.Out", "box_ProximityRadiusListener_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_17_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1505133315", "1505133315", "H5_Outpost_01_QUEST_Warning", "box_SetEntity_v2_17.Out", "WarningDistanceEntered", clone:GetLuaBox(), self);
    self:WarningDistanceEntered();
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|702079071", "702079071", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_20.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1462665185", "1462665185", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_20.Out", "FailDistanceEntered", clone:GetLuaBox(), self);
    self:FailDistanceEntered();
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|801389196", "801389196", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_20.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_SoundModifier_v2_9;
    l1 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1112721543", "1112721543", "H5_Outpost_01_QUEST_Warning", "box_SoundModifier_v2_9.Started", "box_Gate_v3_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_6_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|150196489", "150196489", "H5_Outpost_01_QUEST_Warning", "box_Compare_Boolean_6.A_is_False", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_6_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|917599233", "917599233", "H5_Outpost_01_QUEST_Warning", "box_Compare_Boolean_6.A_is_True", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_18_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1816226024", "1816226024", "H5_Outpost_01_QUEST_Warning", "box_Compare_Entity_18.Equal", "box_MultipleAND_v2_1.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_1_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1200243758", "1200243758", "H5_Outpost_01_QUEST_Warning", "box_MultipleAND_v2_1.Out", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_11();
    l0 = self.box_Gate_v3_3;
    l1 = self.box_DisplayCustomUIMsg_v4_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1582826653", "1582826653", "H5_Outpost_01_QUEST_Warning", "box_Gate_v3_3.Out", "box_DisplayCustomUIMsg_v4_11.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_5_AllFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_5_AllFar();
    params = self:OnEnter_box_Compare_Boolean_6();
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1242723898", "1242723898", "H5_Outpost_01_QUEST_Warning", "box_ProximityRadiusListener_v3_5.AllFar", "box_Compare_Boolean_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_5_AllNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_5_AllNear();
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|422934363", "422934363", "H5_Outpost_01_QUEST_Warning", "box_ProximityRadiusListener_v3_5.AllNear", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_5_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_5_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_5_SomeoneNear()
    self:OnExit_box_ProximityRadiusListener_v3_5_SomeoneNear();
end;

function export:f_box_GetPlayerGroup_v2_7_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|954292452", "954292452", "H5_Outpost_01_QUEST_Warning", "box_GetPlayerGroup_v2_7.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_13();
    l0 = self.box_ProximityRadiusListener_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1657740604", "1657740604", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_15.Out", "box_ProximityRadiusListener_v3_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_5();
    l0 = self.box_ProximityRadiusListener_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|141293707", "141293707", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_15.Out", "box_ProximityRadiusListener_v3_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_11();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_DisplayCustomUIMsg_v4_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|563236391", "563236391", "H5_Outpost_01_QUEST_Warning", "box_MultipleOR_4.Out", "box_DisplayCustomUIMsg_v4_11.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|911602774", "911602774", "H5_Outpost_01_QUEST_Warning", "box_MultipleOR_2.Out", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_19_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|412043905", "412043905", "H5_Outpost_01_QUEST_Warning", "box_Compare_Entity_19.Equal", "box_MultipleAND_v2_1.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_19();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|273212568", "273212568", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_18();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|973090404", "973090404", "H5_Outpost_01_QUEST_Warning", "box_OutputOrder_v2_8.Out", "box_Compare_Entity_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_13_AllFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_13_AllFar();
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_ProximityRadiusListener_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|293989716", "293989716", "H5_Outpost_01_QUEST_Warning", "box_ProximityRadiusListener_v3_13.AllFar", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_13_AllNear()
    local l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_13_AllNear();
    l0 = self.box_ProximityRadiusListener_v3_13;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|125219639", "125219639", "H5_Outpost_01_QUEST_Warning", "box_ProximityRadiusListener_v3_13.AllNear", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_13_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_13_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_13_SomeoneNear()
    self:OnExit_box_ProximityRadiusListener_v3_13_SomeoneNear();
end;

function export:f_box_Gate_v3_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_Gate_v3_14;
    l1 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|2028241746", "2028241746", "H5_Outpost_01_QUEST_Warning", "box_Gate_v3_14.Out", "box_SoundModifier_v2_9.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|@Close");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|@Reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|164624261");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|591540405");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_11()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD TEMP",
            item = "KOM_HUD_INVASION_INVADED_ESCAPING",
            id = "364228",
        },
        -- pawns,
        [1] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|788800102");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_17_Out,
    });
    params = {
        -- Entity,
        [0] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|792302221");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_9()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "872277581",
        -- SoundType,
        [2] = 20,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|948346734");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_6_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_6_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isCoop,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1089459259");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_18_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.Client,
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_1()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_3()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayers,
        -- farZone,
        [2] = self.FailDistance,
        -- id2,
        [3] = self.Vehicle,
        -- nearZone,
        [4] = self.FailDistance,
        -- use2d,
        [5] = self.use2d,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1345376743");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1407664119");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1838382224");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_19_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.Host,
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Warning|1886947873");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayers,
        -- farZone,
        [2] = self.WarningDistance,
        -- id2,
        [3] = self.Vehicle,
        -- nearZone,
        [4] = self.WarningDistance,
        -- use2d,
        [5] = self.use2d,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_14()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.CurrentWarnedPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_13_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_13;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_13_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_13;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_13_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_13;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_13_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_13;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:WarningDistanceEntered()
    
end;
function export:FailDistanceEntered()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="EnableTrucks" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FailDistanceEntered" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="WarningDistanceEntered" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Client" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="FailDistance" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Host" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="isCoop" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="use2d" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="Vehicle" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="WarningDistance" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="CurrentWarnedPlayer" AnchorDynType="0" DataTypeID="entity" />
	</DatasOut>
</DominoMetadata>
