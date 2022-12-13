LUAC�L -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni45/uni45_020_b10.domino
-- User graph: UNI45_020_B10_STP_Listener
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eSTP" Type="Nomad|entity{}" />
    <DataIn Name="eEntity" Type="Nomad|entity{}" />
    <DataIn Name="e_Marker" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayRandomDialog.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetValueNil.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayBombIndicatorUI.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3742346421.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2275103624.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3585825630.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2832675661.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1775499366.bnk]], "CSoundResource");
        cboxRes:LoadResource([[314941639.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2402438874.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1236148851.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10_STP_Listener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "BombDefused",
                delayed = false,
            },
            [1] = {
                name = "DefuserStopped",
                delayed = false,
            },
            [2] = {
                name = "End",
                delayed = false,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Start",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "e_Marker",
                type = "entity",
            },
            [1] = {
                name = "eEntity",
                type = "entity",
            },
            [2] = {
                name = "eSTP",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "e_STP_Completed",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
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
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PlayRandomDialog.lua")] = {
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
                name = "AllDone",
                delayed = true,
            },
            [1] = {
                name = "PlayOut",
                delayed = false,
            },
            [2] = {
                name = "StopOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "maxTime",
                type = "float",
            },
            [2] = {
                name = "minTime",
                type = "float",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
                dynamicType = 1,
            },
            [4] = {
                name = "TargetEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SetValueNil.lua")] = {
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
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "bool",
                type = "bool",
            },
            [2] = {
                name = "ent",
                type = "entity",
            },
            [3] = {
                name = "float",
                type = "float",
            },
            [4] = {
                name = "group",
                type = "group",
            },
            [5] = {
                name = "int",
                type = "int",
            },
            [6] = {
                name = "oasis",
                type = "oasis",
            },
            [7] = {
                name = "sound",
                type = "Sound",
            },
            [8] = {
                name = "str",
                type = "string",
            },
        },
        dataOutCount = 9,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayBombIndicatorUI.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Release",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Displayed",
                delayed = false,
            },
            [1] = {
                name = "Released",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "markerId",
                type = "entity",
            },
            [1] = {
                name = "time",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI45_020_B10_STP_Listener";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener";
    self.Start = DummyFunction;
    self.End = DummyFunction;
    self.BombDefused = DummyFunction;
    self.DefuserStopped = DummyFunction;
    self.Out = DummyFunction;
    self.e_Entity = nil;
    self.e_TargetEntity = nil;
    self.f_timer = 60;
    self.box_PlayRandomDialog_10 = cbox:CreateBox("Domino/System/PlayRandomDialog.lua");
    l0 = self.box_PlayRandomDialog_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|144500794");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 7,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- AllDone,
        [0] = self.f_box_PlayRandomDialog_10_AllDone,
    });
    self.box_SoundModifier_v2_37 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|220864245");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_19 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|359515750");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_19_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_19_Interrupt,
    });
    self.box_HealthListener_v6_1 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|423934409");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_1_Killed,
    });
    self.box_ContextualActionListener_17 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|469981124");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_17_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_17_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_17_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_17_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_17_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_17_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_17_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_17_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_17_Start,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|565436231");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_HealthListener_v6_9 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|667086477");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_9_Killed,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|887953140");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_35_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|995364592");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_DisplayCustomUIMsg_v5_36 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1174820256");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_36_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_36_OnHide,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1618389098");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1261009796", "1261009796", "UNI45_020_B10_STP_Listener", "In", "box_OutputOrder_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_21();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|639839789", "639839789", "UNI45_020_B10_STP_Listener", "box_Simple_Node_26.Out", "box_IsEntityLoaded_v3_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_HealthListener_v6_1();
    l0 = self.box_HealthListener_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|2092803761", "2092803761", "UNI45_020_B10_STP_Listener", "box_Simple_Node_26.Out", "box_HealthListener_v6_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1886300452", "1886300452", "UNI45_020_B10_STP_Listener", "box_Simple_Node_26.Out", "box_Delay_v5_35.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_ContextualActionListener_19();
    l0 = self.box_ContextualActionListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|2018085825", "2018085825", "UNI45_020_B10_STP_Listener", "box_Simple_Node_26.Out", "box_ContextualActionListener_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1458736431", "1458736431", "UNI45_020_B10_STP_Listener", "box_Simple_Node_12.Out", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|650650059", "650650059", "UNI45_020_B10_STP_Listener", "box_SetEntity_v2_5.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayRandomDialog_10_AllDone()
    local l0, l1;
    l0 = self.box_PlayRandomDialog_10;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1443919113", "1443919113", "UNI45_020_B10_STP_Listener", "box_PlayRandomDialog_10.AllDone", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_18_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1690648735", "1690648735", "UNI45_020_B10_STP_Listener", "box_UseContextualActionModifier_v3_18.Disabled", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_21_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_25();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1209082210", "1209082210", "UNI45_020_B10_STP_Listener", "box_IsEntityLoaded_v3_21.True", "box_IsPawnAlive_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_19_End()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_5();
    l0 = self.box_ContextualActionListener_19;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1508169325", "1508169325", "UNI45_020_B10_STP_Listener", "box_ContextualActionListener_19.End", "box_SetEntity_v2_5.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_19_Interrupt()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    l0 = self.box_ContextualActionListener_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|469667634", "469667634", "UNI45_020_B10_STP_Listener", "box_ContextualActionListener_19.Interrupt", "box_UseContextualActionModifier_v3_18.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_1_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_1;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|2095791019", "2095791019", "UNI45_020_B10_STP_Listener", "box_HealthListener_v6_1.Killed", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_17_End()
    self:OnExit_box_ContextualActionListener_17_End();
