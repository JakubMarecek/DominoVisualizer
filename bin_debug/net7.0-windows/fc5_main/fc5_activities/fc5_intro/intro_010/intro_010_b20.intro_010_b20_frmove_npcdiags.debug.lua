LUAC)� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b20.domino
-- User graph: Intro_010_B20_FrMove_NpcDiags
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Marshal" Type="Nomad|entity{}" />
    <DataIn Name="Deputy" Type="Nomad|entity{}" />
    <DataIn Name="Sherrif" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2967531577.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1170402564.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2435010819.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1534196790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2504754340.bnk]], "CSoundResource");
        cboxRes:LoadResource([[935240796.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3993036382.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1986530320.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4042578585.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3731695813.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2808186193.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2573165831.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1627102872.bnk]], "CSoundResource");
        cboxRes:LoadResource([[399410080.bnk]], "CSoundResource");
        cboxRes:LoadResource([[100926168.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4244108258.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3790256005.bnk]], "CSoundResource");
        cboxRes:LoadResource([[210285650.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1084950147.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3384316812.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3988179787.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2116711016.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3488954664.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3143880897.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2576253416.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1986089515.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3455922735.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_FrMove_NpcDiags.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Diags",
            },
            [1] = {
                name = "Disable_Team_Callouts",
            },
            [2] = {
                name = "Enable_Diag_NpcFire",
            },
            [3] = {
                name = "Enable_Team_Callouts",
            },
            [4] = {
                name = "In",
            },
            [5] = {
                name = "Start_Diags_NpcFence",
            },
            [6] = {
                name = "Stop_Diags_NpcFence",
            },
        },
        controlInCount = 7,
        controlOut = {
            [0] = {
                name = "Diag_NpcFence_Over",
                delayed = false,
            },
            [1] = {
                name = "Diag_NpcFence_Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Deputy",
                type = "entity",
            },
            [1] = {
                name = "Marshal",
                type = "entity",
            },
            [2] = {
                name = "Sherrif",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
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
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B20_FrMove_NpcDiags";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags";
    self.Diag_NpcFence_Started = DummyFunction;
    self.Diag_NpcFence_Over = DummyFunction;
    self.Players = nil;
    self.warning_dialog_timer = 15;
    self.marshal = nil;
    self.blessed_entity = nil;
    self.deputee = nil;
    self.player = nil;
    self.sherrif = nil;
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|63939159");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 12,
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
        [0] = self.f_box_MultipleOR_61_Out,
    });
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|66744540");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_4_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_4_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_4_Stopped,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|72848438");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_ProximityRadiusListener_v3_76 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|81131697");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_76_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_76_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_76_SomeoneNear,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|101966367");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_65_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_65_Stopped,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|113708291");
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
        [0] = self.f_box_MultipleOR_105_Out,
    });
    self.box_OnceOnly_v3_80 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|128177144");
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
                [0] = self.f_box_OnceOnly_v3_80_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|133685851");
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_ProximityRadiusListener_v3_44 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|140345470");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_44_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_44_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_44_SomeoneNear,
    });
    self.box_OnceOnly_v3_117 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|141054480");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_117_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|188379997");
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
        [0] = self.f_box_MultipleOR_87_Out,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|211540641");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|245099807");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_115_Started,
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|283175319");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
    self.box_ContextualActionListener_71 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|288010948");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_71_Disabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_71_Start,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|305781396");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_38_Started,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_38_Stopped,
    });
    self.box_ProximityRadiusListener_v3_5 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|306483564");
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
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|343545634");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_23_Started,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_23_Stopped,
    });
    self.box_ProximityRadiusListener_v3_42 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|400096297");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_42_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_42_SomeoneNear,
    });
    self.box_PlayDialog_v6_7 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|418751167");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_7_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_7_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_7_Stopped,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|426994414");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_Switch_55 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|429994609");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_55_Output_0,
                [1] = self.f_box_Switch_55_Output_1,
                [2] = self.f_box_Switch_55_Output_2,
            },
            count = 3,
        },
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|432292443");
    l0:SetConnections({
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_57_Stopped,
    });
    self.box_PlayDialog_v6_99 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|435225008");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_99_Started,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|456171254");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_12_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_17 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|467558428");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_17_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_17_SomeoneNear,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|484374774");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_25_Started,
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|499804419");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_113_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_113_Stopped,
    });
    self.box_Gate_v3_94 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|510903776");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_94_Out,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|526638812");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_PlayDialog_v6_96 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|546587894");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_96_Started,
    });
    self.box_Switch_86 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|583888002");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 6,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_86_Output_0,
                [1] = self.f_box_Switch_86_Output_1,
                [2] = self.f_box_Switch_86_Output_2,
                [3] = self.f_box_Switch_86_Output_3,
                [4] = self.f_box_Switch_86_Output_4,
                [5] = self.f_box_Switch_86_Output_5,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|588724541");
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
        [0] = self.f_box_MultipleOR_127_Out,
    });
    self.box_PlayDialog_v6_53 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|618625466");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_53_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_53_Started,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_53_Stopped,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|789533650");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_Gate_v3_120 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|811203322");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_120_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_120_Out,
    });
    self.box_PlayDialog_v6_106 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|830323207");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_106_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_106_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_106_Stopped,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|855263660");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_123 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|870204980");
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
                [0] = self.f_box_OnceOnly_v3_123_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|889606045");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_91_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_Gate_v3_66 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|943920845");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_66_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_66_Out,
    });
    self.box_ContextualActionListener_3 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|950446852");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_3_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_3_Enabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_3_Start,
    });
    self.box_Switch_39 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|988440443");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [1] = self.f_box_Switch_39_Output_1,
            },
            count = 3,
        },
    });
    self.box_ContextualActionListener_8 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|995863734");
    l0:SetConnections({
        -- Select,
        [7] = self.f_box_ContextualActionListener_8_Select,
    });
    self.box_Gate_v3_13 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1005654748");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_13_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_13_Out,
    });
    self.box_Delay_v5_141 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1006519803");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_141_TimeElapsed,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1020395720");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_40_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_PlayDialog_v6_70 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1079058896");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_70_Started,
    });
    self.box_Gate_v3_116 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1138371200");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_116_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_116_Out,
    });
    self.box_ContextualActionListener_79 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1139234039");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_79_Enabled,
        -- Select,
        [7] = self.f_box_ContextualActionListener_79_Select,
    });
    self.box_MultipleAND_v2_6 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1171902914");
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
        [0] = self.f_box_MultipleAND_v2_6_Out,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1204611749");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_PlayDialog_v6_90 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1204872284");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_90_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_90_Stopped,
    });
    self.box_Gate_v3_67 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1230704478");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_67_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_67_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_67_Out,
    });
    self.box_PlayDialog_v6_50 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1295075279");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_50_Started,
    });
    self.box_ProximityRadiusListener_v3_1 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1320305304");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_1_Disabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_1_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_1_SomeoneNear,
    });
    self.box_PlayDialog_v6_100 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1327445360");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_100_Started,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1342607598");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_ProximityRadiusListener_v3_28 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1344622626");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_28_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_28_SomeoneNear,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1353558805");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 12,
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_PlayDialog_v6_69 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1376492769");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_69_Started,
    });
    self.box_PlayDialog_v6_37 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1407887388");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_37_Started,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1455077785");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_Gate_v3_125 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1461153907");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_125_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_125_Out,
    });
    self.box_ProximityRadiusListener_v3_77 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1471366061");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_77_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_77_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_77_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_77_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_77_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_77_SomeoneNear,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1521102673");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_ProximityRadiusListener_v3_32 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1525949390");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_32_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_32_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_32_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_48 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1535352071");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_48_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_48_SomeoneNear,
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1607273933");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_Gate_v3_31 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1679880625");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_31_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_31_Out,
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1689992587");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_26_QueueCancelled,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_26_Started,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_26_Stopped,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1698432834");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1703222916");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_51_QueueCancelled,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_51_Started,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_51_Stopped,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1707280703");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 9,
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
    self.box_MultipleOR_109 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1737238967");
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
        [0] = self.f_box_MultipleOR_109_Out,
    });
    self.box_ProximityRadiusListener_v3_110 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1740353502");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_110_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_110_SomeoneNear,
    });
    self.box_ContextualActionListener_111 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1741172589");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_111_Enabled,
        -- Select,
        [7] = self.f_box_ContextualActionListener_111_Select,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1752850364");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_PlayDialog_v6_93 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1760820861");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_93_Started,
    });
    self.box_PlayDialog_v6_126 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1768293048");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_126_Started,
    });
    self.box_ContextualActionListener_20 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1800432821");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_20_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_20_Enabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_20_Start,
    });
    self.box_Gate_v3_47 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1831318363");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_47_Out,
    });
    self.box_PlayDialog_v6_78 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1842896006");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_78_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_78_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_78_Stopped,
    });
    self.box_Gate_v3_81 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1845505979");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_81_Out,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1849491716");
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
        [0] = self.f_box_MultipleOR_128_Out,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1855503272");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_30_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_PlayDialog_v6_72 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1884922129");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_72_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_72_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_72_Stopped,
    });
    self.box_Delay_v5_107 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1886053392");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_107_TimeElapsed,
    });
    self.box_Switch_118 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1958146105");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_118_Output_0,
                [1] = self.f_box_Switch_118_Output_1,
                [2] = self.f_box_Switch_118_Output_2,
                [3] = self.f_box_Switch_118_Output_3,
                [4] = self.f_box_Switch_118_Output_4,
            },
            count = 5,
        },
    });
    self.box_PlayDialog_v6_124 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2009442312");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_124_Started,
    });
    self.box_PlayDialog_v6_92 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2010295875");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_92_Started,
    });
    self.box_OnceOnly_v3_88 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2040590798");
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
                [0] = self.f_box_OnceOnly_v3_88_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_121 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2075251218");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_121_QueueCancelled,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_121_Started,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_121_Stopped,
    });
    self.box_PlayDialog_v6_34 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2090833232");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_34_Started,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_34_Stopped,
    });
