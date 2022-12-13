LUAC�} -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_570/mis_570_b10.domino
-- User graph: _TargetManager_v2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="bNeedsObjective" Type="Core|bool" />
    <DataIn Name="sObjective" Type="Nomad|oasis" />
    <DataIn Name="eObjectiveMarker" Type="Nomad|entity{}" />
    <DataIn Name="bMoveMonitor" Type="Core|bool" />
    <DataIn Name="bBreakableMonitor" Type="Core|bool" />
    <DataIn Name="eTargetDynamic" Type="Nomad|entity{}" />
    <DataIn Name="bTargetDynamic" Type="Core|bool" />
    <DataIn Name="eTargetDynamic_PosUP" Type="Nomad|entity{}" />
    <DataIn Name="eTargetDynamic_PosDOWN" Type="Nomad|entity{}" />
    <DataIn Name="bTargetDynamic_Need_Up_Down" Type="Core|bool" />
    <DataIn Name="bMoveMonitor_Check_XYZ" Type="Core|bool" />
    <DataIn Name="fTargetDynamic_MovingDelay" Type="Core|float" />
    <DataIn Name="fTargetDynamic_WaitingDelay" Type="Core|float" />
    <DataIn Name="eShootTarget" Type="Nomad|entity{}" />
    <DataIn Name="eWoodpole" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MovementListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua")] = {
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
                name = "TargetHit",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "bBreakableMonitor",
                type = "bool",
            },
            [1] = {
                name = "bMoveMonitor",
                type = "bool",
            },
            [2] = {
                name = "bMoveMonitor_Check_XYZ",
                type = "bool",
            },
            [3] = {
                name = "bNeedsObjective",
                type = "bool",
            },
            [4] = {
                name = "bTargetDynamic",
                type = "bool",
            },
            [5] = {
                name = "bTargetDynamic_Need_Up_Down",
                type = "bool",
            },
            [6] = {
                name = "eObjectiveMarker",
                type = "entity",
            },
            [7] = {
                name = "eShootTarget",
                type = "entity",
            },
            [8] = {
                name = "eTargetDynamic",
                type = "entity",
            },
            [9] = {
                name = "eTargetDynamic_PosDOWN",
                type = "entity",
            },
            [10] = {
                name = "eTargetDynamic_PosUP",
                type = "entity",
            },
            [11] = {
                name = "eWoodpole",
                type = "entity",
            },
            [12] = {
                name = "fTargetDynamic_MovingDelay",
                type = "float",
            },
            [13] = {
                name = "fTargetDynamic_WaitingDelay",
                type = "float",
            },
            [14] = {
                name = "sObjective",
                type = "oasis",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/MovementListener_v2.lua")] = {
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
                name = "Idle",
                delayed = true,
            },
            [3] = {
                name = "Moving",
                delayed = true,
            },
            [4] = {
                name = "pitch_Changed",
                delayed = true,
            },
            [5] = {
                name = "roll_Changed",
                delayed = true,
            },
            [6] = {
                name = "x_Changed",
                delayed = true,
            },
            [7] = {
                name = "y_Changed",
                delayed = true,
            },
            [8] = {
                name = "yaw_Changed",
                delayed = true,
            },
            [9] = {
                name = "z_Changed",
                delayed = true,
            },
        },
        controlOutCount = 10,
        dataIn = {
            [0] = {
                name = "angleThreshold",
                type = "float",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "entityGroup",
                type = "group",
            },
            [3] = {
                name = "movingThreshold",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "instigator",
                type = "entity",
            },
            [1] = {
                name = "isMoving",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
        stateless = false,
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "_TargetManager_v2";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2";
    self.TargetHit = DummyFunction;
    self.PlayerGroup = nil;
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|19339146");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_Gate_v3_39 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|210208863");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_39_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_39_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|240822153");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_PositionModifier_v2_34 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|274393733");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_46 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|284288581");
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
                [0] = self.f_box_OnceOnly_v3_46_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|309847504");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|323883365");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_RemoveEntity_v2_29 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|833585376");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_5 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|915998766");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_5_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_5_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_5_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_5_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_5_OnStateChanged,
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1008836169");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_1_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_Bind_v4_22 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1010061108");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_22_UnBound,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1012078128");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_OnceOnly_v3_50 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1137594399");
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
                [0] = self.f_box_OnceOnly_v3_50_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1163663089");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_36_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1166927483");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1198063901");
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1227402909");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 1,
        },
    });
    self.box_PositionModifier_v2_42 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1321250527");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_PositionModifier_v2_42_Cancelled,
        -- Done,
        [1] = self.f_box_PositionModifier_v2_42_Done,
    });
    self.box_PositionModifier_v2_40 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1518734128");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_40_Done,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1609705462");
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
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1621545972");
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
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1722429652");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1887398118");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1888993296");
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
    self.box_MovementListener_v2_12 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2010506463");
    l0:SetConnections({
        -- x_Changed,
        [6] = self.f_box_MovementListener_v2_12_x_Changed,
        -- y_Changed,
        [7] = self.f_box_MovementListener_v2_12_y_Changed,
        -- z_Changed,
        [9] = self.f_box_MovementListener_v2_12_z_Changed,
    });
    self.box_RemoveEntity_v2_47 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2059914453");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2125619215");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
