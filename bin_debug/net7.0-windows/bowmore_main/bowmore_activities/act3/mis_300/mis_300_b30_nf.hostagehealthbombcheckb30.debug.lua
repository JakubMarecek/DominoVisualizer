LUAC �  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b30_nf.domino
-- User graph: HostageHealthBombCheckB30
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eIsHostage2" Type="Nomad|entity{}" />
    <DataIn Name="eIsHostage1" Type="Nomad|entity{}" />
    <DataIn Name="eIsHostage3" Type="Nomad|entity{}" />
    <DataIn Name="eHostStp1" Type="Nomad|entity{}" />
    <DataIn Name="eHostStp2" Type="Nomad|entity{}" />
    <DataIn Name="eHostStp3" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B30_nf.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3717039902.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1433330249.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B30_nf = nil;
    Globals.MIS_300_B30_nf = {
        eSwitch1 = nil,
        eSwitch2 = nil,
        eSwitch3 = nil,
        eSwitch4 = nil,
        eSwitchInteracted = nil,
        bBombDefused = false,
        gPlayerGroup = nil,
        bTooMuchDead = false,
        bTimerSuccess = true,
        ePlayer = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B30_nf.HostageHealthBombCheckB30.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "ReleaseHostages",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostReleased",
                delayed = false,
            },
            [1] = {
                name = "TooMuchDead",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eHostStp1",
                type = "entity",
            },
            [1] = {
                name = "eHostStp2",
                type = "entity",
            },
            [2] = {
                name = "eHostStp3",
                type = "entity",
            },
            [3] = {
                name = "eIsHostage1",
                type = "entity",
            },
            [4] = {
                name = "eIsHostage2",
                type = "entity",
            },
            [5] = {
                name = "eIsHostage3",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
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
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
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
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "HostageHealthBombCheckB30";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30";
    self.TooMuchDead = DummyFunction;
    self.HostReleased = DummyFunction;
    self.box_Brick_Hostage_Setup_v2_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|76258860");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_13_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_13_NextHostage,
    });
    self.box_RequestPhoneCall_v2_16 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|164132015");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_16_Completed,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|362894297");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|626674817");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|847039458");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Brick_Hostage_Setup_v2_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1040981362");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_12_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_12_NextHostage,
    });
    self.box_RequestPhoneCall_v2_17 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1098162508");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1151415272");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_Brick_Hostage_Setup_v2_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1481242085");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_10_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_10_NextHostage,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1562313656");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1585249415");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_GroupSizeListener_v6_11 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1758362675");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_11_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_11_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_11_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_11_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_11_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_11_MemberSpawned,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|961936544", "961936544", "HostageHealthBombCheckB30", "In", "box_OutputOrder_v2_14.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:ReleaseHostages()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|748238580", "748238580", "HostageHealthBombCheckB30", "ReleaseHostages", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_13_HostageReleased()
    local l0;
    l0 = self.box_Brick_Hostage_Setup_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1963841015", "1963841015", "HostageHealthBombCheckB30", "box_Brick_Hostage_Setup_v2_13.HostageReleased", "HostReleased", l0:GetLuaBox(), self);
    self:HostReleased();
end;

