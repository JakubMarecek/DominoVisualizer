LUAC�f -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b20_nf.domino
-- User graph: HostageLiberationB20
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eHost1" Type="Nomad|entity{}" />
    <DataIn Name="eHost2" Type="Nomad|entity{}" />
    <DataIn Name="eHost3" Type="Nomad|entity{}" />
    <DataIn Name="eHost4" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost1" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost2" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost3" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost4" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost1" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost2" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost3" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost4" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ExtinguishFireWithinRange.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.Free_Hostages_Custom.debug.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B20_nf = nil;
    Globals.MIS_300_B20_nf = {
        bHostage1Save = false,
        bHostage2Save = false,
        bHostage3Save = false,
        bHostageEnoughSaved = false,
        iNumberOfHostages = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageLiberationB20.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "EnoughDead",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eHost1",
                type = "entity",
            },
            [1] = {
                name = "eHost2",
                type = "entity",
            },
            [2] = {
                name = "eHost3",
                type = "entity",
            },
            [3] = {
                name = "eHost4",
                type = "entity",
            },
            [4] = {
                name = "eObjAreaHost1",
                type = "entity",
            },
            [5] = {
                name = "eObjAreaHost2",
                type = "entity",
            },
            [6] = {
                name = "eObjAreaHost3",
                type = "entity",
            },
            [7] = {
                name = "eObjAreaHost4",
                type = "entity",
            },
            [8] = {
                name = "eObjMobileHost1",
                type = "entity",
            },
            [9] = {
                name = "eObjMobileHost2",
                type = "entity",
            },
            [10] = {
                name = "eObjMobileHost3",
                type = "entity",
            },
            [11] = {
                name = "eObjMobileHost4",
                type = "entity",
            },
        },
        dataInCount = 12,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
        stateless = true,
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Extinguish",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.Free_Hostages_Custom.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "EnoughDead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjectives",
                type = "bool",
            },
            [1] = {
                name = "bMinimunHostagesCompletion",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "Hostage_group",
                type = "group",
            },
            [4] = {
                name = "HostagesToSave",
                type = "int",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "HostagesSaved",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "HostageLiberationB20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20";
    self.Success = DummyFunction;
    self.Fail = DummyFunction;
    self.box_Bind_v4_11 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|40532009");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_11_Bound,
    });
    self.box_LookAtTrigger_v2_36 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|312034751");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_36_Disabled,
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_36_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_36_EnterFOV,
    });
    self.box_HealthListener_v6_21 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|330409854");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_21_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_21_Killed,
    });
    self.box_Bind_v4_12 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|414252493");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_12_Bound,
    });
    self.box_Bind_v4_13 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|536009637");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_13_Bound,
    });
    self.box_Free_Hostages_Custom_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.Free_Hostages_Custom.debug.lua");
    l0 = self.box_Free_Hostages_Custom_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Free_Hostages_Custom_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|629958173");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Free_Hostages_Custom_1_Fail,
        -- Started,
        [1] = self.f_box_Free_Hostages_Custom_1_Started,
        -- Success,
        [2] = self.f_box_Free_Hostages_Custom_1_Success,
    });
    self.box_LookAtTrigger_v2_27 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|703553503");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_27_EnterFOV,
    });
    self.box_Bind_v4_14 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|798968094");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_14_Bound,
    });
    self.box_LookAtTrigger_v2_35 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|857601216");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_35_EnterFOV,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1003893882");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_HealthListener_v6_19 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1028465860");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_19_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_19_Killed,
    });
    self.box_HealthListener_v6_20 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1311717379");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_20_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_20_Killed,
    });
    self.box_LookAtTrigger_v2_34 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1672573560");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_34_EnterFOV,
    });
    self.box_HealthListener_v6_22 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1922832946");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_22_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_22_Killed,
    });
    self.box_VehicleDamageListener_v2_29 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2083463133");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_29_Destroyed,
    });
end;