end;

function export:Disable()
    local l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2050094685", "2050094685", "_TargetManager_v2", "Disable", "box_MultipleOR_23.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2114680815", "2114680815", "_TargetManager_v2", "Disable", "box_MultipleOR_32.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_IsValueNil_v3_2();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|75223380", "75223380", "_TargetManager_v2", "Enable", "box_IsValueNil_v3_2.Entity", self, l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|686917351", "686917351", "_TargetManager_v2", "box_Simple_Node_51.Out", "box_Gate_v3_39.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1487426222", "1487426222", "_TargetManager_v2", "box_Simple_Node_21.Out", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_49_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_49;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|819795835", "819795835", "_TargetManager_v2", "box_MultipleOR_49.Out", "box_OnceOnly_v3_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1852682529", "1852682529", "_TargetManager_v2", "box_OutputOrder_v2_20.Out", "box_Delay_v5_36.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_47();
    l0 = self.box_RemoveEntity_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2067188044", "2067188044", "_TargetManager_v2", "box_OutputOrder_v2_20.Out", "box_RemoveEntity_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_28();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1739031989", "1739031989", "_TargetManager_v2", "box_OutputOrder_v2_8.Out", "box_IsValueNil_v3_28.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_30();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|90032782", "90032782", "_TargetManager_v2", "box_OutputOrder_v2_8.Out", "box_Compare_Boolean_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|258939233", "258939233", "_TargetManager_v2", "box_OutputOrder_v2_8.Out", "TargetHit", clone:GetLuaBox(), self);
    self:TargetHit();
end;

