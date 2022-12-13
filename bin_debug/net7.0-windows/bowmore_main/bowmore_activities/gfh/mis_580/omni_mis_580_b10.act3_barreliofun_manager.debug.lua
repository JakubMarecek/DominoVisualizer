LUAC9, -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_580/omni_mis_580_b10.domino
-- User graph: Act3_BarrelIOFun_Manager
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsImpulse.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/Spawner_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015326172672482.ark.fcb]], "CEntityArchetypeRes");
    end;
end;

function export:ResetLocalGlobals()
    Globals.OMNI_MIS_580_B10 = nil;
    Globals.OMNI_MIS_580_B10 = {
        eBLOGALCarB10 = nil,
        eBLOGALHurkB10 = nil,
        bReload = false,
        bComeOnMan = false,
        eTest = nil,
        ePlayer2CarID = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act3_BarrelIOFun_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Throw_me_a_Barrel",
            },
        },
        controlInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
            },
        },
        controlInCount = 3,
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Act3_BarrelIOFun_Manager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager";
    self.eBarrelSpawnPosition = nil;
    self.eDirectionEntityBarrel = nil;
    self.eTempBarrelID = nil;
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|177675434");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|194771777");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_Random_2 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|303020072");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 6,
        },
        dataIn = {
            [1] = 6,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_2_Output_0,
                [1] = self.f_box_Random_2_Output_1,
                [2] = self.f_box_Random_2_Output_2,
                [3] = self.f_box_Random_2_Output_3,
                [4] = self.f_box_Random_2_Output_4,
                [5] = self.f_box_Random_2_Output_5,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|320490049");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_Random_28 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|686139828");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_28_Output_0,
                [1] = self.f_box_Random_28_Output_1,
                [2] = self.f_box_Random_28_Output_2,
                [3] = self.f_box_Random_28_Output_3,
            },
            count = 4,
        },
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|761710641");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_PhysicsModifier_41 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|762162559");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_41_Enabled,
        -- Started,
        [2] = self.f_box_PhysicsModifier_41_Started,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|879040121");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1185104061");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_Random_30 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1524724486");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_30_Output_0,
                [1] = self.f_box_Random_30_Output_1,
                [2] = self.f_box_Random_30_Output_2,
                [3] = self.f_box_Random_30_Output_3,
            },
            count = 4,
        },
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1768484183");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_Random_15 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1989088686");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_15_Output_0,
                [1] = self.f_box_Random_15_Output_1,
                [2] = self.f_box_Random_15_Output_2,
                [3] = self.f_box_Random_15_Output_3,
            },
            count = 4,
        },
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2006609004");
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
    self.box_PhysicsModifier_42 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2020876424");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_42_Enabled,
        -- Started,
        [2] = self.f_box_PhysicsModifier_42_Started,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2077820634");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_PhysicsModifier_43 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2117310953");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_43_Enabled,
        -- Started,
        [2] = self.f_box_PhysicsModifier_43_Started,
    });
end;