function export:EnoughDead()
    local params, l0;
    params = self:OnEnter_box_Free_Hostages_Custom_1();
    l0 = self.box_Free_Hostages_Custom_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|659737480", "659737480", "HostageLiberationB20", "EnoughDead", "box_Free_Hostages_Custom_1.EnoughDead", self, l0:GetLuaBox());
    -- EnoughDead
    l0:Exec(1, params);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Free_Hostages_Custom_1();
    l0 = self.box_Free_Hostages_Custom_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1407811900", "1407811900", "HostageLiberationB20", "In", "box_Free_Hostages_Custom_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|412962925", "412962925", "HostageLiberationB20", "box_Simple_Node_42.Out", "box_ActivityObjectiveMarkerModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1199907763", "1199907763", "HostageLiberationB20", "box_Simple_Node_43.Out", "box_ActivityObjectiveMarkerModifier_v3_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|514539994", "514539994", "HostageLiberationB20", "box_Simple_Node_44.Out", "box_ActivityObjectiveMarkerModifier_v3_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1334122311", "1334122311", "HostageLiberationB20", "box_Simple_Node_45.Out", "box_ActivityObjectiveMarkerModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_11_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_22();
    l0 = self.box_Bind_v4_11;
    l1 = self.box_HealthListener_v6_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1054376860", "1054376860", "HostageLiberationB20", "box_Bind_v4_11.Bound", "box_HealthListener_v6_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_23_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|917162793", "917162793", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_23.Disabled", "box_ActivityObjectiveMarkerModifier_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_10_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_14();
    l0 = self.box_Bind_v4_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1983886493", "1983886493", "HostageLiberationB20", "box_IsEntityInGroup_10.True", "box_Bind_v4_14.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_IsEntityInGroup_9_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_13();
    l0 = self.box_Bind_v4_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|463935323", "463935323", "HostageLiberationB20", "box_IsEntityInGroup_9.True", "box_Bind_v4_13.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_LookAtTrigger_v2_36_Disabled()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_36;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1423049919", "1423049919", "HostageLiberationB20", "box_LookAtTrigger_v2_36.Disabled", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LookAtTrigger_v2_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_29();
    l0 = self.box_LookAtTrigger_v2_36;
    l1 = self.box_VehicleDamageListener_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1841712416", "1841712416", "HostageLiberationB20", "box_LookAtTrigger_v2_36.Enabled", "box_VehicleDamageListener_v2_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_36_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_26();
    l0 = self.box_LookAtTrigger_v2_36;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|295356706", "295356706", "HostageLiberationB20", "box_LookAtTrigger_v2_36.EnterFOV", "box_ActivityObjectiveMarkerModifier_v3_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15();
    l0 = self.box_HealthListener_v6_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|564736070", "564736070", "HostageLiberationB20", "box_HealthListener_v6_21.Enabled", "box_ActivityObjectiveMarkerModifier_v3_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_21_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_HealthListener_v6_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|293269897", "293269897", "HostageLiberationB20", "box_HealthListener_v6_21.Killed", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|529944057", "529944057", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_25.Disabled", "box_ActivityObjectiveMarkerModifier_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_12_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_21();
    l0 = self.box_Bind_v4_12;
    l1 = self.box_HealthListener_v6_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2042775318", "2042775318", "HostageLiberationB20", "box_Bind_v4_12.Bound", "box_HealthListener_v6_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1421493408", "1421493408", "HostageLiberationB20", "box_OutputOrder_v2_37.Out", "box_ActivityObjectiveMarkerModifier_v3_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1819974447", "1819974447", "HostageLiberationB20", "box_OutputOrder_v2_37.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_13_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_20();
    l0 = self.box_Bind_v4_13;
    l1 = self.box_HealthListener_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|457443159", "457443159", "HostageLiberationB20", "box_Bind_v4_13.Bound", "box_HealthListener_v6_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Free_Hostages_Custom_1_Fail()
    local l0;
    l0 = self.box_Free_Hostages_Custom_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|642426512", "642426512", "HostageLiberationB20", "box_Free_Hostages_Custom_1.Fail", "Fail", l0:GetLuaBox(), self);
    self:Fail();
end;

function export:f_box_Free_Hostages_Custom_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Free_Hostages_Custom_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1148068224", "1148068224", "HostageLiberationB20", "box_Free_Hostages_Custom_1.Started", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Free_Hostages_Custom_1_Success()
    local l0;
    l0 = self.box_Free_Hostages_Custom_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|626009602", "626009602", "HostageLiberationB20", "box_Free_Hostages_Custom_1.Success", "Success", l0:GetLuaBox(), self);
    self:Success();
end;