end;

function export:Disable_Diags()
    local params, l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|205374917", "205374917", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_MultipleOR_87.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|959806", "959806", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_MultipleOR_105.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1639295176", "1639295176", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_OutputOrder_v2_73.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_81();
    l0 = self.box_Gate_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1676193895", "1676193895", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_Gate_v3_81.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_47();
    l0 = self.box_Gate_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|106343351", "106343351", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_Gate_v3_47.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_94();
    l0 = self.box_Gate_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1700663051", "1700663051", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_Gate_v3_94.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_13();
    l0 = self.box_Gate_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1624294343", "1624294343", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_Gate_v3_13.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_66();
    l0 = self.box_Gate_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1824618537", "1824618537", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_Gate_v3_66.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_116();
    l0 = self.box_Gate_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|710577335", "710577335", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_Gate_v3_116.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|805334652", "805334652", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_PlayDialog_v6_51.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1431138383", "1431138383", "Intro_010_B20_FrMove_NpcDiags", "Disable_Diags", "box_OutputOrder_v2_83.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Disable_Team_Callouts()
    local l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|338385199", "338385199", "Intro_010_B20_FrMove_NpcDiags", "Disable_Team_Callouts", "box_MultipleOR_128.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:Enable_Diag_NpcFire()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_140();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|783656413", "783656413", "Intro_010_B20_FrMove_NpcDiags", "Enable_Diag_NpcFire", "box_GetLocalPlayer_v2_140.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable_Team_Callouts()
    local params, l0;
    params = self:OnEnter_box_SetEntity_v2_135();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|753708993", "753708993", "Intro_010_B20_FrMove_NpcDiags", "Enable_Team_Callouts", "box_SetEntity_v2_135.FromEntity", self, l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_131();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1994476255", "1994476255", "Intro_010_B20_FrMove_NpcDiags", "In", "box_GetPlayerGroup_v2_131.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:Start_Diags_NpcFence()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_139();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|484210092", "484210092", "Intro_010_B20_FrMove_NpcDiags", "Start_Diags_NpcFence", "box_GetLocalPlayer_v2_139.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Stop_Diags_NpcFence()
    local l0;
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|644493205", "644493205", "Intro_010_B20_FrMove_NpcDiags", "Stop_Diags_NpcFence", "box_MultipleOR_105.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_33_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_141();
    l0 = self.box_Delay_v5_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1158841231", "1158841231", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_33.Enabled", "box_Delay_v5_141.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_33_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1230787214", "1230787214", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_33.UseCalled", "box_UseContextualActionModifier_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_103();
    l0 = self.box_MultipleOR_61;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1400034519", "1400034519", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_61.Out", "box_RandomFloat_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_79();
    l0 = self.box_ContextualActionListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1914120200", "1914120200", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_54.Out", "box_ContextualActionListener_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1430271765", "1430271765", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_54.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|504063421", "504063421", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_54.Out", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_76();
    l0 = self.box_ProximityRadiusListener_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1849806934", "1849806934", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_54.Out", "box_ProximityRadiusListener_v3_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_4_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_106();
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_PlayDialog_v6_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1732926612", "1732926612", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_4.Finished", "box_PlayDialog_v6_106.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_4_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_106();
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_PlayDialog_v6_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|964493283", "964493283", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_4.QueueCancelled", "box_PlayDialog_v6_106.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_4_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|864403385", "864403385", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_4.Stopped", "box_PlayDialog_v6_4.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_77();
    l0 = self.box_MultipleOR_58;
    l1 = self.box_ProximityRadiusListener_v3_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|670544446", "670544446", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_58.Out", "box_ProximityRadiusListener_v3_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_76_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_62();
    l0 = self.box_ProximityRadiusListener_v3_76;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|876908641", "876908641", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_76.Disabled", "box_UseContextualActionModifier_v3_62.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_76_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_32();
    l0 = self.box_ProximityRadiusListener_v3_76;
    l1 = self.box_ProximityRadiusListener_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|31133695", "31133695", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_76.Enabled", "box_ProximityRadiusListener_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_76_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_76();
    l0 = self.box_ProximityRadiusListener_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|214386941", "214386941", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_76.SomeoneNear", "box_ProximityRadiusListener_v3_76.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_65_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_110();
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_ProximityRadiusListener_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1079252338", "1079252338", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_65.Finished", "box_ProximityRadiusListener_v3_110.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_65_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1065483144", "1065483144", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_65.Stopped", "box_PlayDialog_v6_65.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_MultipleOR_105;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|150149200", "150149200", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_105.Out", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_80_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_OnceOnly_v3_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1873630728", "1873630728", "Intro_010_B20_FrMove_NpcDiags", "box_OnceOnly_v3_80.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_5();
    l0 = self.box_MultipleOR_75;
    l1 = self.box_ProximityRadiusListener_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|793632303", "793632303", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_75.Out", "box_ProximityRadiusListener_v3_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_122_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_122_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1785020350", "1785020350", "Intro_010_B20_FrMove_NpcDiags", "box_RandomFloat_v2_122.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_44_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1652444187", "1652444187", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_44.Disabled", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_17();
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_ProximityRadiusListener_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1798105066", "1798105066", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_44.Enabled", "box_ProximityRadiusListener_v3_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_44_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|617015034", "617015034", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_44.SomeoneNear", "box_ProximityRadiusListener_v3_44.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetFloat_v2_27_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1309323119", "1309323119", "Intro_010_B20_FrMove_NpcDiags", "box_SetFloat_v2_27.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_117_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_OnceOnly_v3_117;
    l1 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|722110345", "722110345", "Intro_010_B20_FrMove_NpcDiags", "box_OnceOnly_v3_117.Out", "box_ProximityRadiusListener_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_77();
    l0 = self.box_MultipleOR_87;
    l1 = self.box_ProximityRadiusListener_v3_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1855615149", "1855615149", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_87.Out", "box_ProximityRadiusListener_v3_77.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_Delay_v5_102;
    l1 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|527982916", "527982916", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_102.TimeElapsed", "box_PlayDialog_v6_72.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_130_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_130_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_132();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|215274949", "215274949", "Intro_010_B20_FrMove_NpcDiags", "box_GetLocalPlayer_v2_130.Out", "box_SetEntity_v2_132.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_115_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1084571388", "1084571388", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_115.Started", "box_Delay_v5_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_132_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_132_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_133();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2096378751", "2096378751", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_132.Out", "box_SetEntity_v2_133.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_118();
    l0 = self.box_Delay_v5_89;
    l1 = self.box_Switch_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1145355074", "1145355074", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_89.TimeElapsed", "box_Switch_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_71_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_ContextualActionListener_71;
    l1 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1755681447", "1755681447", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_71.Disabled", "box_MultipleAND_v2_6.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ContextualActionListener_71_Start()
    local params, l0;
    params = self:OnEnter_box_ContextualActionListener_71();
    l0 = self.box_ContextualActionListener_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1790244265", "1790244265", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_71.Start", "box_ContextualActionListener_71.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_38_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1681169163", "1681169163", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_38.Started", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_38_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|679241102", "679241102", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_38.Stopped", "box_PlayDialog_v6_38.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_5_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_5_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_5_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_5_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_5_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_5_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_5_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_5_SomeoneNear();
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1059344102", "1059344102", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_5.SomeoneNear", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_134_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_134_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1364450060", "1364450060", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_134.Out", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_23_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|565226481", "565226481", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_23.Started", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_23_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1878797621", "1878797621", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_23.Stopped", "box_PlayDialog_v6_23.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_42_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = self.box_ProximityRadiusListener_v3_42;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|599690681", "599690681", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_42.Disabled", "box_UseContextualActionModifier_v3_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_42_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_42();
    l0 = self.box_ProximityRadiusListener_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|822718972", "822718972", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_42.SomeoneNear", "box_ProximityRadiusListener_v3_42.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_7_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|811225939", "811225939", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_7.Finished", "box_Delay_v5_102.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_7_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|318677656", "318677656", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_7.QueueCancelled", "box_PlayDialog_v6_72.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_7_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1053917805", "1053917805", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_7.Stopped", "box_PlayDialog_v6_7.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_86();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_Switch_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1423665370", "1423665370", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_14.TimeElapsed", "box_Switch_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_55_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|271300187", "271300187", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_55.Output", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|701064470", "701064470", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_55.Output", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|365160641", "365160641", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_55.Output", "box_PlayDialog_v6_121.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_57_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|58743226", "58743226", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_57.Stopped", "box_PlayDialog_v6_57.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_99_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_PlayDialog_v6_99;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|348720630", "348720630", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_99.Started", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_12_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|740396832", "740396832", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_12.Stopped", "box_PlayDialog_v6_38.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1217869091", "1217869091", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_12.TimeElapsed", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_17_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_17;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1446393001", "1446393001", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_17.Disabled", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_17_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_17();
    l0 = self.box_ProximityRadiusListener_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|64495669", "64495669", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_17.SomeoneNear", "box_ProximityRadiusListener_v3_17.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_25_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1644545037", "1644545037", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_25.Started", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_113_Finished()
    local l0;
    l0 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1856307712", "1856307712", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_113.Finished", "Diag_NpcFence_Over", l0:GetLuaBox(), self);
    self:Diag_NpcFence_Over();
