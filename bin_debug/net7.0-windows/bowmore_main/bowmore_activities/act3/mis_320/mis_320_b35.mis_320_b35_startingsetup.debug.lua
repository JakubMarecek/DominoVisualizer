LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b35.domino
-- User graph: MIS_320_B35_StartingSetup
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3210515779.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_StartingSetup.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua")] = {
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
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "b_CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "b_EntityIsProximityTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "e_EntityToInteractWith",
                type = "entity",
            },
            [4] = {
                name = "e_ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "InteractionHUD",
                type = "oasis",
            },
            [6] = {
                name = "o_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eInteractor",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/CHEAT_SetEnvironmentTimeScale.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetTimeScale",
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
                name = "timeScale",
                type = "float",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/UnlockDoor.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "door",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_320_B35_StartingSetup";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup";
    self.Out = DummyFunction;
    self.box_Bind_v4_8 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|36692264");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_8_Bound,
    });
    self.box_Brick_Interact_With_Object_V6_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|367120048");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_7_Success,
    });
    self.box_PhysicsModifier_18 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|596953233");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_18_Disabled,
    });
    self.box_VisibilityModifier_16 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|774242072");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_16_Disabled,
    });
    self.box_PositionModifier_v2_9 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|899356315");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_9_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_9_StartOut,
    });
    self.box_NavLinkModifier_20 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1122621101");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_20_Deactivated,
    });
    self.box_PositionModifier_v2_17 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1449694945");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_17_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_17_StartOut,
    });
    self.box_SoundModifier_v2_5 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1538503061");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_12 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1819457866");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_12_Out,
    });
    self.box_PositionModifier_v2_15 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1924640250");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_15_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_15_StartOut,
    });
    self.box_NavLinkModifier_3 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|2022522324");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_3_Activated,
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|2039131026");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|282110188", "282110188", "MIS_320_B35_StartingSetup", "In", "box_OutputOrder_v2_19.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_2_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_14();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|658019340", "658019340", "MIS_320_B35_StartingSetup", "box_UnlockDoor_2.Unlocked", "box_MissionBlockLayer_14.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_8_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_9();
    l0 = self.box_Bind_v4_8;
    l1 = self.box_PositionModifier_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|959623383", "959623383", "MIS_320_B35_StartingSetup", "box_Bind_v4_8.Bound", "box_PositionModifier_v2_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UnlockDoor_6_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_11();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|463179274", "463179274", "MIS_320_B35_StartingSetup", "box_UnlockDoor_6.Unlocked", "box_UnlockDoor_11.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_11_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_17();
    l0 = self.box_PositionModifier_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|241457735", "241457735", "MIS_320_B35_StartingSetup", "box_UnlockDoor_11.Unlocked", "box_PositionModifier_v2_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_4_Out()
    self:OnExit_box_SetBoolean_v2_4_Out();
end;

function export:f_box_Brick_Interact_With_Object_V6_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_2();
    l0 = self.box_Brick_Interact_With_Object_V6_7;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|39049166", "39049166", "MIS_320_B35_StartingSetup", "box_Brick_Interact_With_Object_V6_7.Success", "box_UnlockDoor_2.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_18_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_7();
    l0 = self.box_PhysicsModifier_18;
    l1 = self.box_Brick_Interact_With_Object_V6_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1650434839", "1650434839", "MIS_320_B35_StartingSetup", "box_PhysicsModifier_18.Disabled", "box_Brick_Interact_With_Object_V6_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_18();
    l0 = self.box_VisibilityModifier_16;
    l1 = self.box_PhysicsModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|785223362", "785223362", "MIS_320_B35_StartingSetup", "box_VisibilityModifier_16.Disabled", "box_PhysicsModifier_18.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_9_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_4();
    l0 = self.box_PositionModifier_v2_9;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1635219231", "1635219231", "MIS_320_B35_StartingSetup", "box_PositionModifier_v2_9.Done", "box_SetBoolean_v2_4.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_9_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_20();
    l0 = self.box_PositionModifier_v2_9;
    l1 = self.box_NavLinkModifier_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1615039338", "1615039338", "MIS_320_B35_StartingSetup", "box_PositionModifier_v2_9.StartOut", "box_NavLinkModifier_20.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_20_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_NavLinkModifier_20;
    l1 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|486216699", "486216699", "MIS_320_B35_StartingSetup", "box_NavLinkModifier_20.Deactivated", "box_EntityStatusListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_17_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_13();
    l0 = self.box_PositionModifier_v2_17;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|515833477", "515833477", "MIS_320_B35_StartingSetup", "box_PositionModifier_v2_17.Done", "box_SetBoolean_v2_13.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_17_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_3();
    l0 = self.box_PositionModifier_v2_17;
    l1 = self.box_NavLinkModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|17429607", "17429607", "MIS_320_B35_StartingSetup", "box_PositionModifier_v2_17.StartOut", "box_NavLinkModifier_3.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_6();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_12;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|523705297", "523705297", "MIS_320_B35_StartingSetup", "box_CHEAT_SetEnvironmentTimeScale_12.Out", "box_UnlockDoor_6.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_14_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_5();
    l0 = self.box_SoundModifier_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|955272511", "955272511", "MIS_320_B35_StartingSetup", "box_MissionBlockLayer_14.Activated", "box_SoundModifier_v2_5.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_10_Out()
    self:OnExit_box_SetBoolean_v2_10_Out();