function export:f_box_IsValueNil_v3_28_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2129705756", "2129705756", "_TargetManager_v2", "box_IsValueNil_v3_28.No", "box_ActivityObjectiveMarkerModifier_v3_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_39_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_53();
    l0 = self.box_Gate_v3_39;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|203406181", "203406181", "_TargetManager_v2", "box_Gate_v3_39.Closed", "box_IsValueNil_v3_53.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_42();
    l0 = self.box_Gate_v3_39;
    l1 = self.box_PositionModifier_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1021308025", "1021308025", "_TargetManager_v2", "box_Gate_v3_39.Out", "box_PositionModifier_v2_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|704800464", "704800464", "_TargetManager_v2", "box_MultipleOR_14.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_10_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_5();
    l0 = self.box_StaticBreakableListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|94829547", "94829547", "_TargetManager_v2", "box_Compare_Boolean_10.A_is_True", "box_StaticBreakableListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_46_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_5();
    l0 = self.box_OnceOnly_v3_46;
    l1 = self.box_StaticBreakableListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|94635111", "94635111", "_TargetManager_v2", "box_OnceOnly_v3_46.Out", "box_StaticBreakableListener_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_16();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|871048653", "871048653", "_TargetManager_v2", "box_OnceOnly_v3_33.Out", "box_Compare_Boolean_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_23;
    l1 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|879008679", "879008679", "_TargetManager_v2", "box_MultipleOR_23.Out", "box_OnceOnly_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_53_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_42();
    l0 = self.box_PositionModifier_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|264267507", "264267507", "_TargetManager_v2", "box_IsValueNil_v3_53.No", "box_PositionModifier_v2_42.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_19_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1910172682", "1910172682", "_TargetManager_v2", "box_IsValueNil_v3_19.No", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_9_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_22();
    l0 = self.box_Bind_v4_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1234825728", "1234825728", "_TargetManager_v2", "box_Compare_Boolean_9.A_is_False", "box_Bind_v4_22.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_9_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2028861499", "2028861499", "_TargetManager_v2", "box_Compare_Boolean_9.A_is_True", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_11_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MovementListener_v2_12();
    l0 = self.box_MovementListener_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|148845605", "148845605", "_TargetManager_v2", "box_Compare_Boolean_11.A_is_True", "box_MovementListener_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_17_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1596852484", "1596852484", "_TargetManager_v2", "box_Compare_Boolean_17.A_is_True", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_2_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2061576751", "2061576751", "_TargetManager_v2", "box_IsValueNil_v3_2.No", "box_EntityStatusListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_3_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1525127164", "1525127164", "_TargetManager_v2", "box_Compare_Boolean_3.A_is_True", "box_ActivityObjectiveMarkerModifier_v3_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_5_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|109688536", "109688536", "_TargetManager_v2", "box_StaticBreakableListener_5.OnBreak", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_StaticBreakableListener_5_OnBreakAll()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|309526770", "309526770", "_TargetManager_v2", "box_StaticBreakableListener_5.OnBreakAll", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_StaticBreakableListener_5_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|781665429", "781665429", "_TargetManager_v2", "box_StaticBreakableListener_5.OnDamage", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_5_OnHit()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1521594581", "1521594581", "_TargetManager_v2", "box_StaticBreakableListener_5.OnHit", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_5_OnStateChanged()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|735104507", "735104507", "_TargetManager_v2", "box_StaticBreakableListener_5.OnStateChanged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|811229957", "811229957", "_TargetManager_v2", "box_OutputOrder_v2_48.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|592969206", "592969206", "_TargetManager_v2", "box_OutputOrder_v2_48.Out", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1910531461", "1910531461", "_TargetManager_v2", "box_OutputOrder_v2_48.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_1_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_EntityStatusListener_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1618039156", "1618039156", "_TargetManager_v2", "box_EntityStatusListener_1.Disabled", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1557177830", "1557177830", "_TargetManager_v2", "box_EntityStatusListener_1.Loaded", "box_EntityStatusListener_1.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_22_UnBound()
    local l0, l1;
    l0 = self.box_Bind_v4_22;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1646913055", "1646913055", "_TargetManager_v2", "box_Bind_v4_22.UnBound", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_41();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|442883280", "442883280", "_TargetManager_v2", "box_MultipleOR_38.Out", "box_Compare_Boolean_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_16_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|194480071", "194480071", "_TargetManager_v2", "box_Compare_Boolean_16.A_is_False", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_50_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = self.box_OnceOnly_v3_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|499022720", "499022720", "_TargetManager_v2", "box_OnceOnly_v3_50.Out", "box_Simple_Node_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_54();
    l0 = self.box_Delay_v5_36;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|248798901", "248798901", "_TargetManager_v2", "box_Delay_v5_36.Stopped", "box_IsValueNil_v3_54.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_40();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_PositionModifier_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1048915219", "1048915219", "_TargetManager_v2", "box_Delay_v5_36.TimeElapsed", "box_PositionModifier_v2_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|467398339", "467398339", "_TargetManager_v2", "box_MultipleOR_32.Out", "box_OnceOnly_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_OnceOnly_v3_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1332905692", "1332905692", "_TargetManager_v2", "box_OnceOnly_v3_18.Out", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1792537482", "1792537482", "_TargetManager_v2", "box_OutputOrder_v2_26.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2028551207", "2028551207", "_TargetManager_v2", "box_OutputOrder_v2_26.Out", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|205711694", "205711694", "_TargetManager_v2", "box_OutputOrder_v2_26.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RandomFloat_v2_43_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1491749924", "1491749924", "_TargetManager_v2", "box_RandomFloat_v2_43.Out", "box_Delay_v5_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1009222871", "1009222871", "_TargetManager_v2", "box_OutputOrder_v2_24.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1346581009", "1346581009", "_TargetManager_v2", "box_OutputOrder_v2_24.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|310802662", "310802662", "_TargetManager_v2", "box_OutputOrder_v2_24.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MovementListener_v2_12();
    l0 = self.box_OnceOnly_v3_45;
    l1 = self.box_MovementListener_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|528259665", "528259665", "_TargetManager_v2", "box_OnceOnly_v3_45.Out", "box_MovementListener_v2_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_42_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_PositionModifier_v2_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|317032682", "317032682", "_TargetManager_v2", "box_PositionModifier_v2_42.Cancelled", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_42_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_PositionModifier_v2_42;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1639094213", "1639094213", "_TargetManager_v2", "box_PositionModifier_v2_42.Done", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_41_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_34();
    l0 = self.box_PositionModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2143596650", "2143596650", "_TargetManager_v2", "box_Compare_Boolean_41.A_is_False", "box_PositionModifier_v2_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_41_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|156170321", "156170321", "_TargetManager_v2", "box_Compare_Boolean_41.A_is_True", "box_Gate_v3_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_40_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_PositionModifier_v2_40;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1990210013", "1990210013", "_TargetManager_v2", "box_PositionModifier_v2_40.Done", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_3();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2073335755", "2073335755", "_TargetManager_v2", "box_OutputOrder_v2_6.Out", "box_Compare_Boolean_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_10();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1567765031", "1567765031", "_TargetManager_v2", "box_OutputOrder_v2_6.Out", "box_Compare_Boolean_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_11();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1201715524", "1201715524", "_TargetManager_v2", "box_OutputOrder_v2_6.Out", "box_Compare_Boolean_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_9();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|328711810", "328711810", "_TargetManager_v2", "box_OutputOrder_v2_6.Out", "box_Compare_Boolean_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_27_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_27;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1853941756", "1853941756", "_TargetManager_v2", "box_MultipleOR_27.Out", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|329550852", "329550852", "_TargetManager_v2", "box_MultipleOR_15.Out", "box_OnceOnly_v3_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_43();
    l0 = self.box_OnceOnly_v3_25;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1666501889", "1666501889", "_TargetManager_v2", "box_OnceOnly_v3_25.Out", "box_RandomFloat_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_30_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_29();
    l0 = self.box_RemoveEntity_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1401607512", "1401607512", "_TargetManager_v2", "box_Compare_Boolean_30.A_is_False", "box_RemoveEntity_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_19();
    l0 = self.box_Delay_v5_44;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1686296194", "1686296194", "_TargetManager_v2", "box_Delay_v5_44.TimeElapsed", "box_IsValueNil_v3_19.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_17();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|742235068", "742235068", "_TargetManager_v2", "box_OnceOnly_v3_13.Out", "box_Compare_Boolean_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MovementListener_v2_12_x_Changed()
    local l0, l1;
    l0 = self.box_MovementListener_v2_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|62518343", "62518343", "_TargetManager_v2", "box_MovementListener_v2_12.x_Changed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MovementListener_v2_12_y_Changed()
    local l0, l1;
    l0 = self.box_MovementListener_v2_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1890039593", "1890039593", "_TargetManager_v2", "box_MovementListener_v2_12.y_Changed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MovementListener_v2_12_z_Changed()
    local l0, l1;
    l0 = self.box_MovementListener_v2_12;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1621876518", "1621876518", "_TargetManager_v2", "box_MovementListener_v2_12.z_Changed", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_54_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_40();
    l0 = self.box_PositionModifier_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|773428793", "773428793", "_TargetManager_v2", "box_IsValueNil_v3_54.No", "box_PositionModifier_v2_40.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|898299733", "898299733", "_TargetManager_v2", "box_MultipleOR_7.Out", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|@Close_Gate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|@Restart_Loop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|56570773");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|187628425");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|209131965");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_28_No,
    });
    params = {
        -- ent,
        [4] = self.eObjectiveMarker,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_39()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|248957183");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_10_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bBreakableMonitor,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_34()
    local params;
    params = {
        -- blendTime,
        [1] = self.fTargetDynamic_MovingDelay,
        -- endTarget,
        [4] = self.eTargetDynamic_PosUP,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eTargetDynamic,
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|402887499");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_53_No,
    });
    params = {
        -- ent,
        [4] = self.eTargetDynamic_PosDOWN,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|591175231");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_19_No,
    });
    params = {
        -- ent,
        [4] = self.eTargetDynamic,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|606988902");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_9_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_9_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bTargetDynamic,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|653577789");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_11_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bMoveMonitor,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|655042616");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eObjectiveMarker,
        -- ObjectiveId,
        [2] = self.sObjective,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_29()
    local params;
    params = {
        -- Group,
        [0] = self.eWoodpole,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|852137179");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_17_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bMoveMonitor_Check_XYZ,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|874009292");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_2_No,
    });
    params = {
        -- ent,
        [4] = self.eShootTarget,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|883996922");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_3_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bNeedsObjective,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = self.eShootTarget,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|917269229");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
            },
            count = 3,
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
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eShootTarget,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_22()
    local params;
    params = {
        -- EntityA,
        [1] = self.eTargetDynamic,
        -- EntityB,
        [2] = self.eShootTarget,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1113550980");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_16_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bMoveMonitor_Check_XYZ,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fTargetDynamic_WaitingDelay,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1198572355");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1204849494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_43_Out,
    });
    params = {
        -- Max,
        [0] = 3,
        -- Min,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1211782611");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_42()
    local params;
    params = {
        -- blendTime,
        [1] = self.fTargetDynamic_MovingDelay,
        -- endTarget,
        [4] = self.eTargetDynamic_PosDOWN,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eTargetDynamic,
        -- usePhysVelocity,
        [7] = true,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1338738365");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_41_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_41_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bTargetDynamic_Need_Up_Down,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_40()
    local params;
    params = {
        -- blendTime,
        [1] = self.fTargetDynamic_MovingDelay,
        -- endTarget,
        [4] = self.eTargetDynamic_PosUP,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eTargetDynamic,
        -- usePhysVelocity,
        [7] = true,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1590546929");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|1793897583");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_30_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bTargetDynamic_Need_Up_Down,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_12()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.01,
        -- autoDisable,
        [1] = false,
        -- entityGroup,
        [2] = self.eShootTarget,
        -- movingThreshold,
        [3] = 0.01,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_47()
    local params;
    params = {
        -- Group,
        [0] = self.eWoodpole,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@_TargetManager_v2|2061040916");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_54_No,
    });
    params = {
        -- ent,
        [4] = self.eTargetDynamic_PosUP,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_43_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_44;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:TargetHit()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="TargetHit" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="bBreakableMonitor" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="bMoveMonitor" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="bMoveMonitor_Check_XYZ" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="bNeedsObjective" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="bTargetDynamic" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="bTargetDynamic_Need_Up_Down" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="eObjectiveMarker" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eShootTarget" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTargetDynamic" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTargetDynamic_PosDOWN" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTargetDynamic_PosUP" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eWoodpole" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="fTargetDynamic_MovingDelay" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="fTargetDynamic_WaitingDelay" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="sObjective" AnchorDynType="0" DataTypeID="oasis" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