end;

function export:f_box_PlayDialog_v6_113_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1534490655", "1534490655", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_113.Stopped", "box_PlayDialog_v6_113.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_94_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_39();
    l0 = self.box_Gate_v3_94;
    l1 = self.box_Switch_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|580042976", "580042976", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_94.Out", "box_Switch_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_70();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_PlayDialog_v6_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|477320895", "477320895", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_2.TimeElapsed", "box_PlayDialog_v6_70.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_136_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_136_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_116();
    l0 = self.box_Gate_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1847413193", "1847413193", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_136.Out", "box_Gate_v3_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_96_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_96;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|603056409", "603056409", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_96.Started", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1967233325", "1967233325", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_95.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_95_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_81();
    l0 = self.box_Gate_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1736905071", "1736905071", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_95.Out", "box_Gate_v3_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Switch_86_Output_0()
    local l0, l1;
    l0 = self.box_Switch_86;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|751064802", "751064802", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_86.Output", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_86_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_99();
    l0 = self.box_Switch_86;
    l1 = self.box_PlayDialog_v6_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1054409106", "1054409106", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_86.Output", "box_PlayDialog_v6_99.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_86_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_100();
    l0 = self.box_Switch_86;
    l1 = self.box_PlayDialog_v6_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1636681806", "1636681806", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_86.Output", "box_PlayDialog_v6_100.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_86_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_69();
    l0 = self.box_Switch_86;
    l1 = self.box_PlayDialog_v6_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|388270305", "388270305", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_86.Output", "box_PlayDialog_v6_69.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_86_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_93();
    l0 = self.box_Switch_86;
    l1 = self.box_PlayDialog_v6_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|108519708", "108519708", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_86.Output", "box_PlayDialog_v6_93.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_86_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_37();
    l0 = self.box_Switch_86;
    l1 = self.box_PlayDialog_v6_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1793708467", "1793708467", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_86.Output", "box_PlayDialog_v6_37.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_127_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_47();
    l0 = self.box_MultipleOR_127;
    l1 = self.box_Gate_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1314463798", "1314463798", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_127.Out", "box_Gate_v3_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_137_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_137_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_136();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|518897076", "518897076", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_137.Out", "box_SetEntity_v2_136.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_53_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_78();
    l0 = self.box_PlayDialog_v6_53;
    l1 = self.box_PlayDialog_v6_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|621785321", "621785321", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_53.Finished", "box_PlayDialog_v6_78.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_53_Started()
    local l0;
    l0 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1874841128", "1874841128", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_53.Started", "Diag_NpcFence_Started", l0:GetLuaBox(), self);
    self:Diag_NpcFence_Started();
