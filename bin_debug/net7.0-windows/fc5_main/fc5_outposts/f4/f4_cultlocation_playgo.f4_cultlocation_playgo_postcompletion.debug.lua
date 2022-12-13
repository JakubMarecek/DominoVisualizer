LUAC�I -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/f4/f4_cultlocation_playgo.domino
-- User graph: F4_CultLocation_Playgo_PostCompletion
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/ConversationListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetMissionLayerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_012/INTRO_Fog.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/F4/F4_CultLocation_Playgo.F4_CultLocation_Playgo_PostCompletion.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua")] = {
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
                name = "KeepBlackBars",
                type = "bool",
            },
            [1] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [2] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [3] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua")] = {
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
                name = "CustomScript",
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
                name = "SafeHouseEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/ConversationListener.lua")] = {
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
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Finished",
                delayed = true,
            },
            [4] = {
                name = "Paused",
                delayed = true,
            },
            [5] = {
                name = "Resumed",
                delayed = true,
            },
            [6] = {
                name = "Skipped",
                delayed = true,
            },
            [7] = {
                name = "Started",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener.lua")] = {
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
                name = "PreconditionMet",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "PreconditionId",
                type = "string",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAIRequestGroup.lua")] = {
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
                name = "AtLeastOneRequestSucceeded",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "RequestsFailed",
                delayed = false,
            },
            [3] = {
                name = "RequestSpawned",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "RequestGroupName",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/GetMissionLayerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "F4_CultLocation_Playgo_PostCompletion";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion";
    self.civilian = nil;
    self.post_civ = nil;
    self.box_ContextualActionListener_19 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|131899049");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_19_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_19_End,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|685423428");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_RegenerateNavmesh_5 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|715366520");
    l0:SetConnections({
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|849374338");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_EntityStatusListener_26 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|881367703");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_26_Loaded,
    });
    self.box_Brick_Cult_Location_Post_Completion_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua");
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Post_Completion_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|893309940");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_Cult_Location_Post_Completion_1_CustomScript,
    });
    self.box_NarrativeSceneCleanUp_14 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1207614527");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_14_Out,
    });
    self.box_SpawnAIRequestGroup_15 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup.lua");
    l0 = self.box_SpawnAIRequestGroup_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1217617903");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_15_Out,
    });
    self.box_ConversationListener_34 = cbox:CreateBox("Domino/System/AI/ConversationListener.lua");
    l0 = self.box_ConversationListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConversationListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1309532000");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ConversationListener_34_Disabled,
        -- Enabled,
        [2] = self.f_box_ConversationListener_34_Enabled,
        -- Finished,
        [3] = self.f_box_ConversationListener_34_Finished,
    });
    self.box_ContextualActionListener_24 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1715377611");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_24_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_24_End,
    });
    self.box_ContextualActionListener_38 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1876418281");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_38_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_38_End,
    });
    self.box_EntityStatusListener_21 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2056084605");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_21_Loaded,
    });
    self.box_PreconditionListener_41 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2135295145");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_41_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_41_PreconditionMet,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1072500821", "1072500821", "F4_CultLocation_Playgo_PostCompletion", "In", "box_OutputOrder_v2_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1154418857", "1154418857", "F4_CultLocation_Playgo_PostCompletion", "OnLeaveZone", "box_Brick_Cult_Location_Post_Completion_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_29();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2055498874", "2055498874", "F4_CultLocation_Playgo_PostCompletion", "box_Simple_Node_20.Out", "box_Compare_Boolean_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_PreconditionListener_41();
    l0 = self.box_PreconditionListener_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|182682435", "182682435", "F4_CultLocation_Playgo_PostCompletion", "box_Simple_Node_20.Out", "box_PreconditionListener_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_2_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_17();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1509387084", "1509387084", "F4_CultLocation_Playgo_PostCompletion", "box_Compare_Boolean_2.A_is_False", "box_GetMissionLayerState_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_19_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    l0 = self.box_ContextualActionListener_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1553337960", "1553337960", "F4_CultLocation_Playgo_PostCompletion", "box_ContextualActionListener_19.Enabled", "box_UseContextualActionModifier_v3_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_19_End()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    l0 = self.box_ContextualActionListener_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1801639153", "1801639153", "F4_CultLocation_Playgo_PostCompletion", "box_ContextualActionListener_19.End", "box_UseContextualActionModifier_v3_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetMissionLayerState_v2_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_18();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1970183507", "1970183507", "F4_CultLocation_Playgo_PostCompletion", "box_GetMissionLayerState_v2_17.Disabled", "box_MissionBlockLayer_18.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_13_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_11();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1934974445", "1934974445", "F4_CultLocation_Playgo_PostCompletion", "box_IsPawnAlive_v2_13.True", "box_SetContextualStrategy_11.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConversationListener_34();
    l0 = self.box_ConversationListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|771041871", "771041871", "F4_CultLocation_Playgo_PostCompletion", "box_SetContextualStrategy_4.Out", "box_ConversationListener_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_26();
    l0 = self.box_EntityStatusListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|524497548", "524497548", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_7.Out", "box_EntityStatusListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1700167760", "1700167760", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_7.Out", "box_EntityStatusListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_10();
    l0 = self.box_EntityStatusListener_8;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|788344899", "788344899", "F4_CultLocation_Playgo_PostCompletion", "box_EntityStatusListener_8.Loaded", "box_SetEntity_v2_10.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_28_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_19();
    l0 = self.box_ContextualActionListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1794093456", "1794093456", "F4_CultLocation_Playgo_PostCompletion", "box_Compare_Boolean_28.A_is_False", "box_ContextualActionListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_33_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|110571908", "110571908", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_33.Enabled", "box_UseContextualActionModifier_v3_33.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_14();
    l0 = self.box_NarrativeSceneCleanUp_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1607953234", "1607953234", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_16.Out", "box_NarrativeSceneCleanUp_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_2();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|612616841", "612616841", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_16.Out", "box_Compare_Boolean_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_21();
    l0 = self.box_EntityStatusListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1507671096", "1507671096", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1589159289", "1589159289", "F4_CultLocation_Playgo_PostCompletion", "box_MultipleOR_12.Out", "box_Simple_Node_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_32_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_25();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|567624262", "567624262", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_32.Disabled", "box_UseContextualActionModifier_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_32_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|9040823", "9040823", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_32.Enabled", "box_UseContextualActionModifier_v3_32.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_26_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_9();
    l0 = self.box_EntityStatusListener_26;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|251817760", "251817760", "F4_CultLocation_Playgo_PostCompletion", "box_EntityStatusListener_26.Loaded", "box_SetEntity_v2_9.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Post_Completion_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|913271763", "913271763", "F4_CultLocation_Playgo_PostCompletion", "box_Brick_Cult_Location_Post_Completion_1.CustomScript", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_29_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_4();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1330622089", "1330622089", "F4_CultLocation_Playgo_PostCompletion", "box_Compare_Boolean_29.A_is_False", "box_SetContextualStrategy_4.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_29_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1198960092", "1198960092", "F4_CultLocation_Playgo_PostCompletion", "box_Compare_Boolean_29.A_is_True", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_9_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2082455093", "2082455093", "F4_CultLocation_Playgo_PostCompletion", "box_SetEntity_v2_9.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_10_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1037033147", "1037033147", "F4_CultLocation_Playgo_PostCompletion", "box_SetEntity_v2_10.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_25_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_25();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|787517935", "787517935", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_25.Enabled", "box_UseContextualActionModifier_v3_25.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_NarrativeSceneCleanUp_14;
    l1 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1886237635", "1886237635", "F4_CultLocation_Playgo_PostCompletion", "box_NarrativeSceneCleanUp_14.Out", "box_Brick_Cult_Location_Post_Completion_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAIRequestGroup_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_SpawnAIRequestGroup_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|344810267", "344810267", "F4_CultLocation_Playgo_PostCompletion", "box_SpawnAIRequestGroup_15.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_15();
    l0 = self.box_SpawnAIRequestGroup_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|836438226", "836438226", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_6.Out", "box_SpawnAIRequestGroup_15.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_5();
    l0 = self.box_RegenerateNavmesh_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1974897405", "1974897405", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_6.Out", "box_RegenerateNavmesh_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_13();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1558144525", "1558144525", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_6.Out", "box_IsPawnAlive_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|922954198", "922954198", "F4_CultLocation_Playgo_PostCompletion", "box_SetContextualStrategy_39.Out", "box_UseContextualActionModifier_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConversationListener_34_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = self.box_ConversationListener_34;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|925941456", "925941456", "F4_CultLocation_Playgo_PostCompletion", "box_ConversationListener_34.Disabled", "box_SetContextualStrategy_27.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConversationListener_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_3();
    l0 = self.box_ConversationListener_34;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1986804949", "1986804949", "F4_CultLocation_Playgo_PostCompletion", "box_ConversationListener_34.Enabled", "box_UseContextualActionModifier_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConversationListener_34_Finished()
    local params, l0;
    params = self:OnEnter_box_ConversationListener_34();
    l0 = self.box_ConversationListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|346713669", "346713669", "F4_CultLocation_Playgo_PostCompletion", "box_ConversationListener_34.Finished", "box_ConversationListener_34.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_39();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|588141737", "588141737", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_37.Out", "box_SetContextualStrategy_39.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2026977817", "2026977817", "F4_CultLocation_Playgo_PostCompletion", "box_OutputOrder_v2_37.Out", "box_UseContextualActionModifier_v3_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_36_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1336674157", "1336674157", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_36.Disabled", "box_UseContextualActionModifier_v3_36.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_35_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2042968205", "2042968205", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_35.Disabled", "box_UseContextualActionModifier_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2081968951", "2081968951", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_35.Enabled", "box_UseContextualActionModifier_v3_35.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = self.box_ContextualActionListener_24;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|179428432", "179428432", "F4_CultLocation_Playgo_PostCompletion", "box_ContextualActionListener_24.Enabled", "box_UseContextualActionModifier_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_24_End()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = self.box_ContextualActionListener_24;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1804502027", "1804502027", "F4_CultLocation_Playgo_PostCompletion", "box_ContextualActionListener_24.End", "box_UseContextualActionModifier_v3_22.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_22_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1577173125", "1577173125", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_22.Disabled", "box_UseContextualActionModifier_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_22_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1024220652", "1024220652", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_22.Enabled", "box_UseContextualActionModifier_v3_22.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = self.box_ContextualActionListener_38;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|541938265", "541938265", "F4_CultLocation_Playgo_PostCompletion", "box_ContextualActionListener_38.Enabled", "box_UseContextualActionModifier_v3_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_38_End()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = self.box_ContextualActionListener_38;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1555659605", "1555659605", "F4_CultLocation_Playgo_PostCompletion", "box_ContextualActionListener_38.End", "box_UseContextualActionModifier_v3_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_3_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_3();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1117843526", "1117843526", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_3.Enabled", "box_UseContextualActionModifier_v3_3.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_24();
    l0 = self.box_ContextualActionListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|308154605", "308154605", "F4_CultLocation_Playgo_PostCompletion", "box_SetContextualStrategy_27.Out", "box_ContextualActionListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_21_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_38();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_ContextualActionListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1634536288", "1634536288", "F4_CultLocation_Playgo_PostCompletion", "box_EntityStatusListener_21.Loaded", "box_ContextualActionListener_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|864560707", "864560707", "F4_CultLocation_Playgo_PostCompletion", "box_UseContextualActionModifier_v3_23.Enabled", "box_UseContextualActionModifier_v3_23.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_41_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_28();
    l0 = self.box_PreconditionListener_41;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|670446265", "670446265", "F4_CultLocation_Playgo_PostCompletion", "box_PreconditionListener_41.Enabled", "box_Compare_Boolean_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_41_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_40();
    l0 = self.box_PreconditionListener_41;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|148395617", "148395617", "F4_CultLocation_Playgo_PostCompletion", "box_PreconditionListener_41.PreconditionMet", "box_UseContextualActionModifier_v3_40.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|@SetEntity");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|56945175");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_2_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.INTRO_Fog.TH_Intel_Acquired,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|91224126");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104148630555333502",
        -- Group,
        [1] = "2103512599395061846",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_19()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104657618313182285",
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|169799963");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GetMissionLayerState_v2_17_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "45174651036063585",
        -- missionBlockLayerId,
        [1] = "27160254273225525",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|242706151");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104657618313182285",
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|494418017");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_13_True,
    });
    params = {
        -- Pawn,
        [0] = "2103512599395061846",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|554664970");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_4_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105215777234756808",
        -- Group,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|641581999");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105215985827999459",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|698001874");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_28_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.INTRO_Fog.TH_Intel_Acquired,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_5()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104148632096740224",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|770807974");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_33_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105215941143980465",
        -- Entity,
        [1] = "2103512599395061846",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|776821458");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104657618313182285",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|837425306");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|874683970");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_32_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_32_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105020755363239682",
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105211480403129109",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Post_Completion_1()
    local params;
    params = {
        -- SafeHouseEntity,
        [0] = "2104144559819740142",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1045282862");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_29_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_29_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.INTRO_Fog.TH_Intel_Acquired,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1077777823");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_9_Out,
    });
    params = {
        -- Entity,
        [0] = "2105211480403129109",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1106260093");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_10_Out,
    });
    params = {
        -- Entity,
        [0] = "2105215985827999459",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1180207225");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_25_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105020755365336838",
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_14()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_15()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "intro_post_outpost_civ",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1263504255");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1282636043");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_39_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104148630555333502",
        -- Group,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_ConversationListener_34()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1423311955");
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

function export:OnEnter_box_UseContextualActionModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1435079221");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_36_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104657618313182285",
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1452476435");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "45174651036063585",
        -- missionLayerId,
        [1] = "27160254273225525",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1457697328");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_35_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_35_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105215941141883309",
        -- Entity,
        [1] = "2103512599395061846",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_24()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2105020755365336838",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|1839548258");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_22_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_22_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105020755365336838",
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_38()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2105215941141883309",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2007791378");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_3_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104657618313182285",
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2018802057");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_27_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104148630555333502",
        -- Group,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103512599395061846",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F4\\F4_CultLocation_Playgo.domino|@F4_CultLocation_Playgo_PostCompletion|2134847020");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_23_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105020755363239682",
        -- Entity,
        [1] = self.post_civ,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_41()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015288484929434",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.post_civ = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.post_civ = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
