LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_master/fc5_gamestart.domino
-- User graph: Preview_Demo
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AddGunsForHire.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IsGunsForHire_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.FC5_GameStart = nil;
    Globals.FC5_GameStart = {
        sDemoType = "",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Master/FC5_GameStart.Preview_Demo.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AddGunsForHire.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "RequestAdd",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "RequestFail",
                delayed = false,
            },
            [1] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsGunsForHire_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "Roster",
                delayed = false,
            },
            [3] = {
                name = "Squad",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHArchetype",
                type = "archetype",
            },
            [2] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "affectedGFHEntity",
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Preview_Demo";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo";
    self.gPlayer = nil;
    self.box_IgnoreSignal_v2_22 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|15721609");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_22_Disabled,
    });
    self.box_ActivityInitialized_19 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|78686711");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_19_Out,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|308925695");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|339718048");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_ActivityAcknowledgeGate_15 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|525568552");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_15_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_15_Reloaded,
    });
    self.box_NarrativeFade_14 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|542831124");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_14_FadedIn,
    });
    self.box_NarrativeSceneCleanUp_6 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|637811502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_6_Out,
    });
    self.box_IgnoreSignal_v2_10 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1069053070");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_10_Disabled,
    });
    self.box_OverrideMenuAccessibility_23 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1215548166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_23_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1269703813");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_IgnoreSignal_v2_12 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1713365806");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_12_Disabled,
    });
    self.box_IgnoreSignal_v2_17 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1875315994");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_17_Disabled,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1177206978", "1177206978", "Preview_Demo", "In", "box_ActivityAcknowledgeGate_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1562329732", "1562329732", "Preview_Demo", "OnLeaveZone", "box_ActivityRetry_11.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_22_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_6();
    l0 = self.box_IgnoreSignal_v2_22;
    l1 = self.box_NarrativeSceneCleanUp_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1020250754", "1020250754", "Preview_Demo", "box_IgnoreSignal_v2_22.Disabled", "box_NarrativeSceneCleanUp_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_14();
    l0 = self.box_ActivityInitialized_19;
    l1 = self.box_NarrativeFade_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1550932714", "1550932714", "Preview_Demo", "box_ActivityInitialized_19.Out", "box_NarrativeFade_14.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_OverrideEnvironment_v3_20_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|35823088", "35823088", "Preview_Demo", "box_OverrideEnvironment_v3_20.Enabled", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_10();
    l0 = self.box_Delay_v5_9;
    l1 = self.box_IgnoreSignal_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1988583391", "1988583391", "Preview_Demo", "box_Delay_v5_9.TimeElapsed", "box_IgnoreSignal_v2_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_21();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|865937401", "865937401", "Preview_Demo", "box_MultipleOR_7.Out", "box_OverrideEnvironment_v3_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_15_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_15;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|866563208", "866563208", "Preview_Demo", "box_ActivityAcknowledgeGate_15.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_15_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_15;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|551381905", "551381905", "Preview_Demo", "box_ActivityAcknowledgeGate_15.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeFade_14_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_NarrativeFade_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1253667442", "1253667442", "Preview_Demo", "box_NarrativeFade_14.FadedIn", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_23();
    l0 = self.box_NarrativeSceneCleanUp_6;
    l1 = self.box_OverrideMenuAccessibility_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|540688155", "540688155", "Preview_Demo", "box_NarrativeSceneCleanUp_6.Out", "box_OverrideMenuAccessibility_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_AddGunsForHire_2_RequestFail()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1225367086", "1225367086", "Preview_Demo", "box_AddGunsForHire_2.RequestFail", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddGunsForHire_2_RequestSuccess()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1715160982", "1715160982", "Preview_Demo", "box_AddGunsForHire_2.RequestSuccess", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsGunsForHire_v2_1_Roster()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddGunsForHire_2();
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1643865220", "1643865220", "Preview_Demo", "box_IsGunsForHire_v2_1.Roster", "box_AddGunsForHire_2.RequestAdd", clone:GetLuaBox(), l0:GetLuaBox());
    -- RequestAdd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_10_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_12();
    l0 = self.box_IgnoreSignal_v2_10;
    l1 = self.box_IgnoreSignal_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|225638834", "225638834", "Preview_Demo", "box_IgnoreSignal_v2_10.Disabled", "box_IgnoreSignal_v2_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_23_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_23;
    l1 = self.box_ActivityInitialized_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1552426343", "1552426343", "Preview_Demo", "box_OverrideMenuAccessibility_23.Out", "box_ActivityInitialized_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_20();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|501412532", "501412532", "Preview_Demo", "box_Delay_v5_13.TimeElapsed", "box_OverrideEnvironment_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1395091712", "1395091712", "Preview_Demo", "box_BroadcastMessage_8.Out", "box_ActivityEnd_18.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_17();
    l0 = self.box_IgnoreSignal_v2_12;
    l1 = self.box_IgnoreSignal_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|788953604", "788953604", "Preview_Demo", "box_IgnoreSignal_v2_12.Disabled", "box_IgnoreSignal_v2_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OverrideEnvironment_v3_21_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|580739902", "580739902", "Preview_Demo", "box_OverrideEnvironment_v3_21.Enabled", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IgnoreSignal_v2_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_22();
    l0 = self.box_IgnoreSignal_v2_17;
    l1 = self.box_IgnoreSignal_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1543328497", "1543328497", "Preview_Demo", "box_IgnoreSignal_v2_17.Disabled", "box_IgnoreSignal_v2_22.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|776632581", "776632581", "Preview_Demo", "box_OutputOrder_v2_16.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsGunsForHire_v2_1();
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|456773750", "456773750", "Preview_Demo", "box_OutputOrder_v2_16.Out", "box_IsGunsForHire_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_8();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|169002568", "169002568", "Preview_Demo", "box_OutputOrder_v2_16.Out", "box_BroadcastMessage_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_IgnoreSignal_v2_22()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "zipline",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_20()
    local params, l0;
    DrawTextToScreen("Comment: Inside", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OverrideEnvironment_v3')-- Comment: Inside");
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|84376958");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_20_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Default.Default_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_14()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_6()
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

function export:OnEnter_box_AddGunsForHire_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AddGunsForHire.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddGunsForHire_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|666289801");
    l0:SetConnections({
        -- RequestFail,
        [0] = self.f_box_AddGunsForHire_2_RequestFail,
        -- RequestSuccess,
        [1] = self.f_box_AddGunsForHire_2_RequestSuccess,
    });
    params = {
        -- targetGFHEntity,
        [1] = "2103181114469274646",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|785247613");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|901147801");
    l0:SetConnections({
        -- Roster,
        [2] = self.f_box_IsGunsForHire_v2_1_Roster,
    });
    params = {
        -- targetGFHEntity,
        [2] = "2103181114469274646",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_10()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_23()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = true,
        -- PerksMenuEnabled,
        [6] = true,
        -- ResistanceMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1298941197");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "GFH_FAIL",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1422151110");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1582950916");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "GFH_SUCCESS",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1602554547");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_8_Out,
    });
    params = {
        -- Message,
        [0] = "intro_fog_clear",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_12()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "use",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_21()
    local params, l0;
    DrawTextToScreen("Comment: Outside", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OverrideEnvironment_v3')-- Comment: Outside");
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1713721042");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_21_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Playgo_Fog_Part_D",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0.001,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_17()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "crouch",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1895542962");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "PREVIEW DEMO!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Preview_Demo|1934430774");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
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
