LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni49/uni49_010/uni49_010_doors.domino
-- User graph: _SafetyValves_Master
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="TimerFireDuration" Type="Core|float" />
    <DataIn Name="TimerSparksStart" Type="Core|float" />
    <DataIn Name="TimerFireStart" Type="Core|float" />
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
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4143691650.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Master.debug.lua")] = {
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
            [0] = {
                name = "TimerFireDuration",
                type = "float",
            },
            [1] = {
                name = "TimerFireStart",
                type = "float",
            },
            [2] = {
                name = "TimerSparksStart",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Destroyed",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "SoundOFF",
                delayed = false,
            },
            [3] = {
                name = "SoundON",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "MissionBlock",
                type = "missionblock",
            },
            [1] = {
                name = "MissionBlockBlissStims",
                type = "missionblocklayer",
            },
            [2] = {
                name = "MissionBlockFireFearStims",
                type = "missionblocklayer",
            },
            [3] = {
                name = "TimerFireDuration",
                type = "float",
            },
            [4] = {
                name = "TimerFireStart",
                type = "float",
            },
            [5] = {
                name = "TimerSparksStart",
                type = "float",
            },
            [6] = {
                name = "vfx_Bliss",
                type = "entity",
            },
            [7] = {
                name = "vfx_Fire",
                type = "entity",
            },
            [8] = {
                name = "vfx_Sparks",
                type = "entity",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "_SafetyValves_Master";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master";
    self.box_SoundModifier_v2_188 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|81246072");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_177 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|97414552");
    l0:SetConnections({
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|155437569");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|160839497");
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
        [0] = self.f_box_MultipleOR_122_Out,
    });
    self.box_PreconditionListener_8 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|199513766");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_8_PreconditionMet,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|274060455");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_SoundModifier_v2_172 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|283767282");
    l0:SetConnections({
    });
    self.box__SafetyValves_Manager_13 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|322332983");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_13_Out,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|394867549");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_SoundModifier_v2_174 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|430169088");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_178 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|542780032");
    l0:SetConnections({
    });
    self.box__SafetyValves_Manager_37 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|588286817");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_37_Out,
    });
    self.box__SafetyValves_Manager_24 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|640067386");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_24_Out,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|670233032");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|689561551");
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
        [0] = self.f_box_MultipleOR_91_Out,
    });
    self.box__SafetyValves_Manager_7 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|691693239");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_7_Out,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|706146574");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_SoundModifier_v2_179 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|714818456");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_195 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|782304308");
    l0:SetConnections({
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|809132741");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box__SafetyValves_Manager_18 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|953969409");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_18_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|954531349");
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
    self.box__SafetyValves_Manager_34 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|994896591");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_34_Out,
    });
    self.box__SafetyValves_Manager_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1013375882");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_12_Out,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1037836137");
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box__SafetyValves_Manager_23 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1070833962");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_23_Out,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1122624156");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box__SafetyValves_Manager_4 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1308315549");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_4_Out,
    });
    self.box_SoundModifier_v2_181 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1360527014");
    l0:SetConnections({
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1396282738");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_SoundModifier_v2_192 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1400963191");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_186 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1447114875");
    l0:SetConnections({
    });
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1454505184");
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
        [0] = self.f_box_MultipleOR_92_Out,
    });
    self.box__SafetyValves_Manager_11 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1476403603");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_11_Out,
    });
    self.box__SafetyValves_Manager_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1539396018");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_14_Out,
    });
    self.box_SoundModifier_v2_173 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1577410169");
    l0:SetConnections({
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1672551371");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box__SafetyValves_Manager_32 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1680709795");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_32_Out,
    });
    self.box__SafetyValves_Manager_10 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._SafetyValves_Manager.debug.lua");
    l0 = self.box__SafetyValves_Manager_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SafetyValves_Manager_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1741485339");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box__SafetyValves_Manager_10_Out,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1745995850");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_MessageListener_v3_123 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1818539195");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_123_Received,
    });
    self.box_MessageListener_v3_125 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1886578095");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_125_Received,
    });
    self.box_SoundModifier_v2_189 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1903600297");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_180 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1965192268");
    l0:SetConnections({
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|2100060512");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|403836898", "403836898", "_SafetyValves_Master", "In", "box_OutputOrder_v2_85.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_6();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1161449079", "1161449079", "_SafetyValves_Master", "box_Simple_Node_47.Out", "box_GetPreconditionState_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_197_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_191();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1550084190", "1550084190", "_SafetyValves_Master", "box_Simple_Node_197.Out", "box_OutputOrder_v2_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_185();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1506719263", "1506719263", "_SafetyValves_Master", "box_Simple_Node_197.Out", "box_OutputOrder_v2_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1522515571", "1522515571", "_SafetyValves_Master", "box_Simple_Node_197.Out", "box_OutputOrder_v2_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_29();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|986177891", "986177891", "_SafetyValves_Master", "box_Simple_Node_44.Out", "box_GetPreconditionState_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_39();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|353906104", "353906104", "_SafetyValves_Master", "box_Simple_Node_38.Out", "box_GetPreconditionState_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_29_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_125();
    l0 = self.box_MessageListener_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|400506696", "400506696", "_SafetyValves_Master", "box_GetPreconditionState_29.NotValid", "box_MessageListener_v3_125.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_29_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|96773368", "96773368", "_SafetyValves_Master", "box_GetPreconditionState_29.Valid", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_32();
    l0 = self.box_MultipleOR_90;
    l1 = self.box__SafetyValves_Manager_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|823235910", "823235910", "_SafetyValves_Master", "box_MultipleOR_90.Out", "box__SafetyValves_Manager_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_24();
    l0 = self.box_MultipleOR_122;
    l1 = self.box__SafetyValves_Manager_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1476263399", "1476263399", "_SafetyValves_Master", "box_MultipleOR_122.Out", "box__SafetyValves_Manager_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PreconditionListener_8_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_8;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|773094634", "773094634", "_SafetyValves_Master", "box_PreconditionListener_8.PreconditionMet", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_6_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_8();
    l0 = self.box_PreconditionListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|505234263", "505234263", "_SafetyValves_Master", "box_GetPreconditionState_6.NotValid", "box_PreconditionListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_6_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1493632721", "1493632721", "_SafetyValves_Master", "box_GetPreconditionState_6.Valid", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_18();
    l0 = self.box_MultipleOR_26;
    l1 = self.box__SafetyValves_Manager_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1771799674", "1771799674", "_SafetyValves_Master", "box_MultipleOR_26.Out", "box__SafetyValves_Manager_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_180();
    l0 = self.box_SoundModifier_v2_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1493429155", "1493429155", "_SafetyValves_Master", "box_OutputOrder_v2_187.Out", "box_SoundModifier_v2_180.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_187_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_195();
    l0 = self.box_SoundModifier_v2_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|36910581", "36910581", "_SafetyValves_Master", "box_OutputOrder_v2_187.Out", "box_SoundModifier_v2_195.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_187_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_181();
    l0 = self.box_SoundModifier_v2_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1730119752", "1730119752", "_SafetyValves_Master", "box_OutputOrder_v2_187.Out", "box_SoundModifier_v2_181.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_187_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_177();
    l0 = self.box_SoundModifier_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|688405665", "688405665", "_SafetyValves_Master", "box_OutputOrder_v2_187.Out", "box_SoundModifier_v2_177.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box__SafetyValves_Manager_13_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_13;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|11328376", "11328376", "_SafetyValves_Master", "box__SafetyValves_Manager_13.Out", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_13();
    l0 = self.box_MultipleOR_89;
    l1 = self.box__SafetyValves_Manager_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|18251196", "18251196", "_SafetyValves_Master", "box_MultipleOR_89.Out", "box__SafetyValves_Manager_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box__SafetyValves_Manager_37_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_37;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|324062254", "324062254", "_SafetyValves_Master", "box__SafetyValves_Manager_37.Out", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__SafetyValves_Manager_24_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_24;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|347440760", "347440760", "_SafetyValves_Master", "box__SafetyValves_Manager_24.Out", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_4();
    l0 = self.box_MultipleOR_108;
    l1 = self.box__SafetyValves_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|934058692", "934058692", "_SafetyValves_Master", "box_MultipleOR_108.Out", "box__SafetyValves_Manager_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_34();
    l0 = self.box_MultipleOR_91;
    l1 = self.box__SafetyValves_Manager_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|2033272347", "2033272347", "_SafetyValves_Master", "box_MultipleOR_91.Out", "box__SafetyValves_Manager_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box__SafetyValves_Manager_7_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_7;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|987010118", "987010118", "_SafetyValves_Master", "box__SafetyValves_Manager_7.Out", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_14();
    l0 = self.box_MultipleOR_88;
    l1 = self.box__SafetyValves_Manager_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1767515379", "1767515379", "_SafetyValves_Master", "box_MultipleOR_88.Out", "box__SafetyValves_Manager_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_11();
    l0 = self.box_MultipleOR_25;
    l1 = self.box__SafetyValves_Manager_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|2102689756", "2102689756", "_SafetyValves_Master", "box_MultipleOR_25.Out", "box__SafetyValves_Manager_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_185_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_179();
    l0 = self.box_SoundModifier_v2_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|340227921", "340227921", "_SafetyValves_Master", "box_OutputOrder_v2_185.Out", "box_SoundModifier_v2_179.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_185_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_174();
    l0 = self.box_SoundModifier_v2_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|381058591", "381058591", "_SafetyValves_Master", "box_OutputOrder_v2_185.Out", "box_SoundModifier_v2_174.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_185_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_173();
    l0 = self.box_SoundModifier_v2_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|2070958688", "2070958688", "_SafetyValves_Master", "box_OutputOrder_v2_185.Out", "box_SoundModifier_v2_173.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box__SafetyValves_Manager_18_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_18;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1280171715", "1280171715", "_SafetyValves_Master", "box__SafetyValves_Manager_18.Out", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_7();
    l0 = self.box_MultipleOR_36;
    l1 = self.box__SafetyValves_Manager_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1703431427", "1703431427", "_SafetyValves_Master", "box_MultipleOR_36.Out", "box__SafetyValves_Manager_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_191_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_192();
    l0 = self.box_SoundModifier_v2_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1407359468", "1407359468", "_SafetyValves_Master", "box_OutputOrder_v2_191.Out", "box_SoundModifier_v2_192.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_191_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_188();
    l0 = self.box_SoundModifier_v2_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1364867385", "1364867385", "_SafetyValves_Master", "box_OutputOrder_v2_191.Out", "box_SoundModifier_v2_188.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_191_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_189();
    l0 = self.box_SoundModifier_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|967266858", "967266858", "_SafetyValves_Master", "box_OutputOrder_v2_191.Out", "box_SoundModifier_v2_189.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_191_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_178();
    l0 = self.box_SoundModifier_v2_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|288199032", "288199032", "_SafetyValves_Master", "box_OutputOrder_v2_191.Out", "box_SoundModifier_v2_178.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_191_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_186();
    l0 = self.box_SoundModifier_v2_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|866767430", "866767430", "_SafetyValves_Master", "box_OutputOrder_v2_191.Out", "box_SoundModifier_v2_186.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_191_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_172();
    l0 = self.box_SoundModifier_v2_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|222454282", "222454282", "_SafetyValves_Master", "box_OutputOrder_v2_191.Out", "box_SoundModifier_v2_172.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box__SafetyValves_Manager_34_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_34;
    l1 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|455031121", "455031121", "_SafetyValves_Master", "box__SafetyValves_Manager_34.Out", "box_MultipleOR_91.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|444859657", "444859657", "_SafetyValves_Master", "box_OutputOrder_v2_85.Out", "box_Simple_Node_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1415763564", "1415763564", "_SafetyValves_Master", "box_OutputOrder_v2_85.Out", "box_Simple_Node_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|785698593", "785698593", "_SafetyValves_Master", "box_OutputOrder_v2_85.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_197();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|2058895931", "2058895931", "_SafetyValves_Master", "box_OutputOrder_v2_85.Out", "box_Simple_Node_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__SafetyValves_Manager_12_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_12;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1591944280", "1591944280", "_SafetyValves_Master", "box__SafetyValves_Manager_12.Out", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = self.box_MultipleOR_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|177402817", "177402817", "_SafetyValves_Master", "box_MultipleOR_40.Out", "box_OutputOrder_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__SafetyValves_Manager_23_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_23;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|34094302", "34094302", "_SafetyValves_Master", "box__SafetyValves_Manager_23.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_10();
    l0 = self.box_MultipleOR_106;
    l1 = self.box__SafetyValves_Manager_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1271703481", "1271703481", "_SafetyValves_Master", "box_MultipleOR_106.Out", "box__SafetyValves_Manager_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|220256104", "220256104", "_SafetyValves_Master", "box_OutputOrder_v2_82.Out", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|742095330", "742095330", "_SafetyValves_Master", "box_OutputOrder_v2_82.Out", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_82_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1300275547", "1300275547", "_SafetyValves_Master", "box_OutputOrder_v2_82.Out", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_82_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1024114961", "1024114961", "_SafetyValves_Master", "box_OutputOrder_v2_82.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_82_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|2117819161", "2117819161", "_SafetyValves_Master", "box_OutputOrder_v2_82.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_82_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|675314340", "675314340", "_SafetyValves_Master", "box_OutputOrder_v2_82.Out", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_39_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_123();
    l0 = self.box_MessageListener_v3_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1183066632", "1183066632", "_SafetyValves_Master", "box_GetPreconditionState_39.NotValid", "box_MessageListener_v3_123.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_39_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1456992174", "1456992174", "_SafetyValves_Master", "box_GetPreconditionState_39.Valid", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__SafetyValves_Manager_4_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_4;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|374310361", "374310361", "_SafetyValves_Master", "box__SafetyValves_Manager_4.Out", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|79695215", "79695215", "_SafetyValves_Master", "box_MultipleOR_21.Out", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_37();
    l0 = self.box_MultipleOR_92;
    l1 = self.box__SafetyValves_Manager_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|215562365", "215562365", "_SafetyValves_Master", "box_MultipleOR_92.Out", "box__SafetyValves_Manager_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box__SafetyValves_Manager_11_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_11;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|472745068", "472745068", "_SafetyValves_Master", "box__SafetyValves_Manager_11.Out", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__SafetyValves_Manager_14_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_14;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|802792877", "802792877", "_SafetyValves_Master", "box__SafetyValves_Manager_14.Out", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|693216492", "693216492", "_SafetyValves_Master", "box_OutputOrder_v2_84.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1228288778", "1228288778", "_SafetyValves_Master", "box_OutputOrder_v2_84.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_84_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1373687386", "1373687386", "_SafetyValves_Master", "box_OutputOrder_v2_84.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_84_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|17668240", "17668240", "_SafetyValves_Master", "box_OutputOrder_v2_84.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_23();
    l0 = self.box_MultipleOR_104;
    l1 = self.box__SafetyValves_Manager_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|139568157", "139568157", "_SafetyValves_Master", "box_MultipleOR_104.Out", "box__SafetyValves_Manager_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box__SafetyValves_Manager_32_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_32;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|38694229", "38694229", "_SafetyValves_Master", "box__SafetyValves_Manager_32.Out", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__SafetyValves_Manager_10_Out()
    local l0, l1;
    l0 = self.box__SafetyValves_Manager_10;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1840945902", "1840945902", "_SafetyValves_Master", "box__SafetyValves_Manager_10.Out", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SafetyValves_Manager_12();
    l0 = self.box_MultipleOR_20;
    l1 = self.box__SafetyValves_Manager_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1837842316", "1837842316", "_SafetyValves_Master", "box_MultipleOR_20.Out", "box__SafetyValves_Manager_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MessageListener_v3_123_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_123;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|81893743", "81893743", "_SafetyValves_Master", "box_MessageListener_v3_123.Received", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_125_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_125;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1180983478", "1180983478", "_SafetyValves_Master", "box_MessageListener_v3_125.Received", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|282298996", "282298996", "_SafetyValves_Master", "box_OutputOrder_v2_33.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|642996864", "642996864", "_SafetyValves_Master", "box_OutputOrder_v2_33.Out", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|921728720", "921728720", "_SafetyValves_Master", "box_OutputOrder_v2_33.Out", "box_MultipleOR_108.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1879561480", "1879561480", "_SafetyValves_Master", "box_MultipleOR_9.Out", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|@CaveStart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|@Pipe_Dest_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_197_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|@SiloStart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|@StorageStart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|39808828");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_29_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_29_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015281094927754",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_188()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066852807273909",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_177()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066938731785665",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_8()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015275991554371",
        -- TestOnEnable,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|220450339");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_6_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_6_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015275991554371",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_172()
    local params;
    params = {
        -- Pawns,
        [0] = "2101645250574438098",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|303745190");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_187_Out_0,
                [2] = self.f_box_OutputOrder_v2_187_Out_2,
                [3] = self.f_box_OutputOrder_v2_187_Out_3,
                [5] = self.f_box_OutputOrder_v2_187_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_13()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288000113397972",
        -- vfx_Fire,
        [7] = "2101631372589282062",
        -- vfx_Sparks,
        [8] = "2101922696234274460",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_174()
    local params;
    params = {
        -- Pawns,
        [0] = "2101827076437885610",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_178()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066849225338289",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_37()
    local params;
    params = {
        -- MissionBlock,
        [0] = "27160242192648935",
        -- MissionBlockBlissStims,
        [1] = "27160245444483203",
        -- MissionBlockFireFearStims,
        [2] = "45174643954290055",
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104287491751179949",
        -- vfx_Fire,
        [7] = "2104287491751179949",
        -- vfx_Sparks,
        [8] = "2103856157912220428",
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_24()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104287923573641412",
        -- vfx_Fire,
        [7] = "2104066756214549925",
        -- vfx_Sparks,
        [8] = "2104066756216647079",
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_7()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288186439061742",
        -- vfx_Fire,
        [7] = "2103857830298671485",
        -- vfx_Sparks,
        [8] = "2103857830290282859",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_179()
    local params;
    params = {
        -- Pawns,
        [0] = "2101645529556471616",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_195()
    local params;
    params = {
        -- Pawns,
        [0] = "2101645502004088632",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|946655712");
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
                [0] = self.f_box_OutputOrder_v2_185_Out_0,
                [1] = self.f_box_OutputOrder_v2_185_Out_1,
                [2] = self.f_box_OutputOrder_v2_185_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_18()
    local params;
    params = {
        -- MissionBlock,
        [0] = "27160242192648935",
        -- MissionBlockBlissStims,
        [1] = "144253840590606018",
        -- MissionBlockFireFearStims,
        [2] = "72196240756604364",
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288165746462952",
        -- vfx_Fire,
        [7] = "2103857658158143841",
        -- vfx_Sparks,
        [8] = "2103857658147658063",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|988203431");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_191_Out_0,
                [1] = self.f_box_OutputOrder_v2_191_Out_1,
                [2] = self.f_box_OutputOrder_v2_191_Out_2,
                [3] = self.f_box_OutputOrder_v2_191_Out_3,
                [4] = self.f_box_OutputOrder_v2_191_Out_4,
                [5] = self.f_box_OutputOrder_v2_191_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_34()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104287895194980546",
        -- vfx_Fire,
        [7] = "2103857283992672545",
        -- vfx_Sparks,
        [8] = "2103857283992672547",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1007067840");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
                [2] = self.f_box_OutputOrder_v2_85_Out_2,
                [3] = self.f_box_OutputOrder_v2_85_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_12()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288194546651378",
        -- vfx_Fire,
        [7] = "2103857981847263645",
        -- vfx_Sparks,
        [8] = "2103857981836777867",
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_23()
    local params;
    params = {
        -- MissionBlock,
        [0] = "27160242192648935",
        -- MissionBlockBlissStims,
        [1] = "108225043571534950",
        -- MissionBlockFireFearStims,
        [2] = "135246636503625885",
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288130453491938",
        -- vfx_Fire,
        [7] = "2101923280702148350",
        -- vfx_Sparks,
        [8] = "2101923280697954028",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1153911565");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
                [2] = self.f_box_OutputOrder_v2_82_Out_2,
                [3] = self.f_box_OutputOrder_v2_82_Out_3,
                [4] = self.f_box_OutputOrder_v2_82_Out_4,
                [5] = self.f_box_OutputOrder_v2_82_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1301476599");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_39_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_39_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015284037365317",
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_4()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288144607170790",
        -- vfx_Fire,
        [7] = "2101923712098897857",
        -- vfx_Sparks,
        [8] = "2101923712090509231",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_181()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066934883511743",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_192()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066855057518007",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_186()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066846350142895",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_11()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288181254901996",
        -- vfx_Fire,
        [7] = "2101923177495006926",
        -- vfx_Sparks,
        [8] = "2101923177488715452",
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_14()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104287986087645394",
        -- vfx_Fire,
        [7] = "2103857426909387075",
        -- vfx_Sparks,
        [8] = "2103857426911484229",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_173()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066954351373765",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|1597388285");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
                [2] = self.f_box_OutputOrder_v2_84_Out_2,
                [3] = self.f_box_OutputOrder_v2_84_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_32()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104287394292332203",
        -- vfx_Fire,
        [7] = "2104287394292332203",
        -- vfx_Sparks,
        [8] = "2103856141982253814",
    };
    return params;
end;

function export:OnEnter_box__SafetyValves_Manager_10()
    local params;
    params = {
        -- TimerFireDuration,
        [3] = self.TimerFireDuration,
        -- TimerFireStart,
        [4] = self.TimerFireStart,
        -- TimerSparksStart,
        [5] = self.TimerSparksStart,
        -- vfx_Bliss,
        [6] = "2104288139404136676",
        -- vfx_Fire,
        [7] = "2101923685819486121",
        -- vfx_Sparks,
        [8] = "2101923685811097495",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_123()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI49_B30A_Started",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_125()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "uni49_B40_Started",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_189()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066850481532339",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_180()
    local params;
    params = {
        -- Pawns,
        [0] = "2104066941713935811",
        -- SoundId,
        [1] = "4143691650",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_SafetyValves_Master|2007893149");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
            },
            count = 3,
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
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="TimerFireDuration" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="TimerFireStart" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="TimerSparksStart" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