function export:f_box_IsValueNil_v3_4_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_8();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|728743987", "728743987", "HostageLiberationB20", "box_IsValueNil_v3_4.No", "box_IsEntityInGroup_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_27_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30();
    l0 = self.box_LookAtTrigger_v2_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1015532957", "1015532957", "HostageLiberationB20", "box_LookAtTrigger_v2_27.EnterFOV", "box_ActivityObjectiveMarkerModifier_v3_30.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_27();
    l0 = self.box_LookAtTrigger_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1295251893", "1295251893", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_16.Disabled", "box_LookAtTrigger_v2_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_27();
    l0 = self.box_LookAtTrigger_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|345426905", "345426905", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_16.Enabled", "box_LookAtTrigger_v2_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_34();
    l0 = self.box_LookAtTrigger_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1326798973", "1326798973", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_15.Disabled", "box_LookAtTrigger_v2_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_34();
    l0 = self.box_LookAtTrigger_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|935502329", "935502329", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_15.Enabled", "box_LookAtTrigger_v2_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_14_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_19();
    l0 = self.box_Bind_v4_14;
    l1 = self.box_HealthListener_v6_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|527798575", "527798575", "HostageLiberationB20", "box_Bind_v4_14.Bound", "box_HealthListener_v6_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1253352729", "1253352729", "HostageLiberationB20", "box_OutputOrder_v2_40.Out", "box_ActivityObjectiveMarkerModifier_v3_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1538643659", "1538643659", "HostageLiberationB20", "box_OutputOrder_v2_40.Out", "box_Simple_Node_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_35_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_23();
    l0 = self.box_LookAtTrigger_v2_35;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|553893655", "553893655", "HostageLiberationB20", "box_LookAtTrigger_v2_35.EnterFOV", "box_ActivityObjectiveMarkerModifier_v3_23.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_6_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_10();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2008394425", "2008394425", "HostageLiberationB20", "box_IsValueNil_v3_6.No", "box_IsEntityInGroup_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_18_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_35();
    l0 = self.box_LookAtTrigger_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|633717394", "633717394", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_18.Disabled", "box_LookAtTrigger_v2_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_18_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_35();
    l0 = self.box_LookAtTrigger_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1261249871", "1261249871", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_18.Enabled", "box_LookAtTrigger_v2_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_29();
    l0 = self.box_MultipleOR_41;
    l1 = self.box_VehicleDamageListener_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1064392748", "1064392748", "HostageLiberationB20", "box_MultipleOR_41.Out", "box_VehicleDamageListener_v2_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_19_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17();
    l0 = self.box_HealthListener_v6_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1846503014", "1846503014", "HostageLiberationB20", "box_HealthListener_v6_19.Enabled", "box_ActivityObjectiveMarkerModifier_v3_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_19_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_HealthListener_v6_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|54148649", "54148649", "HostageLiberationB20", "box_HealthListener_v6_19.Killed", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_3();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2099776975", "2099776975", "HostageLiberationB20", "box_OutputOrder_v2_2.Out", "box_IsValueNil_v3_3.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_4();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1184928080", "1184928080", "HostageLiberationB20", "box_OutputOrder_v2_2.Out", "box_IsValueNil_v3_4.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_5();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1100845562", "1100845562", "HostageLiberationB20", "box_OutputOrder_v2_2.Out", "box_IsValueNil_v3_5.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_6();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1862334164", "1862334164", "HostageLiberationB20", "box_OutputOrder_v2_2.Out", "box_IsValueNil_v3_6.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_30_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1805829256", "1805829256", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_30.Disabled", "box_ActivityObjectiveMarkerModifier_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18();
    l0 = self.box_HealthListener_v6_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|890651725", "890651725", "HostageLiberationB20", "box_HealthListener_v6_20.Enabled", "box_ActivityObjectiveMarkerModifier_v3_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_20_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_HealthListener_v6_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|558581629", "558581629", "HostageLiberationB20", "box_HealthListener_v6_20.Killed", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_7_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_11();
    l0 = self.box_Bind_v4_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|723678999", "723678999", "HostageLiberationB20", "box_IsEntityInGroup_7.True", "box_Bind_v4_11.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_36();
    l0 = self.box_LookAtTrigger_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|100371142", "100371142", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_17.Disabled", "box_LookAtTrigger_v2_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_36();
    l0 = self.box_LookAtTrigger_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1378943939", "1378943939", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_17.Enabled", "box_LookAtTrigger_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_34_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25();
    l0 = self.box_LookAtTrigger_v2_34;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|446900404", "446900404", "HostageLiberationB20", "box_LookAtTrigger_v2_34.EnterFOV", "box_ActivityObjectiveMarkerModifier_v3_25.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1349332494", "1349332494", "HostageLiberationB20", "box_OutputOrder_v2_39.Out", "box_ActivityObjectiveMarkerModifier_v3_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1613389143", "1613389143", "HostageLiberationB20", "box_OutputOrder_v2_39.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_5_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_9();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|211659792", "211659792", "HostageLiberationB20", "box_IsValueNil_v3_5.No", "box_IsEntityInGroup_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_16();
    l0 = self.box_HealthListener_v6_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1828840350", "1828840350", "HostageLiberationB20", "box_HealthListener_v6_22.Enabled", "box_ActivityObjectiveMarkerModifier_v3_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_22_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_HealthListener_v6_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|743234318", "743234318", "HostageLiberationB20", "box_HealthListener_v6_22.Killed", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_8_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_12();
    l0 = self.box_Bind_v4_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|634790167", "634790167", "HostageLiberationB20", "box_IsEntityInGroup_8.True", "box_Bind_v4_12.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_3_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_7();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1594005926", "1594005926", "HostageLiberationB20", "box_IsValueNil_v3_3.No", "box_IsEntityInGroup_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_26_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1301991130", "1301991130", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_26.Disabled", "box_ActivityObjectiveMarkerModifier_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_29_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishFireWithinRange_28();
    l0 = self.box_VehicleDamageListener_v2_29;
    l1 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|355758400", "355758400", "HostageLiberationB20", "box_VehicleDamageListener_v2_29.Destroyed", "box_ExtinguishFireWithinRange_28.Extinguish", l0:GetLuaBox(), l1:GetLuaBox());
    -- Extinguish
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|712305927", "712305927", "HostageLiberationB20", "box_OutputOrder_v2_38.Out", "box_ActivityObjectiveMarkerModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1513401975", "1513401975", "HostageLiberationB20", "box_OutputOrder_v2_38.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_33_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1342102863", "1342102863", "HostageLiberationB20", "box_ActivityObjectiveMarkerModifier_v3_33.Disabled", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|@DisableMobile1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|@DisableMobile2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|@DisableMobile3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|@DisableMobile4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_11()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = self.eHost1,
        -- EntityB,
        [2] = self.eObjMobileHost1,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|87251781");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_23_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost3,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|88068509");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_10_True,
    });
    params = {
        -- Entity,
        [0] = self.eHost4,
        -- Group,
        [1] = "#06C8A954",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|146694791");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_9_True,
    });
    params = {
        -- Entity,
        [0] = self.eHost3,
        -- Group,
        [1] = "#06C8A954",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109553352812543007",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_21()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eHost2,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|348107402");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost3,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|410985439");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost2,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_12()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = self.eHost2,
        -- EntityB,
        [2] = self.eObjMobileHost2,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|495474262");
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