end;

function export:f_box_ContextualActionListener_17_Interrupt()
    self:OnExit_box_ContextualActionListener_17_Interrupt();
end;

function export:f_box_ContextualActionListener_17_Markup1()
    self:OnExit_box_ContextualActionListener_17_Markup1();
end;

function export:f_box_ContextualActionListener_17_Markup2()
    self:OnExit_box_ContextualActionListener_17_Markup2();
end;

function export:f_box_ContextualActionListener_17_Select()
    self:OnExit_box_ContextualActionListener_17_Select();
end;

function export:f_box_ContextualActionListener_17_Start()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_17_Start();
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_ContextualActionListener_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1359040688", "1359040688", "UNI45_020_B10_STP_Listener", "box_ContextualActionListener_17.Start", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayBombIndicatorUI_3_Displayed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayBombIndicatorUI.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_36();
    l0 = self.box_DisplayCustomUIMsg_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|388165538", "388165538", "UNI45_020_B10_STP_Listener", "box_DisplayBombIndicatorUI_3.Displayed", "box_DisplayCustomUIMsg_v5_36.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_DisplayBombIndicatorUI_3_Released()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayBombIndicatorUI.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_36();
    l0 = self.box_DisplayCustomUIMsg_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|336630189", "336630189", "UNI45_020_B10_STP_Listener", "box_DisplayBombIndicatorUI_3.Released", "box_DisplayCustomUIMsg_v5_36.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1301493152", "1301493152", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_6.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_32();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1430631742", "1430631742", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_6.Out", "box_IsPawnAlive_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1233285204", "1233285204", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_6.Out", "BombDefused", clone:GetLuaBox(), self);
    self:BombDefused();
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|6475676", "6475676", "UNI45_020_B10_STP_Listener", "box_MultipleOR_4.Out", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetValueNil_14_Out()
    local l0;
    self:OnExit_box_SetValueNil_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1456936281", "1456936281", "UNI45_020_B10_STP_Listener", "box_SetValueNil_14.Out", "End", clone:GetLuaBox(), self);
    self:End();
end;