end;

function export:f_box_PlayDialog_v6_53_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1581183898", "1581183898", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_53.Stopped", "box_PlayDialog_v6_53.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_59_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_59();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1663837283", "1663837283", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_59.Enabled", "box_UseContextualActionModifier_v3_59.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1080011480", "1080011480", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_46.Out", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_118();
    l0 = self.box_Switch_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|233536282", "233536282", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_46.Out", "box_Switch_118.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_43();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2020628678", "2020628678", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_16.Out", "box_UseContextualActionModifier_v3_43.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_5();
    l0 = self.box_MultipleOR_22;
    l1 = self.box_ProximityRadiusListener_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1163633437", "1163633437", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_22.Out", "box_ProximityRadiusListener_v3_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_120_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_Gate_v3_120;
    l1 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1543491316", "1543491316", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_120.Closed", "box_Delay_v5_91.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_43();
    l0 = self.box_Gate_v3_120;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1141935459", "1141935459", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_120.Out", "box_UseContextualActionModifier_v3_43.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_106_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_PlayDialog_v6_106;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1106101415", "1106101415", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_106.Finished", "box_PlayDialog_v6_113.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_106_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_PlayDialog_v6_106;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|70314987", "70314987", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_106.QueueCancelled", "box_PlayDialog_v6_113.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_106_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_106();
    l0 = self.box_PlayDialog_v6_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|669576175", "669576175", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_106.Stopped", "box_PlayDialog_v6_106.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_OnceOnly_v3_49;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1664244470", "1664244470", "Intro_010_B20_FrMove_NpcDiags", "box_OnceOnly_v3_49.Out", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|862442402", "862442402", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_56.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_94();
    l0 = self.box_Gate_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1047214598", "1047214598", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_56.Out", "box_Gate_v3_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_123_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_90();
    l0 = self.box_OnceOnly_v3_123;
    l1 = self.box_PlayDialog_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1614590999", "1614590999", "Intro_010_B20_FrMove_NpcDiags", "box_OnceOnly_v3_123.Out", "box_PlayDialog_v6_90.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_91_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_59();
    l0 = self.box_Delay_v5_91;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|484640142", "484640142", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_91.Started", "box_UseContextualActionModifier_v3_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_45();
    l0 = self.box_Delay_v5_91;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1182241384", "1182241384", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_91.TimeElapsed", "box_UseContextualActionModifier_v3_45.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_84_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|137664262", "137664262", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_84.Disabled", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_66_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Gate_v3_66;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|999018817", "999018817", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_66.Closed", "box_Delay_v5_18.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Gate_v3_66;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|652709823", "652709823", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_66.Out", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_3_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|200479713", "200479713", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_3.Disabled", "box_MultipleAND_v2_6.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ContextualActionListener_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_71();
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_ContextualActionListener_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1754752518", "1754752518", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_3.Enabled", "box_ContextualActionListener_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_3_Start()
    local params, l0;
    params = self:OnEnter_box_ContextualActionListener_3();
    l0 = self.box_ContextualActionListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|919367989", "919367989", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_3.Start", "box_ContextualActionListener_3.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|238461728", "238461728", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_73.Out", "box_PlayDialog_v6_26.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1848184771", "1848184771", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_73.Out", "box_PlayDialog_v6_121.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Switch_39_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_50();
    l0 = self.box_Switch_39;
    l1 = self.box_PlayDialog_v6_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1639048635", "1639048635", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_39.Output", "box_PlayDialog_v6_50.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|827029582", "827029582", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_24.Disabled", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_8_Select()
    local l0, l1;
    l0 = self.box_ContextualActionListener_8;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1753551240", "1753551240", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_8.Select", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_13_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_107();
    l0 = self.box_Gate_v3_13;
    l1 = self.box_Delay_v5_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1074709248", "1074709248", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_13.Closed", "box_Delay_v5_107.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_107();
    l0 = self.box_Gate_v3_13;
    l1 = self.box_Delay_v5_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|15299513", "15299513", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_13.Out", "box_Delay_v5_107.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_141_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_Delay_v5_141;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1849974417", "1849974417", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_141.TimeElapsed", "box_UseContextualActionModifier_v3_33.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1797109885", "1797109885", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_40.Stopped", "box_PlayDialog_v6_23.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1689301808", "1689301808", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_40.TimeElapsed", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|814911960", "814911960", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_83.Out", "box_PlayDialog_v6_65.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_90();
    l0 = self.box_PlayDialog_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1281340824", "1281340824", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_83.Out", "box_PlayDialog_v6_90.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_110();
    l0 = self.box_ProximityRadiusListener_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1956998292", "1956998292", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_83.Out", "box_ProximityRadiusListener_v3_110.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_29_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_66();
    l0 = self.box_Gate_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|153850320", "153850320", "Intro_010_B20_FrMove_NpcDiags", "box_RandomFloat_v2_29.Out", "box_Gate_v3_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_139_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_139_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_112();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|104524044", "104524044", "Intro_010_B20_FrMove_NpcDiags", "box_GetLocalPlayer_v2_139.Out", "box_SetEntity_v2_112.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_70_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_70;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1627287912", "1627287912", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_70.Started", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_116_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_116;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1543211877", "1543211877", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_116.Closed", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_116_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_1();
    l0 = self.box_Gate_v3_116;
    l1 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|719505341", "719505341", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_116.Out", "box_ProximityRadiusListener_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_79_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_111();
    l0 = self.box_ContextualActionListener_79;
    l1 = self.box_ContextualActionListener_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1057357007", "1057357007", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_79.Enabled", "box_ContextualActionListener_111.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_79_Select()
    local l0, l1;
    l0 = self.box_ContextualActionListener_79;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1056465284", "1056465284", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_79.Select", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_19_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1237370122", "1237370122", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_19.Enabled", "box_UseContextualActionModifier_v3_19.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_19_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_20();
    l0 = self.box_ContextualActionListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|734267464", "734267464", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_19.UseCalled", "box_ContextualActionListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = self.box_MultipleAND_v2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1042269742", "1042269742", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleAND_v2_6.Out", "box_OutputOrder_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_126();
    l0 = self.box_Delay_v5_64;
    l1 = self.box_PlayDialog_v6_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1548019952", "1548019952", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_64.TimeElapsed", "box_PlayDialog_v6_126.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_90_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_PlayDialog_v6_90;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|658246734", "658246734", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_90.Finished", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_90_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_90();
    l0 = self.box_PlayDialog_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|29851671", "29851671", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_90.Stopped", "box_PlayDialog_v6_90.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_67_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Gate_v3_67;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1298458929", "1298458929", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_67.Closed", "box_Delay_v5_14.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_67_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_67;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|601520845", "601520845", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_67.Opened", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_122();
    l0 = self.box_Gate_v3_67;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|59118862", "59118862", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_67.Out", "box_RandomFloat_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_50_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_50;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1993251040", "1993251040", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_50.Started", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_1_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_1;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2095740404", "2095740404", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_1.Disabled", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_1_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_67();
    l0 = self.box_ProximityRadiusListener_v3_1;
    l1 = self.box_Gate_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1278660091", "1278660091", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_1.SomeoneFar", "box_Gate_v3_67.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_1_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_1;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|861612023", "861612023", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_1.SomeoneNear", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_100_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_PlayDialog_v6_100;
    l1 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2145065745", "2145065745", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_100.Started", "box_Delay_v5_82.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_67();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_Gate_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1963602952", "1963602952", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_36.Out", "box_Gate_v3_67.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_28_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_28;
    l1 = self.box_OnceOnly_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1676207352", "1676207352", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_28.Disabled", "box_OnceOnly_v3_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_28_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_28();
    l0 = self.box_ProximityRadiusListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1584894729", "1584894729", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_28.SomeoneNear", "box_ProximityRadiusListener_v3_28.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_29();
    l0 = self.box_MultipleOR_63;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1012021914", "1012021914", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_63.Out", "box_RandomFloat_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|327227440", "327227440", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_60.Out", "box_PlayDialog_v6_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_78();
    l0 = self.box_PlayDialog_v6_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1529375013", "1529375013", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_60.Out", "box_PlayDialog_v6_78.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_69_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_69;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|776768113", "776768113", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_69.Started", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_37_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_PlayDialog_v6_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1866172188", "1866172188", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_37.Started", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_131_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_131_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_130();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|688723370", "688723370", "Intro_010_B20_FrMove_NpcDiags", "box_GetPlayerGroup_v2_131.Out", "box_GetLocalPlayer_v2_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Delay_v5_82;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1537412544", "1537412544", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_82.TimeElapsed", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_125_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_119();
    l0 = self.box_Gate_v3_125;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1919486926", "1919486926", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_125.Closed", "box_UseContextualActionModifier_v3_119.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_125_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_45();
    l0 = self.box_Gate_v3_125;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1452801111", "1452801111", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_125.Out", "box_UseContextualActionModifier_v3_45.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_77_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_77_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_77_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_77_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_77_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_77_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_77_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_77_SomeoneNear();
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_ProximityRadiusListener_v3_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1208922155", "1208922155", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_77.SomeoneNear", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_138_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_138_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_48();
    l0 = self.box_ProximityRadiusListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|811515806", "811515806", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_138.Out", "box_ProximityRadiusListener_v3_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_43_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_120();
    l0 = self.box_Gate_v3_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1024014195", "1024014195", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_43.Disabled", "box_Gate_v3_120.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_67();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_Gate_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|269049396", "269049396", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_52.Out", "box_Gate_v3_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|832960145", "832960145", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_114.Out", "box_MultipleOR_109.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|76991990", "76991990", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_114.Out", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_84();
    l0 = self.box_ProximityRadiusListener_v3_32;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1434353966", "1434353966", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_32.Disabled", "box_UseContextualActionModifier_v3_84.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_42();
    l0 = self.box_ProximityRadiusListener_v3_32;
    l1 = self.box_ProximityRadiusListener_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|130625259", "130625259", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_32.Enabled", "box_ProximityRadiusListener_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_32_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_32();
    l0 = self.box_ProximityRadiusListener_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1352391842", "1352391842", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_32.SomeoneNear", "box_ProximityRadiusListener_v3_32.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_48_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_48;
    l1 = self.box_OnceOnly_v3_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|800961166", "800961166", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_48.Disabled", "box_OnceOnly_v3_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_48_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_48();
    l0 = self.box_ProximityRadiusListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1457810858", "1457810858", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_48.SomeoneNear", "box_ProximityRadiusListener_v3_48.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_135_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_135_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_137();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|955497211", "955497211", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_135.Out", "box_SetEntity_v2_137.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_74_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_74;
    l1 = self.box_OnceOnly_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1183126128", "1183126128", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_74.Out", "box_OnceOnly_v3_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_31_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_Gate_v3_31;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1132418673", "1132418673", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_31.Closed", "box_UseContextualActionModifier_v3_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_119();
    l0 = self.box_Gate_v3_31;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1363923679", "1363923679", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_31.Out", "box_UseContextualActionModifier_v3_119.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_112_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_112_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_28();
    l0 = self.box_ProximityRadiusListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2126052027", "2126052027", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_112.Out", "box_ProximityRadiusListener_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_26_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1166633012", "1166633012", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_26.QueueCancelled", "box_Delay_v5_30.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_26_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|291025973", "291025973", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_26.Started", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_26_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2134858214", "2134858214", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_26.Stopped", "box_PlayDialog_v6_26.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_18;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1421786820", "1421786820", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_18.TimeElapsed", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_51_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|333620085", "333620085", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_51.QueueCancelled", "box_Delay_v5_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_51_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|504888406", "504888406", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_51.Started", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_51_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1839417427", "1839417427", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_51.Stopped", "box_PlayDialog_v6_51.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|602901133", "602901133", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_11.Out", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1594236718", "1594236718", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_21.Out", "box_Gate_v3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_125();
    l0 = self.box_Gate_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1252481920", "1252481920", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_45.Disabled", "box_Gate_v3_125.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_MultipleOR_109;
    l1 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1078570949", "1078570949", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_109.Out", "box_Delay_v5_89.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_110_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_ProximityRadiusListener_v3_110;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1520683770", "1520683770", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_110.Disabled", "box_PlayDialog_v6_57.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_110_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_110;
    l1 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1066360682", "1066360682", "Intro_010_B20_FrMove_NpcDiags", "box_ProximityRadiusListener_v3_110.SomeoneNear", "box_OnceOnly_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_119_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|303302807", "303302807", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_119.Disabled", "box_Gate_v3_31.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ContextualActionListener_111_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_8();
    l0 = self.box_ContextualActionListener_111;
    l1 = self.box_ContextualActionListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1777953974", "1777953974", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_111.Enabled", "box_ContextualActionListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_111_Select()
    local l0, l1;
    l0 = self.box_ContextualActionListener_111;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1774289598", "1774289598", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_111.Select", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_35_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_35;
    l1 = self.box_OnceOnly_v3_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1443913127", "1443913127", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_35.Out", "box_OnceOnly_v3_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_93_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_93;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|43705045", "43705045", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_93.Started", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_126_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_126;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2075046745", "2075046745", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_126.Started", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UseContextualActionModifier_v3_62_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|683133251", "683133251", "Intro_010_B20_FrMove_NpcDiags", "box_UseContextualActionModifier_v3_62.Disabled", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_20_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_ContextualActionListener_20;
    l1 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1606778174", "1606778174", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_20.Disabled", "box_MultipleAND_v2_6.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_ContextualActionListener_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_3();
    l0 = self.box_ContextualActionListener_20;
    l1 = self.box_ContextualActionListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|801639301", "801639301", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_20.Enabled", "box_ContextualActionListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_20_Start()
    local params, l0;
    params = self:OnEnter_box_ContextualActionListener_20();
    l0 = self.box_ContextualActionListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1971985782", "1971985782", "Intro_010_B20_FrMove_NpcDiags", "box_ContextualActionListener_20.Start", "box_ContextualActionListener_20.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_140_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_140_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_138();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1763729004", "1763729004", "Intro_010_B20_FrMove_NpcDiags", "box_GetLocalPlayer_v2_140.Out", "box_SetEntity_v2_138.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_47_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_47;
    l1 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1005934728", "1005934728", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_47.Out", "box_MultipleOR_109.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_78_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_PlayDialog_v6_78;
    l1 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|863604971", "863604971", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_78.Finished", "box_PlayDialog_v6_7.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_78_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_PlayDialog_v6_78;
    l1 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2143632138", "2143632138", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_78.QueueCancelled", "box_PlayDialog_v6_7.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_78_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_78();
    l0 = self.box_PlayDialog_v6_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1293231994", "1293231994", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_78.Stopped", "box_PlayDialog_v6_78.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_55();
    l0 = self.box_Gate_v3_81;
    l1 = self.box_Switch_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1327428931", "1327428931", "Intro_010_B20_FrMove_NpcDiags", "box_Gate_v3_81.Out", "box_Switch_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1058511626", "1058511626", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_129.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_86();
    l0 = self.box_Switch_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|104071142", "104071142", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_129.Out", "box_Switch_86.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_1();
    l0 = self.box_MultipleOR_128;
    l1 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1704144967", "1704144967", "Intro_010_B20_FrMove_NpcDiags", "box_MultipleOR_128.Out", "box_ProximityRadiusListener_v3_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_120();
    l0 = self.box_Gate_v3_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|775268142", "775268142", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_98.Out", "box_Gate_v3_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_30_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1827630810", "1827630810", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_30.Stopped", "box_PlayDialog_v6_34.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|255564511", "255564511", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_30.TimeElapsed", "box_PlayDialog_v6_34.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_72_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_PlayDialog_v6_72;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|997803087", "997803087", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_72.Finished", "box_PlayDialog_v6_4.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_72_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_PlayDialog_v6_72;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1494480518", "1494480518", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_72.QueueCancelled", "box_PlayDialog_v6_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_72_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1099588362", "1099588362", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_72.Stopped", "box_PlayDialog_v6_72.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_107_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_107;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|614054897", "614054897", "Intro_010_B20_FrMove_NpcDiags", "box_Delay_v5_107.TimeElapsed", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RandomFloat_v2_103_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_103_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_13();
    l0 = self.box_Gate_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|899466878", "899466878", "Intro_010_B20_FrMove_NpcDiags", "box_RandomFloat_v2_103.Out", "box_Gate_v3_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Switch_118_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_96();
    l0 = self.box_Switch_118;
    l1 = self.box_PlayDialog_v6_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1570763582", "1570763582", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_118.Output", "box_PlayDialog_v6_96.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_118_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Switch_118;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1157336679", "1157336679", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_118.Output", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_118_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_124();
    l0 = self.box_Switch_118;
    l1 = self.box_PlayDialog_v6_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2011278601", "2011278601", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_118.Output", "box_PlayDialog_v6_124.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_118_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_92();
    l0 = self.box_Switch_118;
    l1 = self.box_PlayDialog_v6_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|299698797", "299698797", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_118.Output", "box_PlayDialog_v6_92.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_118_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_27();
    l0 = self.box_Switch_118;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|900695829", "900695829", "Intro_010_B20_FrMove_NpcDiags", "box_Switch_118.Output", "box_SetFloat_v2_27.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_124_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_124;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1268267871", "1268267871", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_124.Started", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_92_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_92;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1088810230", "1088810230", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_92.Started", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_133_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_133_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_134();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|61746543", "61746543", "Intro_010_B20_FrMove_NpcDiags", "box_SetEntity_v2_133.Out", "box_SetEntity_v2_134.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_88_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_OnceOnly_v3_88;
    l1 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1274393854", "1274393854", "Intro_010_B20_FrMove_NpcDiags", "box_OnceOnly_v3_88.Out", "box_PlayDialog_v6_53.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_125();
    l0 = self.box_Gate_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1993546326", "1993546326", "Intro_010_B20_FrMove_NpcDiags", "box_OutputOrder_v2_104.Out", "box_Gate_v3_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_121_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_PlayDialog_v6_121;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1162171132", "1162171132", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_121.QueueCancelled", "box_Delay_v5_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_121_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_PlayDialog_v6_121;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1257358762", "1257358762", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_121.Started", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_121_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|565112519", "565112519", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_121.Stopped", "box_PlayDialog_v6_121.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_34_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_34;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1408363944", "1408363944", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_34.Started", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_34_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|19857188", "19857188", "Intro_010_B20_FrMove_NpcDiags", "box_PlayDialog_v6_34.Stopped", "box_PlayDialog_v6_34.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|40662834");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_33_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_33_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103320552568530534",
        -- Entity,
        [1] = self.sherrif,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|64174281");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [2] = self.f_box_OutputOrder_v2_54_Out_2,
                [3] = self.f_box_OutputOrder_v2_54_Out_3,
                [4] = self.f_box_OutputOrder_v2_54_Out_4,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    params = {
        -- Group,
        [0] = "2099901706759312961",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3455922735",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.deputee,
        -- id2,
        [3] = "2103320552568530538",
        -- nearZone,
        [4] = 1.3,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    params = {
        -- Group,
        [0] = "2099901723259705099",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1170402564",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|134088826");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_122_Out,
    });
    params = {
        -- Max,
        [0] = 12,
        -- Min,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#C652DB56",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 6.5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|140456282");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_27_Out,
    });
    params = {
        -- Float,
        [0] = 25,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|226165147");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_130_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1986530320",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|273733118");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_132_Out,
    });
    params = {
        -- Entity,
        [0] = self.Marshal,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.warning_dialog_timer,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_71()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2099835261432108515",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = self.blessed_entity,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3988179787",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#3A74685D",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|321658332");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_134_Out,
    });
    params = {
        -- Entity,
        [0] = self.Deputy,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = self.blessed_entity,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1627102872",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.sherrif,
        -- id2,
        [3] = "2101642707471473821",
        -- nearZone,
        [4] = 1.3,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_7()
    local params;
    params = {
        -- Group,
        [0] = "2099901706759312961",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2808186193",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
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

function export:OnEnter_box_Switch_55()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = "2101633279336655548",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1534196790",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_99()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2576253416",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = self.deputee,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2435010819",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_113()
    local params;
    params = {
        -- Group,
        [0] = "2099901706759312961",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2116711016",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_94()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|545381824");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_136_Out,
    });
    params = {
        -- Entity,
        [0] = self.Deputy,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_96()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1986089515",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|553042374");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [2] = self.f_box_OutputOrder_v2_95_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_86()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|606505044");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_137_Out,
    });
    params = {
        -- Entity,
        [0] = self.Sherrif,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_53()
    local params;
    params = {
        -- Group,
        [0] = "2101633074230995377",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1084950147",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|657666478");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_59_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103320552566433378",
        -- Entity,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|738417330");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|762988080");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_120()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_106()
    local params;
    params = {
        -- Group,
        [0] = "2099901706759312961",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1534196790",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|869382082");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|933111286");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_84_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103318037745650720",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_66()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_3()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2099835261434205675",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|950881752");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_39()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|989292204");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_24_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103318037422689308",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_8()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101642707471473821",
        -- UserFilter,
        [1] = self.sherrif,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_13()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_141()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
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

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1031237393");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
                [2] = self.f_box_OutputOrder_v2_83_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1043384257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_29_Out,
    });
    params = {
        -- Max,
        [0] = 12,
        -- Min,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1051115539");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_70()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "100926168",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_116()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_79()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101642707473570977",
        -- UserFilter,
        [1] = self.deputee,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1142077728");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_19_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_19_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103320552568530538",
        -- Entity,
        [1] = self.deputee,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_6()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_90()
    local params;
    params = {
        -- Group,
        [0] = "2099901692102317458",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4042578585",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_67()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_50()
    local params;
    params = {
        -- Group,
        [0] = self.blessed_entity,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3790256005",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#C652DB56",
        -- farZone,
        [2] = 10,
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 7,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_100()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2573165831",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#F43BD08E",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 13,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1360045462");
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
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_69()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3488954664",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_37()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4244108258",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1431251436");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_131_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_125()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_77()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#6B4C1F59",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 7,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1496828421");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_138_Out,
    });
    params = {
        -- Entity,
        [0] = self.Deputy,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1511399192");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_43_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101642707469376665",
        -- Entity,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1522823253");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.marshal,
        -- id2,
        [3] = "2101642707469376665",
        -- nearZone,
        [4] = 1.3,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#E3505798",
        -- id2,
        [3] = self.deputee,
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1563988613");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_135_Out,
    });
    params = {
        -- Entity,
        [0] = self.Marshal,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_31()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1685309177");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_112_Out,
    });
    params = {
        -- Entity,
        [0] = self.Deputy,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = self.blessed_entity,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "210285650",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
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

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = self.blessed_entity,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "399410080",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1727901453");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1732571770");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_45_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101642707471473821",
        -- Entity,
        [1] = self.sherrif,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_110()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#E3505798",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1740829273");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_119_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101642707473570977",
        -- Entity,
        [1] = self.deputee,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_111()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101642707469376665",
        -- UserFilter,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_93()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3993036382",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_126()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3731695813",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1794925932");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_62_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103317718380854561",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_20()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2099835261434205671",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1809994581");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_47()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_78()
    local params;
    params = {
        -- Group,
        [0] = "2101633074230995377",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2967531577",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_81()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1847690204");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1849894661");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_72()
    local params;
    params = {
        -- Group,
        [0] = "2101633074230995377",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2504754340",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_107()
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

function export:OnEnter_box_RandomFloat_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|1948760588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_103_Out,
    });
    params = {
        -- Max,
        [0] = 10,
        -- Min,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Switch_118()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_124()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3488954664",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_92()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3143880897",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2035349312");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_133_Out,
    });
    params = {
        -- Entity,
        [0] = self.Sherrif,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_FrMove_NpcDiags|2053750560");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_121()
    local params;
    params = {
        -- Group,
        [0] = self.blessed_entity,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "935240796",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_34()
    local params;
    params = {
        -- Group,
        [0] = self.blessed_entity,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3384316812",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_122_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_14;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.warning_dialog_timer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_130_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_132_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.marshal = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_134_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.deputee = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_136_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.deputee = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_137_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.sherrif = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_29_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_18;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_139_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_131_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_77_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_77;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_77_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_77;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_77_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_77;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_77_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_77;
    self.blessed_entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_138_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.deputee = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_135_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.marshal = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_112_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.deputee = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_140_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_103_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_107;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_133_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.sherrif = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Diag_NpcFence_Started()
    
end;
function export:Diag_NpcFence_Over()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable_Diags" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Disable_Team_Callouts" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Diag_NpcFire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Team_Callouts" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_Diags_NpcFence" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop_Diags_NpcFence" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Diag_NpcFence_Over" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Diag_NpcFence_Started" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Deputy" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Marshal" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Sherrif" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