function export:OnEnter_box_Bind_v4_13()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = self.eHost3,
        -- EntityB,
        [2] = self.eObjMobileHost3,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Free_Hostages_Custom_1()
    local params;
    params = {
        -- bCompletePreviousObjectives,
        [0] = false,
        -- bMinimunHostagesCompletion,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- Hostage_group,
        [3] = "#06C8A954",
        -- HostagesToSave,
        [4] = 4,
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|641653990");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost1,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|674311941");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_4_No,
    });
    params = {
        -- ent,
        [4] = self.eHost2,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109553051464383479",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|712074351");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_16_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_16_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost1,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|796426347");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_15_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_15_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost2,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_14()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = self.eHost4,
        -- EntityB,
        [2] = self.eObjMobileHost4,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|834196692");
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

function export:OnEnter_box_LookAtTrigger_v2_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109553300312439835",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|925471055");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_6_No,
    });
    params = {
        -- ent,
        [4] = self.eHost4,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|959666121");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_18_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_18_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost3,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_19()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eHost4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1037997067");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1094735181");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_30_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost1,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_20()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eHost3,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1364238149");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_7_True,
    });
    params = {
        -- Entity,
        [0] = self.eHost1,
        -- Group,
        [1] = "#06C8A954",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1514262964");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_17_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_17_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost4,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1524473566");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost2,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109553160644213755",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1700704385");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1817434984");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_5_No,
    });
    params = {
        -- ent,
        [4] = self.eHost3,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_22()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eHost1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1963911233");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_8_True,
    });
    params = {
        -- Entity,
        [0] = self.eHost2,
        -- Group,
        [1] = "#06C8A954",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|1984809030");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_3_No,
    });
    params = {
        -- ent,
        [4] = self.eHost1,
    };
    return params;
end;

function export:OnEnter_box_ExtinguishFireWithinRange_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishFireWithinRange_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2073842123");
    l0:SetConnections({
    });
    params = {
        -- players,
        [0] = "2108514357437537131",
        -- Range,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2075523360");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_26_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost4,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_29()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108504170328788457",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2089261646");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageLiberationB20|2093892344");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_33_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost4,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

-- Empty out anchor definitions
function export:Success()
    
end;
function export:Fail()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="EnoughDead" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Fail" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Success" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eHost1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHost2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHost3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHost4" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost4" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost4" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