function export:Throw_me_a_Barrel()
    local params, l0;
    params = self:OnEnter_box_Random_2();
    l0 = self.box_Random_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|618421878", "618421878", "Act3_BarrelIOFun_Manager", "Throw_me_a_Barrel", "box_Random_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Spawner_v2_29();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1985010778", "1985010778", "Act3_BarrelIOFun_Manager", "box_MultipleOR_11.Out", "box_Spawner_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_8_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1552892862", "1552892862", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_8.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_41();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_PhysicsModifier_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1291825905", "1291825905", "Act3_BarrelIOFun_Manager", "box_Delay_v5_39.TimeElapsed", "box_PhysicsModifier_41.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_Spawner_v2_1_Out()
    local params, l0;
    self:OnExit_box_Spawner_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1015112752", "1015112752", "Act3_BarrelIOFun_Manager", "box_Spawner_v2_1.Out", "box_Delay_v5_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Spawner_v2_31_Out()
    local params, l0;
    self:OnExit_box_Spawner_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1406696047", "1406696047", "Act3_BarrelIOFun_Manager", "box_Spawner_v2_31.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Random_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_3();
    l0 = self.box_Random_2;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|945163161", "945163161", "Act3_BarrelIOFun_Manager", "box_Random_2.Output", "box_SetEntity_v2_3.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_5();
    l0 = self.box_Random_2;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1582189728", "1582189728", "Act3_BarrelIOFun_Manager", "box_Random_2.Output", "box_SetEntity_v2_5.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_2_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_4();
    l0 = self.box_Random_2;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|535501214", "535501214", "Act3_BarrelIOFun_Manager", "box_Random_2.Output", "box_SetEntity_v2_4.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_2_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_6();
    l0 = self.box_Random_2;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1711171426", "1711171426", "Act3_BarrelIOFun_Manager", "box_Random_2.Output", "box_SetEntity_v2_6.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_2_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_8();
    l0 = self.box_Random_2;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1907937270", "1907937270", "Act3_BarrelIOFun_Manager", "box_Random_2.Output", "box_SetEntity_v2_8.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_2_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_9();
    l0 = self.box_Random_2;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1697157673", "1697157673", "Act3_BarrelIOFun_Manager", "box_Random_2.Output", "box_SetEntity_v2_9.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_36();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|600872172", "600872172", "Act3_BarrelIOFun_Manager", "box_MultipleOR_37.Out", "box_RandomFloat_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_19_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1215144503", "1215144503", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_19.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetEntity_v2_26_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1543034318", "1543034318", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_26.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_22_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1823714567", "1823714567", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_22.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_4_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1981542989", "1981542989", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_4.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_28_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_21();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|500632811", "500632811", "Act3_BarrelIOFun_Manager", "box_Random_28.Output", "box_SetEntity_v2_21.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_28_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_20();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|585001980", "585001980", "Act3_BarrelIOFun_Manager", "box_Random_28.Output", "box_SetEntity_v2_20.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_28_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_22();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1236210413", "1236210413", "Act3_BarrelIOFun_Manager", "box_Random_28.Output", "box_SetEntity_v2_22.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_28_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_23();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2060508734", "2060508734", "Act3_BarrelIOFun_Manager", "box_Random_28.Output", "box_SetEntity_v2_23.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_20_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1687810049", "1687810049", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_20.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_17_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|96264463", "96264463", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_17.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_25_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1877821186", "1877821186", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_25.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_5_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1664077716", "1664077716", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_5.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Spawner_v2_1();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|973555695", "973555695", "Act3_BarrelIOFun_Manager", "box_MultipleOR_7.Out", "box_Spawner_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_41_Enabled()
    local params, l0;
    params = self:OnEnter_box_PhysicsModifier_41();
    l0 = self.box_PhysicsModifier_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|961667786", "961667786", "Act3_BarrelIOFun_Manager", "box_PhysicsModifier_41.Enabled", "box_PhysicsModifier_41.StartPhysics", l0:GetLuaBox(), l0:GetLuaBox());
    -- StartPhysics
    l0:Exec(2, params);
end;

