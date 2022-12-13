LUAC=�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_demo/reachhopecty_bink.domino
-- User graph: ReachHopeCty_Bink
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/EnableConditionalZoneEvents_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SystemConsoleCommand.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Demo/ReachHopeCty_Bink.ReachHopeCty_Bink.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua")] = {
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
                name = "KeepGFHDisabled",
                type = "bool",
            },
            [2] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [3] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [4] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
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
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ChangeSunOrientation_v4.lua")] = {
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
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Reseted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "AzimuthDegree",
                type = "float",
            },
            [1] = {
                name = "ElevationDegree",
                type = "float",
            },
            [2] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
                delayed = true,
            },
            [1] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ID",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "zoneID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SystemConsoleCommand.lua")] = {
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
                name = "Command",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "ReachHopeCty_Bink";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink";
    self.MetaSequenceId = 0;
    self.box_NarrativeSceneSetup_11 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|241589511");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_11_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|284267774");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_ChangeSunOrientation_v4_20 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|325775097");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_24 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|351507060");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_22 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|385765671");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_9 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|444991524");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_9_Out,
    });
    self.box_ChangeSunOrientation_v4_21 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|756465430");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_10 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1126462507");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_10_Stopped,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1431000952");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_NarrativeSceneCleanUp_V2_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1717096265");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_12_Out,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1934526158");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1963681470");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|528165632", "528165632", "ReachHopeCty_Bink", "In", "box_EnableConditionalZoneEvents_v2_6.Unlock", self, l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_NarrativeSceneSetup_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1566056543", "1566056543", "ReachHopeCty_Bink", "box_NarrativeSceneSetup_11.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1626458892", "1626458892", "ReachHopeCty_Bink", "box_MultipleOR_5.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StartMetaSequence_9_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_9_Out();
    params = self:OnEnter_box_StopMetaSequence_v5_10();
    l0 = self.box_StartMetaSequence_9;
    l1 = self.box_StopMetaSequence_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|851158187", "851158187", "ReachHopeCty_Bink", "box_StartMetaSequence_9.Out", "box_StopMetaSequence_v5_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_12();
    l0 = self.box_NarrativeSceneCleanUp_V2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|676239921", "676239921", "ReachHopeCty_Bink", "box_OutputOrder_v2_16.Out", "box_NarrativeSceneCleanUp_V2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SystemConsoleCommand_18();
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|454121160", "454121160", "ReachHopeCty_Bink", "box_OutputOrder_v2_16.Out", "box_SystemConsoleCommand_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_21();
    l0 = self.box_ChangeSunOrientation_v4_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1174658902", "1174658902", "ReachHopeCty_Bink", "box_OutputOrder_v2_16.Out", "box_ChangeSunOrientation_v4_21.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_24();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|80083950", "80083950", "ReachHopeCty_Bink", "box_OutputOrder_v2_16.Out", "box_CHEAT_SetEnvironmentTimeScale_24.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1315044307", "1315044307", "ReachHopeCty_Bink", "box_OutputOrder_v2_15.Out", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SystemConsoleCommand_17();
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|308722552", "308722552", "ReachHopeCty_Bink", "box_OutputOrder_v2_15.Out", "box_SystemConsoleCommand_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_20();
    l0 = self.box_ChangeSunOrientation_v4_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|815454663", "815454663", "ReachHopeCty_Bink", "box_OutputOrder_v2_15.Out", "box_ChangeSunOrientation_v4_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_22();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|926812473", "926812473", "ReachHopeCty_Bink", "box_OutputOrder_v2_15.Out", "box_CHEAT_SetEnvironmentTimeScale_22.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_23();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1311186297", "1311186297", "ReachHopeCty_Bink", "box_OutputOrder_v2_15.Out", "box_SetTimeOfDay_23.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SystemConsoleCommand_25();
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|2065048159", "2065048159", "ReachHopeCty_Bink", "box_OutputOrder_v2_15.Out", "box_SystemConsoleCommand_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_7_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|423314654", "423314654", "ReachHopeCty_Bink", "box_EnableConditionalZoneEvents_v2_7.Locked", "box_ActivityEnd_3.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_10_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_StopMetaSequence_v5_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1819073495", "1819073495", "ReachHopeCty_Bink", "box_StopMetaSequence_v5_10.Stopped", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_6_Unlocked()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1973073610", "1973073610", "ReachHopeCty_Bink", "box_EnableConditionalZoneEvents_v2_6.Unlocked", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1054795702", "1054795702", "ReachHopeCty_Bink", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|15317159", "15317159", "ReachHopeCty_Bink", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeSceneCleanUp_V2_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_7();
    l0 = self.box_NarrativeSceneCleanUp_V2_12;
    l1 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|514308075", "514308075", "ReachHopeCty_Bink", "box_NarrativeSceneCleanUp_V2_12.Out", "box_EnableConditionalZoneEvents_v2_7.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_11();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_NarrativeSceneSetup_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|28693408", "28693408", "ReachHopeCty_Bink", "box_ActivityInitialized_2.Out", "box_NarrativeSceneSetup_11.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_19;
    l1 = self.box_StartMetaSequence_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|799908505", "799908505", "ReachHopeCty_Bink", "box_Delay_v5_19.TimeElapsed", "box_StartMetaSequence_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_SystemConsoleCommand_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SystemConsoleCommand_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|159843146");
    l0:SetConnections({
    });
    params = {
        -- Command,
        [0] = "gfx_framejobui2d 0",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_11()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_20()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 180,
        -- ElevationDegree,
        [1] = 24,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|334230322");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 10,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_24()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_22()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SystemConsoleCommand_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SystemConsoleCommand_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|528602527");
    l0:SetConnections({
    });
    params = {
        -- Command,
        [0] = "gfx_globalimpostors_startdistanceoverride 1000",
    };
    return params;
end;

function export:OnEnter_box_SystemConsoleCommand_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SystemConsoleCommand_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|691237039");
    l0:SetConnections({
    });
    params = {
        -- Command,
        [0] = "gfx_framejobui2d 1",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|737919373");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_21()
    local params;
    params = {
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1027611812");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
                [3] = self.f_box_OutputOrder_v2_16_Out_3,
                [4] = self.f_box_OutputOrder_v2_16_Out_4,
            },
            count = 5,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1043573958");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
                [4] = self.f_box_OutputOrder_v2_15_Out_4,
                [5] = self.f_box_OutputOrder_v2_15_Out_5,
                [6] = self.f_box_OutputOrder_v2_15_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1097270740");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_EnableConditionalZoneEvents_v2_7_Locked,
    });
    params = {
        -- zoneID,
        [0] = "9015323119455661",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_10()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceId,
    };
    return params;
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Demo\\ReachHopeCty_Bink.domino|@ReachHopeCty_Bink|1201636154");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_EnableConditionalZoneEvents_v2_6_Unlocked,
    });
    params = {
        -- zoneID,
        [0] = "9015323119455661",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_12()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = false,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_9_Out()
    local l0;
    l0 = self.box_StartMetaSequence_9;
    self.MetaSequenceId = l0:GetDataOutValue(0);
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