end;

function export:f_box_PositionModifier_v2_15_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_10();
    l0 = self.box_PositionModifier_v2_15;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1396405123", "1396405123", "MIS_320_B35_StartingSetup", "box_PositionModifier_v2_15.Done", "box_SetBoolean_v2_10.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_15_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_8();
    l0 = self.box_PositionModifier_v2_15;
    l1 = self.box_Bind_v4_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1279493165", "1279493165", "MIS_320_B35_StartingSetup", "box_PositionModifier_v2_15.StartOut", "box_Bind_v4_8.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_13_Out()
    self:OnExit_box_SetBoolean_v2_13_Out();
end;

function export:f_box_NavLinkModifier_3_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_15();
    l0 = self.box_NavLinkModifier_3;
    l1 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|461906289", "461906289", "MIS_320_B35_StartingSetup", "box_NavLinkModifier_3.Activated", "box_PositionModifier_v2_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_16();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_VisibilityModifier_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1876557607", "1876557607", "MIS_320_B35_StartingSetup", "box_EntityStatusListener_1.Loaded", "box_VisibilityModifier_16.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_12();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|704671330", "704671330", "MIS_320_B35_StartingSetup", "box_OutputOrder_v2_19.Out", "box_CHEAT_SetEnvironmentTimeScale_12.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|234582929", "234582929", "MIS_320_B35_StartingSetup", "box_OutputOrder_v2_19.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:OnEnter_box_UnlockDoor_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|11554388");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_2_Unlocked,
    });
    params = {
        -- door,
        [0] = "2107564330334554007",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_8()
    local params;
    params = {
        -- EntityA,
        [1] = "2107080565074168781",
        -- EntityB,
        [2] = "2109219152657927316",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|92817297");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_6_Unlocked,
    });
    params = {
        -- door,
        [0] = "2101450307973164813",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|248062103");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_11_Unlocked,
    });
    params = {
        -- door,
        [0] = "2108970177044436763",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|252779257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_7()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2106871910278105615",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_18()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108793779264705097",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_16()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108793779264705097",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_9()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107076763747095810",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107080565074168781",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_20()
    local params;
    params = {
        -- Entity,
        [0] = "2109954738142330075",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_17()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2109193463019888345",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109193416708480677",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_5()
    local params;
    params = {
        -- Pawns,
        [0] = "2109663393156697518",
        -- SoundId,
        [1] = "3210515779",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_12()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1823642165");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_14_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160306893230507",
        -- missionLayerId,
        [1] = "27160320858017949",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1900193527");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_15()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108790681639102743",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101562729056711374",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|1942718176");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_3()
    local params;
    params = {
        -- Entity,
        [0] = "2109193424270810790",
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
        [2] = "2108793779264705097",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35_StartingSetup|2081627049");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_EntranceDoor_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_FactoryDoor_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_CheckpointDoor_Opened = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