function export:f_box_PhysicsModifier_41_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Random_28();
    l0 = self.box_PhysicsModifier_41;
    l1 = self.box_Random_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1755535444", "1755535444", "Act3_BarrelIOFun_Manager", "box_PhysicsModifier_41.Started", "box_Random_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_42();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_PhysicsModifier_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|495386977", "495386977", "Act3_BarrelIOFun_Manager", "box_Delay_v5_38.TimeElapsed", "box_PhysicsModifier_42.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_24_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|554635860", "554635860", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_24.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_23_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|933867144", "933867144", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_23.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Spawner_v2_31();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1834676519", "1834676519", "Act3_BarrelIOFun_Manager", "box_MultipleOR_10.Out", "box_Spawner_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_3_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1532238569", "1532238569", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_3.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RandomFloat_v2_36_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_32();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1985537099", "1985537099", "Act3_BarrelIOFun_Manager", "box_RandomFloat_v2_36.Out", "box_PhysicsImpulse_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_27_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|219848992", "219848992", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_27.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetEntity_v2_6_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1548373199", "1548373199", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_6.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_30_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_25();
    l0 = self.box_Random_30;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1159673592", "1159673592", "Act3_BarrelIOFun_Manager", "box_Random_30.Output", "box_SetEntity_v2_25.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_30_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_24();
    l0 = self.box_Random_30;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1227625851", "1227625851", "Act3_BarrelIOFun_Manager", "box_Random_30.Output", "box_SetEntity_v2_24.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_30_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_26();
    l0 = self.box_Random_30;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|105894145", "105894145", "Act3_BarrelIOFun_Manager", "box_Random_30.Output", "box_SetEntity_v2_26.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_30_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_27();
    l0 = self.box_Random_30;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1475927044", "1475927044", "Act3_BarrelIOFun_Manager", "box_Random_30.Output", "box_SetEntity_v2_27.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_43();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_PhysicsModifier_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1062512892", "1062512892", "Act3_BarrelIOFun_Manager", "box_Delay_v5_40.TimeElapsed", "box_PhysicsModifier_43.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_16_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|629653285", "629653285", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_16.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RandomFloat_v2_14_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_12();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1443418651", "1443418651", "Act3_BarrelIOFun_Manager", "box_RandomFloat_v2_14.Out", "box_PhysicsImpulse_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Spawner_v2_29_Out()
    local params, l0;
    self:OnExit_box_Spawner_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1947288085", "1947288085", "Act3_BarrelIOFun_Manager", "box_Spawner_v2_29.Out", "box_Delay_v5_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_21_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1552073644", "1552073644", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_21.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_9_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2070431821", "2070431821", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_9.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RandomFloat_v2_34_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsImpulse_33();
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1577152803", "1577152803", "Act3_BarrelIOFun_Manager", "box_RandomFloat_v2_34.Out", "box_PhysicsImpulse_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_15_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_16();
    l0 = self.box_Random_15;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|868876376", "868876376", "Act3_BarrelIOFun_Manager", "box_Random_15.Output", "box_SetEntity_v2_16.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_15_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_17();
    l0 = self.box_Random_15;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1004780894", "1004780894", "Act3_BarrelIOFun_Manager", "box_Random_15.Output", "box_SetEntity_v2_17.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_15_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_18();
    l0 = self.box_Random_15;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2142929510", "2142929510", "Act3_BarrelIOFun_Manager", "box_Random_15.Output", "box_SetEntity_v2_18.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_15_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_19();
    l0 = self.box_Random_15;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1604453978", "1604453978", "Act3_BarrelIOFun_Manager", "box_Random_15.Output", "box_SetEntity_v2_19.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_14();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|405647692", "405647692", "Act3_BarrelIOFun_Manager", "box_MultipleOR_13.Out", "box_RandomFloat_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_42_Enabled()
    local params, l0;
    params = self:OnEnter_box_PhysicsModifier_42();
    l0 = self.box_PhysicsModifier_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1515234712", "1515234712", "Act3_BarrelIOFun_Manager", "box_PhysicsModifier_42.Enabled", "box_PhysicsModifier_42.StartPhysics", l0:GetLuaBox(), l0:GetLuaBox());
    -- StartPhysics
    l0:Exec(2, params);
end;

function export:f_box_PhysicsModifier_42_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Random_15();
    l0 = self.box_PhysicsModifier_42;
    l1 = self.box_Random_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|274015398", "274015398", "Act3_BarrelIOFun_Manager", "box_PhysicsModifier_42.Started", "box_Random_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_34();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2060658608", "2060658608", "Act3_BarrelIOFun_Manager", "box_MultipleOR_35.Out", "box_RandomFloat_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_18_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1229158256", "1229158256", "Act3_BarrelIOFun_Manager", "box_SetEntity_v2_18.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PhysicsModifier_43_Enabled()
    local params, l0;
    params = self:OnEnter_box_PhysicsModifier_43();
    l0 = self.box_PhysicsModifier_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1843553524", "1843553524", "Act3_BarrelIOFun_Manager", "box_PhysicsModifier_43.Enabled", "box_PhysicsModifier_43.StartPhysics", l0:GetLuaBox(), l0:GetLuaBox());
    -- StartPhysics
    l0:Exec(2, params);
end;