function export:f_box_Brick_Hostage_Setup_v2_13_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_Brick_Hostage_Setup_v2_13;
    l1 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|267737608", "267737608", "HostageHealthBombCheckB30", "box_Brick_Hostage_Setup_v2_13.NextHostage", "box_EntityStatusListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_16_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_17();
    l0 = self.box_RequestPhoneCall_v2_16;
    l1 = self.box_RequestPhoneCall_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|963396733", "963396733", "HostageHealthBombCheckB30", "box_RequestPhoneCall_v2_16.Completed", "box_RequestPhoneCall_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|29424045", "29424045", "HostageHealthBombCheckB30", "box_EntityStatusListener_7.Loaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_16();
    l0 = self.box_RequestPhoneCall_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|750045866", "750045866", "HostageHealthBombCheckB30", "box_OutputOrder_v2_5.Out", "box_RequestPhoneCall_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_10();
    l0 = self.box_Brick_Hostage_Setup_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|103666408", "103666408", "HostageHealthBombCheckB30", "box_OutputOrder_v2_5.Out", "box_Brick_Hostage_Setup_v2_10.ForceRelease", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceRelease
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1872551487", "1872551487", "HostageHealthBombCheckB30", "box_EntityStatusListener_1.Loaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_3_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1906540500", "1906540500", "HostageHealthBombCheckB30", "box_Compare_Integers_3.A_ge_B", "box_SetBoolean_v2_2.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_3_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|862423256", "862423256", "HostageHealthBombCheckB30", "box_Compare_Integers_3.A_lt_B", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_3();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1080294331", "1080294331", "HostageHealthBombCheckB30", "box_MultipleOR_4.Out", "box_Compare_Integers_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_12_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_13();
    l0 = self.box_Brick_Hostage_Setup_v2_12;
    l1 = self.box_Brick_Hostage_Setup_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|976481422", "976481422", "HostageHealthBombCheckB30", "box_Brick_Hostage_Setup_v2_12.HostageReleased", "box_Brick_Hostage_Setup_v2_13.ForceRelease", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceRelease
    l1:Exec(0, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_12_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_Brick_Hostage_Setup_v2_12;
    l1 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|2077863117", "2077863117", "HostageHealthBombCheckB30", "box_Brick_Hostage_Setup_v2_12.NextHostage", "box_EntityStatusListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|703972208", "703972208", "HostageHealthBombCheckB30", "box_EntityStatusListener_9.Loaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|888970609", "888970609", "HostageHealthBombCheckB30", "box_OutputOrder_v2_15.Out", "box_SetBoolean_v2_2.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|969436877", "969436877", "HostageHealthBombCheckB30", "box_OutputOrder_v2_15.Out", "TooMuchDead", clone:GetLuaBox(), self);
    self:TooMuchDead();
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_10();
    l0 = self.box_Brick_Hostage_Setup_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1671889596", "1671889596", "HostageHealthBombCheckB30", "box_OutputOrder_v2_14.Out", "box_Brick_Hostage_Setup_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_12();
    l0 = self.box_Brick_Hostage_Setup_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1021561808", "1021561808", "HostageHealthBombCheckB30", "box_OutputOrder_v2_14.Out", "box_Brick_Hostage_Setup_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_13();
    l0 = self.box_Brick_Hostage_Setup_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|748793836", "748793836", "HostageHealthBombCheckB30", "box_OutputOrder_v2_14.Out", "box_Brick_Hostage_Setup_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_10_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_12();
    l0 = self.box_Brick_Hostage_Setup_v2_10;
    l1 = self.box_Brick_Hostage_Setup_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1910773261", "1910773261", "HostageHealthBombCheckB30", "box_Brick_Hostage_Setup_v2_10.HostageReleased", "box_Brick_Hostage_Setup_v2_12.ForceRelease", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceRelease
    l1:Exec(0, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_10_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_Brick_Hostage_Setup_v2_10;
    l1 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|684490488", "684490488", "HostageHealthBombCheckB30", "box_Brick_Hostage_Setup_v2_10.NextHostage", "box_EntityStatusListener_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1650290925", "1650290925", "HostageHealthBombCheckB30", "box_MultipleOR_8.Out", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_11();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_GroupSizeListener_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1105672470", "1105672470", "HostageHealthBombCheckB30", "box_Delay_v5_6.TimeElapsed", "box_GroupSizeListener_v6_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_11_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_11;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|679364443", "679364443", "HostageHealthBombCheckB30", "box_GroupSizeListener_v6_11.Enabled", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_11_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_11;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1916356210", "1916356210", "HostageHealthBombCheckB30", "box_GroupSizeListener_v6_11.MemberAdded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_11_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_11;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|986407884", "986407884", "HostageHealthBombCheckB30", "box_GroupSizeListener_v6_11.MemberRemoved", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetBoolean_v2_2_Out()
    self:OnExit_box_SetBoolean_v2_2_Out();
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_13()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage3,
        -- STP_Tied,
        [1] = self.eHostStp3,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_16()
    local params;
    DrawTextToScreen("Comment: So what do you think", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: So what do you think");
    params = {
        -- Delay,
        [2] = 2,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1433330249",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eIsHostage1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|495841182");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eIsHostage3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|683251403");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_3_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_3_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_12()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage2,
        -- STP_Tied,
        [1] = self.eHostStp2,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_17()
    local params;
    DrawTextToScreen("Comment: Not yet", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Not yet");
    params = {
        -- Delay,
        [2] = 2,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3717039902",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eIsHostage2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1240342500");
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

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|1390508179");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_10()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage1,
        -- STP_Tied,
        [1] = self.eHostStp1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#F40F914A",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@HostageHealthBombCheckB30|2091054500");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B30_nf.bTooMuchDead = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:TooMuchDead()
    
end;
function export:HostReleased()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="ReleaseHostages" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="HostReleased" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="TooMuchDead" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eHostStp1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHostStp2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHostStp3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage3" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