function export:f_box_IsPawnAlive_v2_15_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_16();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|2002267718", "2002267718", "UNI45_020_B10_STP_Listener", "box_IsPawnAlive_v2_15.True", "box_SetContextualStrategy_16.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_9_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_HealthListener_v6_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1840790287", "1840790287", "UNI45_020_B10_STP_Listener", "box_HealthListener_v6_9.Killed", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_34_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_33();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1469553747", "1469553747", "UNI45_020_B10_STP_Listener", "box_IsEntityLoaded_v3_34.True", "box_IsPawnAlive_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_11_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_9();
    l0 = self.box_HealthListener_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1160034747", "1160034747", "UNI45_020_B10_STP_Listener", "box_SetEntity_v2_11.Out", "box_HealthListener_v6_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_35_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayBombIndicatorUI_3();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayBombIndicatorUI.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1430640355", "1430640355", "UNI45_020_B10_STP_Listener", "box_Delay_v5_35.Stopped", "box_DisplayBombIndicatorUI_3.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayBombIndicatorUI_3();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayBombIndicatorUI.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1591280772", "1591280772", "UNI45_020_B10_STP_Listener", "box_Delay_v5_35.TimeElapsed", "box_DisplayBombIndicatorUI_3.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1131418077", "1131418077", "UNI45_020_B10_STP_Listener", "box_MultipleOR_29.Out", "Start", l0:GetLuaBox(), self);
    self:Start();
end;

function export:f_box_IsPawnAlive_v2_32_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_30();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1200449503", "1200449503", "UNI45_020_B10_STP_Listener", "box_IsPawnAlive_v2_32.True", "box_SetContextualStrategy_30.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_25_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayRandomDialog_10();
    l0 = self.box_PlayRandomDialog_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1494736886", "1494736886", "UNI45_020_B10_STP_Listener", "box_IsPawnAlive_v2_25.True", "box_PlayRandomDialog_10.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_36_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_DisplayCustomUIMsg_v5_36;
    l1 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1601779542", "1601779542", "UNI45_020_B10_STP_Listener", "box_DisplayCustomUIMsg_v5_36.OnDisplay", "box_SoundModifier_v2_37.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_36_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_DisplayCustomUIMsg_v5_36;
    l1 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|546631811", "546631811", "UNI45_020_B10_STP_Listener", "box_DisplayCustomUIMsg_v5_36.OnHide", "box_SoundModifier_v2_37.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1816604821", "1816604821", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_22.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetValueNil_14();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1200659885", "1200659885", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_22.Out", "box_SetValueNil_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|877315500", "877315500", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_22.Out", "box_Print_v2_23.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1160763618", "1160763618", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_7.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_17();
    l0 = self.box_ContextualActionListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|250483961", "250483961", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_7.Out", "box_ContextualActionListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1165738045", "1165738045", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_7.Out", "box_SetEntity_v2_11.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_27();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|584548802", "584548802", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_7.Out", "box_Print_v2_27.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1492085855", "1492085855", "UNI45_020_B10_STP_Listener", "box_SetContextualStrategy_20.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|777326478", "777326478", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_24.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_15();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1866531313", "1866531313", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_24.Out", "box_IsPawnAlive_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|126593107", "126593107", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_24.Out", "DefuserStopped", clone:GetLuaBox(), self);
    self:DefuserStopped();
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_34();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|250385937", "250385937", "UNI45_020_B10_STP_Listener", "box_MultipleOR_8.Out", "box_IsEntityLoaded_v3_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_1();
    l0 = self.box_HealthListener_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|629323591", "629323591", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_2.Out", "box_HealthListener_v6_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_19();
    l0 = self.box_ContextualActionListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1580200453", "1580200453", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_2.Out", "box_ContextualActionListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1605610604", "1605610604", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_2.Out", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|133371888", "133371888", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_28.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_17();
    l0 = self.box_ContextualActionListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|333919928", "333919928", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_28.Out", "box_ContextualActionListener_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_9();
    l0 = self.box_HealthListener_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|127795374", "127795374", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_28.Out", "box_HealthListener_v6_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_31();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|2000942719", "2000942719", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_28.Out", "box_IsPawnAlive_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1575876709", "1575876709", "UNI45_020_B10_STP_Listener", "box_OutputOrder_v2_28.Out", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsPawnAlive_v2_31_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|809620738", "809620738", "UNI45_020_B10_STP_Listener", "box_IsPawnAlive_v2_31.False", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPawnAlive_v2_31_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_20();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|270480537", "270480537", "UNI45_020_B10_STP_Listener", "box_IsPawnAlive_v2_31.True", "box_SetContextualStrategy_20.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_33_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayRandomDialog_10();
    l0 = self.box_PlayRandomDialog_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|489193040", "489193040", "UNI45_020_B10_STP_Listener", "box_IsPawnAlive_v2_33.True", "box_PlayRandomDialog_10.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|@n_Cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|@n_CultBarksB10");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|83575043");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_5_Out,
    });
    params = {
        -- Entity,
        [0] = self.eSTP,
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_10()
    local params;
    params = {
        -- Group,
        [0] = self.e_Entity,
        -- maxTime,
        [1] = 10,
        -- minTime,
        [2] = 5,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "1236148851",
                [1] = "1775499366",
                [2] = "2402438874",
                [3] = "314941639",
                [4] = "2832675661",
                [5] = "3742346421",
                [6] = "2275103624",
            },
            count = 7,
        },
        -- TargetEntity,
        [4] = nil,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_37()
    local params;
    params = {
        -- Pawns,
        [0] = "2103592531513081031",
        -- SoundId,
        [1] = "3585825630",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|338452268");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_18_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = self.eSTP,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|358704776");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_21_True,
    });
    params = {
        -- entityId,
        [0] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_19()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.eSTP,
        -- UserFilter,
        [1] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_1()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_17()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.eSTP,
    };
    return params;