function export:f_box_PhysicsModifier_43_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Random_30();
    l0 = self.box_PhysicsModifier_43;
    l1 = self.box_Random_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|834218493", "834218493", "Act3_BarrelIOFun_Manager", "box_PhysicsModifier_43.Started", "box_Random_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_PhysicsImpulse_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|94898602");
    l0:SetConnections({
    });
    params = {
        -- AngularAmplitude,
        [0] = 0,
        -- DirectionAmplitude,
        [2] = self._sld_Result_box_RandomFloat_v2_34,
        -- DirectionEntityID,
        [3] = self.eDirectionEntityBarrel,
        -- targets,
        [5] = self.eTempBarrelID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|183674559");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_8_Out,
    });
    params = {
        -- Entity,
        [0] = "2108294537068682884",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|238600396");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_Spawner_v2_1_Error,
        -- Out,
        [1] = self.f_box_Spawner_v2_1_Out,
    });
    params = {
        -- archetype,
        [0] = "9015326172672482",
        -- pitch,
        [1] = 0,
        -- roll,
        [2] = 0,
        -- target,
        [3] = self.eBarrelSpawnPosition,
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|248777274");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_Spawner_v2_31_Error,
        -- Out,
        [1] = self.f_box_Spawner_v2_31_Out,
    });
    params = {
        -- archetype,
        [0] = "9015326172672482",
        -- pitch,
        [1] = 0,
        -- roll,
        [2] = 0,
        -- target,
        [3] = self.eBarrelSpawnPosition,
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_Random_2()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 6,
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|344662472");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_19_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307005895614072",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|497983400");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_26_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307254615744168",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|546644645");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_22_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307222760005272",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|613624366");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_4_Out,
    });
    params = {
        -- Entity,
        [0] = "2108294534669540988",
    };
    return params;
end;

function export:OnEnter_box_Random_28()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|723771311");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_20_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307216120422036",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|733387846");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_17_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307004972867184",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|758495655");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_25_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307248022298272",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|761255877");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_5_Out,
    });
    params = {
        -- Entity,
        [0] = "2108294533260254840",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_41()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eTempBarrelID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1029798344");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_24_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307253716065956",
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1074550274");
    l0:SetConnections({
    });
    params = {
        -- AngularAmplitude,
        [0] = 0,
        -- DirectionAmplitude,
        [2] = self._sld_Result_box_RandomFloat_v2_36,
        -- DirectionEntityID,
        [3] = self.eDirectionEntityBarrel,
        -- targets,
        [5] = self.eTempBarrelID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1093791918");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_23_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307229162610332",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1269884847");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_3_Out,
    });
    params = {
        -- Entity,
        [0] = "2108294531217628788",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1303980405");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_36_Out,
    });
    params = {
        -- Max,
        [0] = 1000,
        -- Min,
        [1] = 500,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1348301323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_27_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307255358135980",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1518525354");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_6_Out,
    });
    params = {
        -- Entity,
        [0] = "2108294535665688192",
    };
    return params;
end;

function export:OnEnter_box_Random_30()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1641084228");
    l0:SetConnections({
    });
    params = {
        -- AngularAmplitude,
        [0] = 0,
        -- DirectionAmplitude,
        [2] = self._sld_Result_box_RandomFloat_v2_14,
        -- DirectionEntityID,
        [3] = self.eDirectionEntityBarrel,
        -- targets,
        [5] = self.eTempBarrelID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1773153540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_16_Out,
    });
    params = {
        -- Entity,
        [0] = "2108306996282269292",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1801056491");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_14_Out,
    });
    params = {
        -- Max,
        [0] = 1000,
        -- Min,
        [1] = 500,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1804722750");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_Spawner_v2_29_Error,
        -- Out,
        [1] = self.f_box_Spawner_v2_29_Out,
    });
    params = {
        -- archetype,
        [0] = "9015326172672482",
        -- pitch,
        [1] = 0,
        -- roll,
        [2] = 0,
        -- target,
        [3] = self.eBarrelSpawnPosition,
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1864375237");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_21_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307212899196560",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1935510012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_9_Out,
    });
    params = {
        -- Entity,
        [0] = "2108294540778544776",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|1961019320");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_34_Out,
    });
    params = {
        -- Max,
        [0] = 1000,
        -- Min,
        [1] = 500,
    };
    return params;
end;

function export:OnEnter_box_Random_15()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_42()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eTempBarrelID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act3_BarrelIOFun_Manager|2080081015");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_18_Out,
    });
    params = {
        -- Entity,
        [0] = "2108307005279051380",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_43()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eTempBarrelID,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBarrelSpawnPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Spawner_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.eTempBarrelID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_Spawner_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.eTempBarrelID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetEntity_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBarrelSpawnPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBarrelSpawnPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBarrelSpawnPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_36 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBarrelSpawnPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_14 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Spawner_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.eTempBarrelID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetEntity_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBarrelSpawnPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_34 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDirectionEntityBarrel = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Throw_me_a_Barrel" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
