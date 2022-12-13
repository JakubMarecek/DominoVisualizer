LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/pre_mis_330.domino
-- User graph: Derby_Arena_EasterEgg
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3932088769.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/PRE_MIS_330.Derby_Arena_EasterEgg.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Derby_Arena_EasterEgg";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg";
    self.e_localPlayer = nil;
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|46780330");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|72639818");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|348871217");
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
        [0] = self.f_box_MultipleAND_v2_21_Out,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|374640122");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_29 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|657343738");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_29_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_29_Interacted,
    });
    self.box_PositionModifier_v2_25 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|660009096");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_25_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_25_StartOut,
    });
    self.box_SoundModifier_v2_26 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|706036502");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V6_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|713895150");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_8_Success,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|769875467");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|821830662");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Brick_Interact_With_Object_V6_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1056065312");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_1_Success,
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1280131595");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_30 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1303947459");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_30_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_30_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_22 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1478680111");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_22_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_22_Interacted,
    });
    self.box_Brick_Interact_With_Object_V6_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1553980031");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_2_Success,
    });
    self.box_PositionModifier_v2_24 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1823693869");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_24_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_24_StartOut,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1883965198", "1883965198", "Derby_Arena_EasterEgg", "In", "box_GetLocalPlayer_v2_31.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|371656003", "371656003", "Derby_Arena_EasterEgg", "box_Simple_Node_32.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1618099931", "1618099931", "Derby_Arena_EasterEgg", "box_Delay_v5_16.TimeElapsed", "box_MissionBlockLayer_4.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|328025629", "328025629", "Derby_Arena_EasterEgg", "box_Delay_v5_14.TimeElapsed", "box_MissionBlockLayer_20.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_5_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1121795063", "1121795063", "Derby_Arena_EasterEgg", "box_MissionBlockLayer_5.Activated", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_MultipleAND_v2_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1023962962", "1023962962", "Derby_Arena_EasterEgg", "box_MultipleAND_v2_21.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|345118987", "345118987", "Derby_Arena_EasterEgg", "box_Delay_v5_11.TimeElapsed", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|159392396", "159392396", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_27.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_24();
    l0 = self.box_PositionModifier_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|2040918044", "2040918044", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_27.Out", "box_PositionModifier_v2_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_25();
    l0 = self.box_PositionModifier_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1140699921", "1140699921", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_27.Out", "box_PositionModifier_v2_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_26();
    l0 = self.box_SoundModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1778804129", "1778804129", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_27.Out", "box_SoundModifier_v2_26.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_4_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|872042068", "872042068", "Derby_Arena_EasterEgg", "box_MissionBlockLayer_4.Activated", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_29_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_29();
    l0 = self.box_UniversalInteractionModifier_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|204250222", "204250222", "Derby_Arena_EasterEgg", "box_UniversalInteractionModifier_v2_29.Enabled", "box_UniversalInteractionModifier_v2_29.ForceInteraction", l0:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_29_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_UniversalInteractionModifier_v2_29;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1611246634", "1611246634", "Derby_Arena_EasterEgg", "box_UniversalInteractionModifier_v2_29.Interacted", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PositionModifier_v2_25_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_PositionModifier_v2_25;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|241981285", "241981285", "Derby_Arena_EasterEgg", "box_PositionModifier_v2_25.Done", "box_ParticleSystem_v3_23.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_25_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_PositionModifier_v2_25;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|2042968669", "2042968669", "Derby_Arena_EasterEgg", "box_PositionModifier_v2_25.StartOut", "box_ParticleSystem_v3_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_8_Success()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_22();
    l0 = self.box_Brick_Interact_With_Object_V6_8;
    l1 = self.box_UniversalInteractionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|108438570", "108438570", "Derby_Arena_EasterEgg", "box_Brick_Interact_With_Object_V6_8.Success", "box_UniversalInteractionModifier_v2_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_13();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1272114465", "1272114465", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_19.Out", "box_MissionBlockLayer_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_18();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1672576603", "1672576603", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_19.Out", "box_MissionBlockLayer_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_6();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1113256130", "1113256130", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_19.Out", "box_MissionBlockLayer_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|379569241", "379569241", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_19.Out", "box_MissionBlockLayer_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|852458028", "852458028", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_19.Out", "box_MissionBlockLayer_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_15();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|228660552", "228660552", "Derby_Arena_EasterEgg", "box_Delay_v5_34.TimeElapsed", "box_MissionBlockLayer_15.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_20_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|355572921", "355572921", "Derby_Arena_EasterEgg", "box_MissionBlockLayer_20.Activated", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|742243305", "742243305", "Derby_Arena_EasterEgg", "box_Delay_v5_12.TimeElapsed", "box_MissionBlockLayer_5.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_15_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1238671537", "1238671537", "Derby_Arena_EasterEgg", "box_MissionBlockLayer_15.Activated", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_2();
    l0 = self.box_Brick_Interact_With_Object_V6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1367986989", "1367986989", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_7.Out", "box_Brick_Interact_With_Object_V6_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_8();
    l0 = self.box_Brick_Interact_With_Object_V6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1612421225", "1612421225", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_7.Out", "box_Brick_Interact_With_Object_V6_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_1();
    l0 = self.box_Brick_Interact_With_Object_V6_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1810818982", "1810818982", "Derby_Arena_EasterEgg", "box_OutputOrder_v2_7.Out", "box_Brick_Interact_With_Object_V6_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_1_Success()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_30();
    l0 = self.box_Brick_Interact_With_Object_V6_1;
    l1 = self.box_UniversalInteractionModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|551102450", "551102450", "Derby_Arena_EasterEgg", "box_Brick_Interact_With_Object_V6_1.Success", "box_UniversalInteractionModifier_v2_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|297806372", "297806372", "Derby_Arena_EasterEgg", "box_Delay_v5_3.TimeElapsed", "box_MissionBlockLayer_10.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_30_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_30();
    l0 = self.box_UniversalInteractionModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1157698354", "1157698354", "Derby_Arena_EasterEgg", "box_UniversalInteractionModifier_v2_30.Enabled", "box_UniversalInteractionModifier_v2_30.ForceInteraction", l0:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_30_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_UniversalInteractionModifier_v2_30;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1458925206", "1458925206", "Derby_Arena_EasterEgg", "box_UniversalInteractionModifier_v2_30.Interacted", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_UniversalInteractionModifier_v2_22_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_22();
    l0 = self.box_UniversalInteractionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|534517427", "534517427", "Derby_Arena_EasterEgg", "box_UniversalInteractionModifier_v2_22.Enabled", "box_UniversalInteractionModifier_v2_22.ForceInteraction", l0:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_22_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_UniversalInteractionModifier_v2_22;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|23343205", "23343205", "Derby_Arena_EasterEgg", "box_UniversalInteractionModifier_v2_22.Interacted", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Interact_With_Object_V6_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_29();
    l0 = self.box_Brick_Interact_With_Object_V6_2;
    l1 = self.box_UniversalInteractionModifier_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|218263975", "218263975", "Derby_Arena_EasterEgg", "box_Brick_Interact_With_Object_V6_2.Success", "box_UniversalInteractionModifier_v2_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_31_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1457886341", "1457886341", "Derby_Arena_EasterEgg", "box_GetLocalPlayer_v2_31.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_24_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_28();
    l0 = self.box_PositionModifier_v2_24;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1901434555", "1901434555", "Derby_Arena_EasterEgg", "box_PositionModifier_v2_24.Done", "box_ParticleSystem_v3_28.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_24_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_28();
    l0 = self.box_PositionModifier_v2_24;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|2117655896", "2117655896", "Derby_Arena_EasterEgg", "box_PositionModifier_v2_24.StartOut", "box_ParticleSystem_v3_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_10_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1409886153", "1409886153", "Derby_Arena_EasterEgg", "box_MissionBlockLayer_10.Activated", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|@n_walkFireworks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|215791212");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_5_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167512313974719",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|283375566");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313074554971",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|510764287");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
                [3] = self.f_box_OutputOrder_v2_27_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|516115413");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_4_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160318045155909",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_29()
    local params;
    params = {
        -- interactor,
        [2] = self.e_localPlayer,
        -- usableEntity,
        [4] = "2108653657670040900",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_25()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2107743377159100843",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971519185330",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_26()
    local params;
    params = {
        -- Pawns,
        [0] = "2108515804501773309",
        -- SoundId,
        [1] = "3932088769",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_8()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2109454169386530054",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|731161790");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|815499087");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_20_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313074554971",
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

function export:OnEnter_box_MissionBlockLayer_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|865663204");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_15_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313059206630",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|948830952");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1040876570");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160318045155909",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_1()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2109454164430959870",
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

function export:OnEnter_box_UniversalInteractionModifier_v2_30()
    local params;
    params = {
        -- interactor,
        [2] = self.e_localPlayer,
        -- usableEntity,
        [4] = "2108653711348743495",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1361055747");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167517299904169",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_22()
    local params;
    params = {
        -- interactor,
        [2] = self.e_localPlayer,
        -- usableEntity,
        [4] = "2108653729849818448",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1484796916");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313059206630",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1544005616");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109290989244920366",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_2()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2109454166498751746",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1586245162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1738203069");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167512313974719",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_24()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2108445606396561075",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971521282484",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|1918104827");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109290887574991404",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\PRE_MIS_330.domino|@Derby_Arena_EasterEgg|2019931388");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_10_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167517299904169",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.e_localPlayer = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