end;

function export:OnEnter_box_DisplayBombIndicatorUI_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayBombIndicatorUI.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayBombIndicatorUI_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|476396825");
    l0:SetConnections({
        -- Displayed,
        [0] = self.f_box_DisplayBombIndicatorUI_3_Displayed,
        -- Released,
        [1] = self.f_box_DisplayBombIndicatorUI_3_Released,
    });
    params = {
        -- markerId,
        [0] = self.e_Marker,
        -- time,
        [1] = 43,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|530965224");
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

function export:OnEnter_box_SetValueNil_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|570364512");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|585387246");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_15_True,
    });
    params = {
        -- Pawn,
        [0] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_9()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|682912521");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_34_True,
    });
    params = {
        -- entityId,
        [0] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|698639999");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "--- UNI45_020_BEAT10 - CULTIST SELECT BOMB STP  ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|874074032");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_11_Out,
    });
    params = {
        -- Entity,
        [0] = self.eEntity,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1048954972");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103274571625948569",
        -- Group,
        [1] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1066102290");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_32_True,
    });
    params = {
        -- Pawn,
        [0] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1173054243");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_25_True,
    });
    params = {
        -- Pawn,
        [0] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_36()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B10_Warning",
            id = "744048",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1290714753");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1519309193");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1557367814");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_20_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104837618278632370",
        -- Group,
        [1] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1581992549");
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

function export:OnEnter_box_SetContextualStrategy_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1661724395");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103274571625948569",
        -- Group,
        [1] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1705078476");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1873167393");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
                [3] = self.f_box_OutputOrder_v2_28_Out_3,
                [4] = self.f_box_OutputOrder_v2_28_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1897608411");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_31_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_31_True,
    });
    params = {
        -- Pawn,
        [0] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|1986792790");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_33_True,
    });
    params = {
        -- Pawn,
        [0] = self.e_Entity,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10_STP_Listener|2084375199");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 4,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "--- STP_LISTENER -  TARGET NPC KILLED ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_17_End()
    local l0;
    l0 = self.box_ContextualActionListener_17;
    self.e_Entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_17_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_17;
    self.e_Entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_17_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_17;
    self.e_Entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_17_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_17;
    self.e_Entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_17_Select()
    local l0;
    l0 = self.box_ContextualActionListener_17;
    self.e_Entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_17_Start()
    local l0;
    l0 = self.box_ContextualActionListener_17;
    self.e_Entity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetValueNil_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    self.e_Entity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Entity = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Start()
    
end;
function export:End()
    
end;
function export:BombDefused()
    
end;
function export:DefuserStopped()
    
end;
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="BombDefused" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DefuserStopped" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="End" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Start" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="e_Marker" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eEntity" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSTP" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="e_STP_Completed" AnchorDynType="0" DataTypeID="entity" />
	</DatasOut>
</DominoMetadata>
