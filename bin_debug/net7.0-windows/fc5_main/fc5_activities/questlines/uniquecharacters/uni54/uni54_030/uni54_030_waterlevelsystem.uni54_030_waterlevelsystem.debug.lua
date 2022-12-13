LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni54/uni54_030/uni54_030_waterlevelsystem.domino
-- User graph: UNI54_030_WaterLevelSystem
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1611112466.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3219100226.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2819987801.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2662017895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1424678721.bnk]], "CSoundResource");
        cboxRes:LoadResource([[293166592.bnk]], "CSoundResource");
        cboxRes:LoadResource([[280970407.bnk]], "CSoundResource");
        cboxRes:LoadResource([[356233039.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2100439534.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI54/UNI54_030/UNI54_030_WaterLevelSystem.UNI54_030_WaterLevelSystem.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
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
                name = "dynamicLightId",
                type = "entity",
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
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
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
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI54_030_WaterLevelSystem";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem";
    self.box_SoundModifier_v2_274 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|187738");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_175 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|8479027");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_161 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|10876714");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_192 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|29766421");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_379 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_379;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_379");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|48862143");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_158 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|55094476");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_12 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|78680768");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_12_Disabled,
    });
    self.box_SoundModifier_v2_188 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|86042147");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_208 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|100568735");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_35 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|160254769");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_35_StartOut,
    });
    self.box_MultipleAND_v2_257 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|174374955");
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
        [0] = self.f_box_MultipleAND_v2_257_Out,
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|183795122");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_SoundModifier_v2_341 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|202513379");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_169 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|215534705");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_155 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|223755022");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_155_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_155_Loaded,
    });
    self.box_SoundModifier_v2_171 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|228169315");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_389 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_389;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|235826343");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_389_Done,
    });
    self.box_SoundModifier_v2_178 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|250185613");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_357 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_357;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|279030677");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_357_StartOut,
    });
    self.box_SoundModifier_v2_311 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|288946304");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_320 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|295522842");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_160 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|310742161");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_156 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|315215124");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_156_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_156_Loaded,
    });
    self.box_SoundModifier_v2_187 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|323337976");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_319 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|344652055");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_380 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_380;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|384573306");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_234 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|413651315");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_333 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|429375786");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_5 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|445549020");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_5_StartOut,
    });
    self.box_SoundModifier_v2_314 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|454159731");
    l0:SetConnections({
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|458872798");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_SoundModifier_v2_217 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|467945636");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_172 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|468361072");
    l0:SetConnections({
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|518166407");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_SoundModifier_v2_382 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_382;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|550417935");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_356 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_356;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|579383611");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_356_StartOut,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|598864122");
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
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|606811052");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_StaticBreakableListener_228 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|626818168");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_228_OnBreak,
    });
    self.box_PositionModifier_v2_359 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_359;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|627746505");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_359_StartOut,
    });
    self.box_SoundModifier_v2_157 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|629884431");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_326 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|635517774");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_168 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|635811824");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_270 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|672827760");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_335 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_335;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|677379974");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_335_Loaded,
    });
    self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|693919094");
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
        [0] = self.f_box_MultipleOR_147_Out,
    });
    self.box_SoundModifier_v2_226 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|706628898");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_225 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|713437812");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_166 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|731930343");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_94 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|759426777");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_94_Started,
    });
    self.box_SoundModifier_v2_176 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|764173319");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_182 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|768790311");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_365 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_365;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|774088507");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_121 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|782232463");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_121_Received,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|784315295");
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
    self.box_PositionModifier_v2_362 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|799719637");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_362_StartOut,
    });
    self.box_StaticBreakableListener_229 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|807556497");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_229_OnBreak,
    });
    self.box_PositionModifier_v2_1 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|821821731");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_1_StartOut,
    });
    self.box_SoundModifier_v2_366 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_366;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|838668950");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_374 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|847990902");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_49 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|855752019");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_49_Disabled,
    });
    self.box_SoundModifier_v2_193 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|857378574");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_191 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|863432591");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_381 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_381;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|894363434");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_313 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|927244936");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_181 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|987887675");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_237 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1001921760");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_165 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1055880204");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_370 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_370;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1059309468");
    l0:SetConnections({
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1073484443");
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
    self.box_SoundModifier_v2_177 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1113754770");
    l0:SetConnections({
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1114449264");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_SoundModifier_v2_260 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1117637828");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_53 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1122503606");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_53_StartOut,
    });
    self.box_PositionModifier_v2_390 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_390;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1126898204");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_390_Done,
    });
    self.box_SoundModifier_v2_325 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1138403409");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1192982445");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_97_Started,
    });
    self.box_EntityStatusListener_159 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1206254061");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_159_Loaded,
    });
    self.box_SoundModifier_v2_302 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1216255871");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_186 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1228076022");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_213 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1229953085");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_284 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1250587569");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_322 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1278900203");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_96 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1310818775");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_96_Started,
    });
    self.box_StaticBreakableListener_233 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1313349411");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_233_OnBreak,
    });
    self.box_EntityStatusListener_154 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1324576786");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_154_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_154_Loaded,
    });
    self.box_SoundModifier_v2_304 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_304;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1327102386");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_360 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1349512053");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_360_StartOut,
    });
    self.box_PositionModifier_v2_363 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_363;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1365976734");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_363_StartOut,
    });
    self.box_SoundModifier_v2_312 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1374637150");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_48 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1391345910");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_48_StartOut,
    });
    self.box_SoundModifier_v2_265 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1395470254");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_180 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1418213380");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_361 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1419198715");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_361_StartOut,
    });
    self.box_SoundModifier_v2_328 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1422062542");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_183 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1426373404");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_20 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1443245700");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_20_Interacted,
    });
    self.box_SoundModifier_v2_95 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1475404728");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_95_Started,
    });
    self.box_StaticBreakableListener_232 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1488151548");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_232_OnBreak,
    });
    self.box_SoundModifier_v2_179 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1488693241");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_372 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_372;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1504208715");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_174 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1505504577");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_185 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1519925742");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_173 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1537398552");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_189 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1539161543");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_258 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1556337886");
    l0:SetConnections({
    });
    self.box_Delay_v5_145 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1563090828");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_145_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_43 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1589124839");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_43_Enabled,
    });
    self.box_StaticBreakableListener_231 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1594273730");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_231_OnBreak,
    });
    self.box_SoundModifier_v2_236 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1616427397");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_340 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_340;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1616656756");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_369 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_369;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1647330741");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_317 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1662937932");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_167 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1662987685");
    l0:SetConnections({
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1665249306");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_EntityStatusListener_336 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1682410201");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_336_Loaded,
    });
    self.box_PositionModifier_v2_50 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1685065631");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_50_StartOut,
    });
    self.box_PositionModifier_v2_355 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_355;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1700588857");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_355_StartOut,
    });
    self.box_SoundModifier_v2_163 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1716576129");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_367 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_367;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1721924885");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_358 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1728283686");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_358_StartOut,
    });
    self.box_UniversalInteractionListener_101 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1730726988");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_101_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_29 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1778487332");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_29_Enabled,
    });
    self.box_PositionModifier_v2_39 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1792854159");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_39_Done,
    });
    self.box_SoundModifier_v2_383 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_383;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1816845783");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_364 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_364;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1835521345");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_364_StartOut,
    });
    self.box_SoundModifier_v2_235 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1839282787");
    l0:SetConnections({
    });
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1840081180");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box_SoundModifier_v2_305 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1847329301");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_368 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_368;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1873443125");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_371 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_371;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1884456281");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_384 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_384;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1890340774");
    l0:SetConnections({
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1898341294");
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
    self.box_SoundModifier_v2_309 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1935537497");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_262 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1942647419");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_259 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1952624253");
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
        [0] = self.f_box_MultipleAND_v2_259_Out,
    });
    self.box_SoundModifier_v2_308 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1962056996");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_238 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1977943534");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_323 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1988773246");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_277 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2004788040");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_170 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2016757891");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_41 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2040142455");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_41_Done,
    });
    self.box_SoundModifier_v2_315 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2041959450");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_230 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2081237914");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_230_OnBreak,
    });
    self.box_SoundModifier_v2_339 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2093183622");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_332 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2095141133");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_261 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2114140420");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1556216017", "1556216017", "UNI54_030_WaterLevelSystem", "In", "box_OutputOrder_v2_56.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1222881854", "1222881854", "UNI54_030_WaterLevelSystem", "box_Simple_Node_81.Out", "box_OutputOrder_v2_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|932712821", "932712821", "UNI54_030_WaterLevelSystem", "box_Simple_Node_81.Out", "box_OutputOrder_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|278896587", "278896587", "UNI54_030_WaterLevelSystem", "box_Simple_Node_81.Out", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_279();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|745484842", "745484842", "UNI54_030_WaterLevelSystem", "box_Simple_Node_81.Out", "box_OutputOrder_v2_279.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_220();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1619192479", "1619192479", "UNI54_030_WaterLevelSystem", "box_Simple_Node_81.Out", "box_OutputOrder_v2_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_83_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|47211642", "47211642", "UNI54_030_WaterLevelSystem", "box_Simple_Node_83.Out", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_278();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|661130434", "661130434", "UNI54_030_WaterLevelSystem", "box_Simple_Node_83.Out", "box_OutputOrder_v2_278.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|94506339", "94506339", "UNI54_030_WaterLevelSystem", "box_Simple_Node_83.Out", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_330();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1742611908", "1742611908", "UNI54_030_WaterLevelSystem", "box_Simple_Node_83.Out", "box_OutputOrder_v2_330.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_294();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1229971479", "1229971479", "UNI54_030_WaterLevelSystem", "box_Simple_Node_83.Out", "box_OutputOrder_v2_294.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_286();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|504798066", "504798066", "UNI54_030_WaterLevelSystem", "box_Simple_Node_82.Out", "box_OutputOrder_v2_286.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_245();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1602020394", "1602020394", "UNI54_030_WaterLevelSystem", "box_Simple_Node_82.Out", "box_OutputOrder_v2_245.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_300();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|566941696", "566941696", "UNI54_030_WaterLevelSystem", "box_Simple_Node_82.Out", "box_OutputOrder_v2_300.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|750499812", "750499812", "UNI54_030_WaterLevelSystem", "box_Simple_Node_82.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_306();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|657885675", "657885675", "UNI54_030_WaterLevelSystem", "box_Simple_Node_82.Out", "box_OutputOrder_v2_306.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|277947695", "277947695", "UNI54_030_WaterLevelSystem", "box_Simple_Node_85.Out", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|773967103", "773967103", "UNI54_030_WaterLevelSystem", "box_Simple_Node_85.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_297();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|4244101", "4244101", "UNI54_030_WaterLevelSystem", "box_Simple_Node_85.Out", "box_OutputOrder_v2_297.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_255();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|196292754", "196292754", "UNI54_030_WaterLevelSystem", "box_Simple_Node_85.Out", "box_OutputOrder_v2_255.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_282();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1631430549", "1631430549", "UNI54_030_WaterLevelSystem", "box_Simple_Node_85.Out", "box_OutputOrder_v2_282.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_269();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2051048761", "2051048761", "UNI54_030_WaterLevelSystem", "box_Simple_Node_85.Out", "box_OutputOrder_v2_269.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_78_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_216();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1350692473", "1350692473", "UNI54_030_WaterLevelSystem", "box_Simple_Node_78.Out", "box_OutputOrder_v2_216.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_SoundShapeModifier_100();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1393622839", "1393622839", "UNI54_030_WaterLevelSystem", "box_Simple_Node_78.Out", "box_SoundShapeModifier_100.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|910816337", "910816337", "UNI54_030_WaterLevelSystem", "box_Simple_Node_78.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_214();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2136591199", "2136591199", "UNI54_030_WaterLevelSystem", "box_Simple_Node_78.Out", "box_OutputOrder_v2_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|12931172", "12931172", "UNI54_030_WaterLevelSystem", "box_Simple_Node_84.Out", "box_OutputOrder_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_211();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|636778515", "636778515", "UNI54_030_WaterLevelSystem", "box_Simple_Node_84.Out", "box_OutputOrder_v2_211.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_329();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|580955449", "580955449", "UNI54_030_WaterLevelSystem", "box_Simple_Node_84.Out", "box_OutputOrder_v2_329.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1827700231", "1827700231", "UNI54_030_WaterLevelSystem", "box_Simple_Node_80.Out", "box_OutputOrder_v2_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_327();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1516792702", "1516792702", "UNI54_030_WaterLevelSystem", "box_Simple_Node_80.Out", "box_OutputOrder_v2_327.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_250();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1855877454", "1855877454", "UNI54_030_WaterLevelSystem", "box_Simple_Node_80.Out", "box_OutputOrder_v2_250.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1050374579", "1050374579", "UNI54_030_WaterLevelSystem", "box_Simple_Node_80.Out", "box_OutputOrder_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_331();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1168501814", "1168501814", "UNI54_030_WaterLevelSystem", "box_Simple_Node_80.Out", "box_OutputOrder_v2_331.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_244();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1240419870", "1240419870", "UNI54_030_WaterLevelSystem", "box_Simple_Node_79.Out", "box_OutputOrder_v2_244.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|746988470", "746988470", "UNI54_030_WaterLevelSystem", "box_Simple_Node_79.Out", "box_OutputOrder_v2_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1400275191", "1400275191", "UNI54_030_WaterLevelSystem", "box_Simple_Node_79.Out", "box_OutputOrder_v2_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_215();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1897315030", "1897315030", "UNI54_030_WaterLevelSystem", "box_Simple_Node_79.Out", "box_OutputOrder_v2_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_SoundShapeModifier_100();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|960453049", "960453049", "UNI54_030_WaterLevelSystem", "box_Simple_Node_79.Out", "box_SoundShapeModifier_100.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_391_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_385();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1007289992", "1007289992", "UNI54_030_WaterLevelSystem", "box_Simple_Node_391.Out", "box_OutputOrder_v2_385.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_263_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_241();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|599501452", "599501452", "UNI54_030_WaterLevelSystem", "box_Simple_Node_263.Out", "box_OutputOrder_v2_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_227();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2003028667", "2003028667", "UNI54_030_WaterLevelSystem", "box_Simple_Node_263.Out", "box_OutputOrder_v2_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_239();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1567236286", "1567236286", "UNI54_030_WaterLevelSystem", "box_Simple_Node_263.Out", "box_OutputOrder_v2_239.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_243();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1746389922", "1746389922", "UNI54_030_WaterLevelSystem", "box_Simple_Node_263.Out", "box_OutputOrder_v2_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_242();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1997744831", "1997744831", "UNI54_030_WaterLevelSystem", "box_Simple_Node_263.Out", "box_OutputOrder_v2_242.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1859661202", "1859661202", "UNI54_030_WaterLevelSystem", "box_Simple_Node_263.Out", "box_OutputOrder_v2_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_392_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_386();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|802691130", "802691130", "UNI54_030_WaterLevelSystem", "box_Simple_Node_392.Out", "box_OutputOrder_v2_386.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_150_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1977466318", "1977466318", "UNI54_030_WaterLevelSystem", "box_Simple_Node_150.Out", "box_Delay_v5_148.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_149_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1861588845", "1861588845", "UNI54_030_WaterLevelSystem", "box_Simple_Node_149.Out", "box_Delay_v5_145.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_377_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_267();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|721693164", "721693164", "UNI54_030_WaterLevelSystem", "box_Simple_Node_377.Out", "box_OutputOrder_v2_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_378_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_375();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|279869716", "279869716", "UNI54_030_WaterLevelSystem", "box_Simple_Node_378.Out", "box_OutputOrder_v2_375.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_373();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1558871867", "1558871867", "UNI54_030_WaterLevelSystem", "box_Simple_Node_378.Out", "box_OutputOrder_v2_373.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1807663454", "1807663454", "UNI54_030_WaterLevelSystem", "box_Simple_Node_58.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|892221111", "892221111", "UNI54_030_WaterLevelSystem", "box_Simple_Node_98.Out", "box_SoundModifier_v2_95.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|299567562", "299567562", "UNI54_030_WaterLevelSystem", "box_Simple_Node_59.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_393_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_387();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|612510439", "612510439", "UNI54_030_WaterLevelSystem", "box_Simple_Node_393.Out", "box_OutputOrder_v2_387.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_394_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_388();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1830222053", "1830222053", "UNI54_030_WaterLevelSystem", "box_Simple_Node_394.Out", "box_OutputOrder_v2_388.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_99_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_94();
    l0 = self.box_SoundModifier_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1499684222", "1499684222", "UNI54_030_WaterLevelSystem", "box_Simple_Node_99.Out", "box_SoundModifier_v2_94.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_196_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_190();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|349388368", "349388368", "UNI54_030_WaterLevelSystem", "box_Simple_Node_196.Out", "box_OutputOrder_v2_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_194_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2044804606", "2044804606", "UNI54_030_WaterLevelSystem", "box_Simple_Node_194.Out", "box_OutputOrder_v2_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_197_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|674265158", "674265158", "UNI54_030_WaterLevelSystem", "box_Simple_Node_197.Out", "box_OutputOrder_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_195_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1194297835", "1194297835", "UNI54_030_WaterLevelSystem", "box_Simple_Node_195.Out", "box_OutputOrder_v2_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_282_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_284();
    l0 = self.box_SoundModifier_v2_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1037701381", "1037701381", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_282.Out", "box_SoundModifier_v2_284.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_278_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_270();
    l0 = self.box_SoundModifier_v2_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|392349891", "392349891", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_278.Out", "box_SoundModifier_v2_270.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_136_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_25();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|392325749", "392325749", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_136.Started", "box_ParticleSystem_v3_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_136_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_25();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|167364286", "167364286", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_136.Stopped", "box_ParticleSystem_v3_25.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_258();
    l0 = self.box_SoundModifier_v2_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1228590166", "1228590166", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_267.Out", "box_SoundModifier_v2_258.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_267_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_260();
    l0 = self.box_SoundModifier_v2_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1712036681", "1712036681", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_267.Out", "box_SoundModifier_v2_260.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_267_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_262();
    l0 = self.box_SoundModifier_v2_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|720545297", "720545297", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_267.Out", "box_SoundModifier_v2_262.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_267_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_261();
    l0 = self.box_SoundModifier_v2_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1357571864", "1357571864", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_267.Out", "box_SoundModifier_v2_261.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_267_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_265();
    l0 = self.box_SoundModifier_v2_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1493476382", "1493476382", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_267.Out", "box_SoundModifier_v2_265.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_103();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1849291996", "1849291996", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_114.Out", "box_SoundShapeModifier_103.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_105();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1002995752", "1002995752", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_114.Out", "box_SoundShapeModifier_105.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_106();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1095349091", "1095349091", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_114.Out", "box_SoundShapeModifier_106.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_104();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|191487915", "191487915", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_114.Out", "box_SoundShapeModifier_104.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_107();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1591951477", "1591951477", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_114.Out", "box_SoundShapeModifier_107.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1608126028", "1608126028", "UNI54_030_WaterLevelSystem", "box_UniversalInteractionModifier_v2_12.Disabled", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_215_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_225();
    l0 = self.box_SoundModifier_v2_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|153466848", "153466848", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_215.Out", "box_SoundModifier_v2_225.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_354_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|708988212", "708988212", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_354.Started", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_190_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_185();
    l0 = self.box_SoundModifier_v2_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|140331668", "140331668", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_185.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_190_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_188();
    l0 = self.box_SoundModifier_v2_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|543898761", "543898761", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_188.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_190_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_179();
    l0 = self.box_SoundModifier_v2_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2128243647", "2128243647", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_179.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_190_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_186();
    l0 = self.box_SoundModifier_v2_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1577485575", "1577485575", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_186.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_190_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_181();
    l0 = self.box_SoundModifier_v2_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2110717911", "2110717911", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_181.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_190_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_193();
    l0 = self.box_SoundModifier_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|998480295", "998480295", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_193.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_190_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_191();
    l0 = self.box_SoundModifier_v2_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1314733747", "1314733747", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_191.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_190_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_187();
    l0 = self.box_SoundModifier_v2_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1331318770", "1331318770", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_190.Out", "box_SoundModifier_v2_187.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_68();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2020260345", "2020260345", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_74.Out", "box_SoundShapeModifier_68.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_65();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|272451764", "272451764", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_74.Out", "box_SoundShapeModifier_65.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_79();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1257832990", "1257832990", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_92.Out", "box_Simple_Node_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|236617068", "236617068", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_92.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_393();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|201609856", "201609856", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_92.Out", "box_Simple_Node_393.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_220_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_274();
    l0 = self.box_SoundModifier_v2_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|897997582", "897997582", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_220.Out", "box_SoundModifier_v2_274.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_DynamicLightModifier_3_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_117();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1272064927", "1272064927", "UNI54_030_WaterLevelSystem", "box_DynamicLightModifier_3.Disabled", "box_ParticleSystem_v3_117.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_140_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_141();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1475062939", "1475062939", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_140.Started", "box_ParticleSystem_v3_141.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_140_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_141();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1294085981", "1294085981", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_140.Stopped", "box_ParticleSystem_v3_141.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_35_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_359();
    l0 = self.box_PositionModifier_v2_35;
    l1 = self.box_PositionModifier_v2_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1722227338", "1722227338", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_35.StartOut", "box_PositionModifier_v2_359.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_241_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_236();
    l0 = self.box_SoundModifier_v2_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1714157631", "1714157631", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_241.Out", "box_SoundModifier_v2_236.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_241_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_231();
    l0 = self.box_StaticBreakableListener_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|385767496", "385767496", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_241.Out", "box_StaticBreakableListener_231.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_208();
    l0 = self.box_SoundModifier_v2_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|247408082", "247408082", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_219.Out", "box_SoundModifier_v2_208.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_257_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_151();
    l0 = self.box_MultipleAND_v2_257;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1626502952", "1626502952", "UNI54_030_WaterLevelSystem", "box_MultipleAND_v2_257.Out", "box_DynamicLightModifier_151.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_352_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_353();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|804799864", "804799864", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_352.Started", "box_ParticleSystem_v3_353.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_Delay_v5_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1827835863", "1827835863", "UNI54_030_WaterLevelSystem", "box_Delay_v5_54.TimeElapsed", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|815169110", "815169110", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_91.Out", "box_Simple_Node_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2000257302", "2000257302", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_91.Out", "box_Delay_v5_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_91_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|921371041", "921371041", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_91.Out", "box_ParticleSystem_v3_134.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|510776531", "510776531", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_91.Out", "box_Simple_Node_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_394();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1125536853", "1125536853", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_91.Out", "box_Simple_Node_394.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_10_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_346();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|938420243", "938420243", "UNI54_030_WaterLevelSystem", "box_DynamicLightModifier_10.Enabled", "box_ParticleSystem_v3_346.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_329_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_305();
    l0 = self.box_SoundModifier_v2_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|814700999", "814700999", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_329.Out", "box_SoundModifier_v2_305.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_135_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|608765988", "608765988", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_135.Started", "box_ParticleSystem_v3_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_135_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1693956587", "1693956587", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_135.Stopped", "box_ParticleSystem_v3_136.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_155_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_156();
    l0 = self.box_EntityStatusListener_155;
    l1 = self.box_EntityStatusListener_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|768450735", "768450735", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_155.Enabled", "box_EntityStatusListener_156.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_155_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_257();
    l0 = self.box_EntityStatusListener_155;
    l1 = self.box_MultipleAND_v2_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|769360263", "769360263", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_155.Loaded", "box_MultipleAND_v2_257.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_389_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_PositionModifier_v2_389;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|686995975", "686995975", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_389.Done", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_180();
    l0 = self.box_SoundModifier_v2_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1550785899", "1550785899", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_180.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_178();
    l0 = self.box_SoundModifier_v2_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|102892049", "102892049", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_178.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_184_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_183();
    l0 = self.box_SoundModifier_v2_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|107636223", "107636223", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_183.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_184_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_189();
    l0 = self.box_SoundModifier_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|373058579", "373058579", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_189.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_184_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_161();
    l0 = self.box_SoundModifier_v2_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1946369899", "1946369899", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_161.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_184_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_182();
    l0 = self.box_SoundModifier_v2_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1962786809", "1962786809", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_182.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_184_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_192();
    l0 = self.box_SoundModifier_v2_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|953619891", "953619891", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_192.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_184_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_171();
    l0 = self.box_SoundModifier_v2_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|618833023", "618833023", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_184.Out", "box_SoundModifier_v2_171.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_137_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_135();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1591222159", "1591222159", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_137.Started", "box_ParticleSystem_v3_135.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_137_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_135();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1557279556", "1557279556", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_137.Stopped", "box_ParticleSystem_v3_135.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|357868600", "357868600", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_88.Out", "box_Simple_Node_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|926486932", "926486932", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_88.Out", "box_UniversalInteractionModifier_v2_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_88_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_345();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1689985177", "1689985177", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_88.Out", "box_ShimmerModifier_v2_345.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|905443496", "905443496", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_88.Out", "box_Simple_Node_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_391();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|459250286", "459250286", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_88.Out", "box_Simple_Node_391.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_357_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_48();
    l0 = self.box_PositionModifier_v2_357;
    l1 = self.box_PositionModifier_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2043677827", "2043677827", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_357.StartOut", "box_PositionModifier_v2_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_14();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2088575259", "2088575259", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_44.Out", "box_SoundShapeModifier_14.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_18();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|711619540", "711619540", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_44.Out", "box_SoundShapeModifier_18.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_156_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_159();
    l0 = self.box_EntityStatusListener_156;
    l1 = self.box_EntityStatusListener_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|440586687", "440586687", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_156.Enabled", "box_EntityStatusListener_159.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_156_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_259();
    l0 = self.box_EntityStatusListener_156;
    l1 = self.box_MultipleAND_v2_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1588268169", "1588268169", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_156.Loaded", "box_MultipleAND_v2_259.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_DynamicLightModifier_152_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_153();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|236078554", "236078554", "UNI54_030_WaterLevelSystem", "box_DynamicLightModifier_152.Enabled", "box_ParticleSystem_v3_153.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_81();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|180090936", "180090936", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_89.Out", "box_Simple_Node_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1892364105", "1892364105", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_89.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_89_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_125();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|109840719", "109840719", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_89.Out", "box_ParticleSystem_v3_125.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1265758301", "1265758301", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_89.Out", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_392();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|307877162", "307877162", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_89.Out", "box_Simple_Node_392.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_68();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1459050471", "1459050471", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_76.Out", "box_SoundShapeModifier_68.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_65();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1619938205", "1619938205", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_76.Out", "box_SoundShapeModifier_65.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_132_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_133();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|789389769", "789389769", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_132.Started", "box_ParticleSystem_v3_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_132_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_133();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1093327607", "1093327607", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_132.Stopped", "box_ParticleSystem_v3_133.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_134_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1554783845", "1554783845", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_134.Started", "box_ParticleSystem_v3_137.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_134_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1429094038", "1429094038", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_134.Stopped", "box_ParticleSystem_v3_137.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_142_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_140();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|677199102", "677199102", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_142.Started", "box_ParticleSystem_v3_140.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_142_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_140();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1087984209", "1087984209", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_142.Stopped", "box_ParticleSystem_v3_140.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_102_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_349();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1945210022", "1945210022", "UNI54_030_WaterLevelSystem", "box_DynamicLightModifier_102.Disabled", "box_ParticleSystem_v3_349.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_334_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|175370779", "175370779", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_334.Stopped", "box_ParticleSystem_v3_134.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_5_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_355();
    l0 = self.box_PositionModifier_v2_5;
    l1 = self.box_PositionModifier_v2_355;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|120532766", "120532766", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_5.StartOut", "box_PositionModifier_v2_355.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_4();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|963288382", "963288382", "UNI54_030_WaterLevelSystem", "box_MultipleOR_2.Out", "box_StimsEmitter_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_71();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1761162834", "1761162834", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_64.Out", "box_SoundShapeModifier_71.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_63();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1599031239", "1599031239", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_64.Out", "box_SoundShapeModifier_63.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_349_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_350();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1688308568", "1688308568", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_349.Stopped", "box_ParticleSystem_v3_350.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_243_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_238();
    l0 = self.box_SoundModifier_v2_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|904614478", "904614478", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_243.Out", "box_SoundModifier_v2_238.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_243_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_233();
    l0 = self.box_StaticBreakableListener_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1204563055", "1204563055", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_243.Out", "box_StaticBreakableListener_233.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_242_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_237();
    l0 = self.box_SoundModifier_v2_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1677090799", "1677090799", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_242.Out", "box_SoundModifier_v2_237.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_242_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_232();
    l0 = self.box_StaticBreakableListener_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|773446140", "773446140", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_242.Out", "box_StaticBreakableListener_232.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_14();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|138935097", "138935097", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_45.Out", "box_SoundShapeModifier_14.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_18();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1008861561", "1008861561", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_45.Out", "box_SoundShapeModifier_18.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_376_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|568575063", "568575063", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_376.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_376_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_378();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|788901806", "788901806", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_376.Out", "box_Simple_Node_378.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_148;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|916942232", "916942232", "UNI54_030_WaterLevelSystem", "box_Delay_v5_148.TimeElapsed", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_120();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|738293085", "738293085", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_56.Out", "box_StimsEmitter_v2_120.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_337();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1849647569", "1849647569", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_56.Out", "box_OutputOrder_v2_337.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_154();
    l0 = self.box_EntityStatusListener_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|189440331", "189440331", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_56.Out", "box_EntityStatusListener_154.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_263();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1308600767", "1308600767", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_56.Out", "box_Simple_Node_263.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_57();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|266263803", "266263803", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_56.Out", "box_Print_v2_57.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_356_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_53();
    l0 = self.box_PositionModifier_v2_356;
    l1 = self.box_PositionModifier_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1694422442", "1694422442", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_356.StartOut", "box_PositionModifier_v2_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_8();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1343722250", "1343722250", "UNI54_030_WaterLevelSystem", "box_MultipleOR_21.Out", "box_StimsEmitter_v2_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_342();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1826760447", "1826760447", "UNI54_030_WaterLevelSystem", "box_MultipleOR_47.Out", "box_ShimmerModifier_v2_342.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_342_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_29();
    l0 = self.box_UniversalInteractionModifier_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|609778716", "609778716", "UNI54_030_WaterLevelSystem", "box_ShimmerModifier_v2_342.Enabled", "box_UniversalInteractionModifier_v2_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_216_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_277();
    l0 = self.box_SoundModifier_v2_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|604396577", "604396577", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_216.Out", "box_SoundModifier_v2_277.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_228_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_226();
    l0 = self.box_StaticBreakableListener_228;
    l1 = self.box_SoundModifier_v2_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|451975977", "451975977", "UNI54_030_WaterLevelSystem", "box_StaticBreakableListener_228.OnBreak", "box_SoundModifier_v2_226.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_359_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_360();
    l0 = self.box_PositionModifier_v2_359;
    l1 = self.box_PositionModifier_v2_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1640429439", "1640429439", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_359.StartOut", "box_PositionModifier_v2_360.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_1();
    l0 = self.box_PositionModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|541562356", "541562356", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_11.Out", "box_PositionModifier_v2_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|826302293", "826302293", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_11.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|763771932", "763771932", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_11.Out", "box_ParticleSystem_v3_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|563115106", "563115106", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_11.Out", "box_Simple_Node_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|978933021", "978933021", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_93.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1022639451", "1022639451", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_93.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_139();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1521330776", "1521330776", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_93.Out", "box_ParticleSystem_v3_139.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_394();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|659819894", "659819894", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_93.Out", "box_Simple_Node_394.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_335_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_335;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1956498096", "1956498096", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_335.Loaded", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_138();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|670666440", "670666440", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_40.Out", "box_ParticleSystem_v3_138.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_5();
    l0 = self.box_PositionModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|829949986", "829949986", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_40.Out", "box_PositionModifier_v2_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|965686391", "965686391", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_40.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_147_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_268();
    l0 = self.box_MultipleOR_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1866403037", "1866403037", "UNI54_030_WaterLevelSystem", "box_MultipleOR_147.Out", "box_OutputOrder_v2_268.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_350_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_348();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1210526249", "1210526249", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_350.Stopped", "box_ParticleSystem_v3_348.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_158();
    l0 = self.box_SoundModifier_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1232978583", "1232978583", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_158.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_173();
    l0 = self.box_SoundModifier_v2_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1097130350", "1097130350", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_173.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_160();
    l0 = self.box_SoundModifier_v2_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|129525600", "129525600", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_160.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_169();
    l0 = self.box_SoundModifier_v2_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|344067625", "344067625", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_169.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_167();
    l0 = self.box_SoundModifier_v2_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1930330201", "1930330201", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_167.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_166();
    l0 = self.box_SoundModifier_v2_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|876550754", "876550754", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_166.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_176();
    l0 = self.box_SoundModifier_v2_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|279448940", "279448940", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_176.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_157();
    l0 = self.box_SoundModifier_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1223402982", "1223402982", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_162.Out", "box_SoundModifier_v2_157.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_127_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|272734149", "272734149", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_127.Started", "box_ParticleSystem_v3_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_127_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|684967366", "684967366", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_127.Stopped", "box_ParticleSystem_v3_132.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_37_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_38();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1477453038", "1477453038", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_37.Enabled", "box_StimsEmitter_v2_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_139_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_142();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|192439023", "192439023", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_139.Started", "box_ParticleSystem_v3_142.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_139_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_142();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1337678572", "1337678572", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_139.Stopped", "box_ParticleSystem_v3_142.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_373_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_339();
    l0 = self.box_SoundModifier_v2_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1941685781", "1941685781", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_339.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_365();
    l0 = self.box_SoundModifier_v2_365;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1105776864", "1105776864", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_365.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_367();
    l0 = self.box_SoundModifier_v2_367;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1279034865", "1279034865", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_367.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_340();
    l0 = self.box_SoundModifier_v2_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|539105713", "539105713", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_340.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_366();
    l0 = self.box_SoundModifier_v2_366;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1946660208", "1946660208", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_366.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_341();
    l0 = self.box_SoundModifier_v2_341;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|780484086", "780484086", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_341.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_61();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1577872815", "1577872815", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_70.Out", "box_SoundShapeModifier_61.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_62();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|618728166", "618728166", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_70.Out", "box_SoundShapeModifier_62.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_94_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_94;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1279938534", "1279938534", "UNI54_030_WaterLevelSystem", "box_SoundModifier_v2_94.Started", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_DynamicLightModifier_151_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_144();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|685833367", "685833367", "UNI54_030_WaterLevelSystem", "box_DynamicLightModifier_151.Enabled", "box_ParticleSystem_v3_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_386_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_379();
    l0 = self.box_SoundModifier_v2_379;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1965564915", "1965564915", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_386.Out", "box_SoundModifier_v2_379.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_386_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_380();
    l0 = self.box_SoundModifier_v2_380;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1723107119", "1723107119", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_386.Out", "box_SoundModifier_v2_380.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_386_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_381();
    l0 = self.box_SoundModifier_v2_381;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2063947837", "2063947837", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_386.Out", "box_SoundModifier_v2_381.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_MessageListener_v3_121_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_121;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|663693159", "663693159", "UNI54_030_WaterLevelSystem", "box_MessageListener_v3_121.Received", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_22();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1628922162", "1628922162", "UNI54_030_WaterLevelSystem", "box_MultipleOR_7.Out", "box_StimsEmitter_v2_22.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_143_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_10();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1954846207", "1954846207", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_143.Started", "box_DynamicLightModifier_10.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_362_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_39();
    l0 = self.box_PositionModifier_v2_362;
    l1 = self.box_PositionModifier_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|947347860", "947347860", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_362.StartOut", "box_PositionModifier_v2_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_60();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|487864844", "487864844", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_69.Out", "box_SoundShapeModifier_60.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_66();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|125096799", "125096799", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_69.Out", "box_SoundShapeModifier_66.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_229_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_234();
    l0 = self.box_StaticBreakableListener_229;
    l1 = self.box_SoundModifier_v2_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|172608235", "172608235", "UNI54_030_WaterLevelSystem", "box_StaticBreakableListener_229.OnBreak", "box_SoundModifier_v2_234.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_119_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_28();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1309027770", "1309027770", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_119.Disabled", "box_StimsEmitter_v2_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_1_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_361();
    l0 = self.box_PositionModifier_v2_1;
    l1 = self.box_PositionModifier_v2_361;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|597053610", "597053610", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_1.StartOut", "box_PositionModifier_v2_361.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_49_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_UniversalInteractionModifier_v2_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|629247427", "629247427", "UNI54_030_WaterLevelSystem", "box_UniversalInteractionModifier_v2_49.Disabled", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|212612533", "212612533", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_17.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1973401841", "1973401841", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_17.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_297_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_293();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|595484628", "595484628", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_297.Out", "box_SoundShapeModifier_293.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_297_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_299();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1108759846", "1108759846", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_297.Out", "box_SoundShapeModifier_299.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_297_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_295();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|785732764", "785732764", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_297.Out", "box_SoundShapeModifier_295.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_297_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_298();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|671125448", "671125448", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_297.Out", "box_SoundShapeModifier_298.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_297_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_291();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2000231744", "2000231744", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_297.Out", "box_SoundShapeModifier_291.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_71();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|416665335", "416665335", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_73.Out", "box_SoundShapeModifier_71.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_63();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|618178692", "618178692", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_73.Out", "box_SoundShapeModifier_63.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_42_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_26();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1538223410", "1538223410", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_42.Disabled", "box_StimsEmitter_v2_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1161398461", "1161398461", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_87.Out", "box_Simple_Node_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1829346325", "1829346325", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_87.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_391();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1546486430", "1546486430", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_87.Out", "box_Simple_Node_391.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_84();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|116658340", "116658340", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_90.Out", "box_Simple_Node_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_49();
    l0 = self.box_UniversalInteractionModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|919589879", "919589879", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_90.Out", "box_UniversalInteractionModifier_v2_49.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_344();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|791059652", "791059652", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_90.Out", "box_ShimmerModifier_v2_344.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1503129411", "1503129411", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_90.Out", "box_Simple_Node_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_393();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1996357320", "1996357320", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_90.Out", "box_Simple_Node_393.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_60();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1964193628", "1964193628", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_75.Out", "box_SoundShapeModifier_60.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_66();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|594933904", "594933904", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_75.Out", "box_SoundShapeModifier_66.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|101135118", "101135118", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_13.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1731350570", "1731350570", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_13.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_103();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1742908613", "1742908613", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_112.Out", "box_SoundShapeModifier_103.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_105();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1058141393", "1058141393", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_112.Out", "box_SoundShapeModifier_105.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_104();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1145806799", "1145806799", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_112.Out", "box_SoundShapeModifier_104.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_107();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1469125166", "1469125166", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_112.Out", "box_SoundShapeModifier_107.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_106();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1883929653", "1883929653", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_112.Out", "box_SoundShapeModifier_106.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_52_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_143();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1955682470", "1955682470", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_52.Stopped", "box_ParticleSystem_v3_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_250_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_254();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|544081965", "544081965", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_250.Out", "box_SoundShapeModifier_254.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_250_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_248();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1540849869", "1540849869", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_250.Out", "box_SoundShapeModifier_248.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_250_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_251();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|178355887", "178355887", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_250.Out", "box_SoundShapeModifier_251.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_250_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_253();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|411281202", "411281202", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_250.Out", "box_SoundShapeModifier_253.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_346_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_338();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|579474198", "579474198", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_346.Started", "box_ParticleSystem_v3_338.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_130_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_116();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|692981258", "692981258", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_130.Started", "box_ParticleSystem_v3_116.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_130_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_116();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|573661763", "573661763", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_130.Stopped", "box_ParticleSystem_v3_116.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = self.box_MultipleOR_122;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1500097497", "1500097497", "UNI54_030_WaterLevelSystem", "box_MultipleOR_122.Out", "box_OutputOrder_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_208();
    l0 = self.box_SoundModifier_v2_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|484013236", "484013236", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_209.Out", "box_SoundModifier_v2_208.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1909258221", "1909258221", "UNI54_030_WaterLevelSystem", "box_Delay_v5_31.TimeElapsed", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_53_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_389();
    l0 = self.box_PositionModifier_v2_53;
    l1 = self.box_PositionModifier_v2_389;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|602626806", "602626806", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_53.StartOut", "box_PositionModifier_v2_389.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_390_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_PositionModifier_v2_390;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1445952083", "1445952083", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_390.Done", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_330_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_314();
    l0 = self.box_SoundModifier_v2_314;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|386505636", "386505636", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_330.Out", "box_SoundModifier_v2_314.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_269_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_217();
    l0 = self.box_SoundModifier_v2_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|801447066", "801447066", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_269.Out", "box_SoundModifier_v2_217.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_294_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_293();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1093887305", "1093887305", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_294.Out", "box_SoundShapeModifier_293.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_299();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|768366860", "768366860", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_294.Out", "box_SoundShapeModifier_299.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_298();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|93732260", "93732260", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_294.Out", "box_SoundShapeModifier_298.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_291();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1898175964", "1898175964", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_294.Out", "box_SoundShapeModifier_291.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_295();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|517705570", "517705570", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_294.Out", "box_SoundShapeModifier_295.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_347_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_125();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1897139772", "1897139772", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_347.Stopped", "box_ParticleSystem_v3_125.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_97_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_SoundModifier_v2_97;
    l1 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|273868507", "273868507", "UNI54_030_WaterLevelSystem", "box_SoundModifier_v2_97.Started", "box_Delay_v5_145.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_159_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_259();
    l0 = self.box_EntityStatusListener_159;
    l1 = self.box_MultipleAND_v2_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1386982662", "1386982662", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_159.Loaded", "box_MultipleAND_v2_259.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_StimsEmitter_v2_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_19();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|797605694", "797605694", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_8.Disabled", "box_StimsEmitter_v2_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_131_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_130();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1130618504", "1130618504", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_131.Started", "box_ParticleSystem_v3_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_131_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_130();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1969098691", "1969098691", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_131.Stopped", "box_ParticleSystem_v3_130.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_118_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_129();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1689380177", "1689380177", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_118.Stopped", "box_ParticleSystem_v3_129.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_120_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_6();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|648329184", "648329184", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_120.Disabled", "box_StimsEmitter_v2_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_226();
    l0 = self.box_SoundModifier_v2_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1690455908", "1690455908", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_227.Out", "box_SoundModifier_v2_226.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_227_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_228();
    l0 = self.box_StaticBreakableListener_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|993342337", "993342337", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_227.Out", "box_StaticBreakableListener_228.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_126_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_131();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1734643138", "1734643138", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_126.Started", "box_ParticleSystem_v3_131.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_126_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_131();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|36914304", "36914304", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_126.Stopped", "box_ParticleSystem_v3_131.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_141_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2122017651", "2122017651", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_141.Started", "box_ParticleSystem_v3_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_141_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1262600891", "1262600891", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_141.Stopped", "box_ParticleSystem_v3_52.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_306_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_317();
    l0 = self.box_SoundModifier_v2_317;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|754205701", "754205701", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_317.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_306_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_326();
    l0 = self.box_SoundModifier_v2_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|936733033", "936733033", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_326.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_306_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_333();
    l0 = self.box_SoundModifier_v2_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1189759544", "1189759544", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_333.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_306_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_328();
    l0 = self.box_SoundModifier_v2_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1702418185", "1702418185", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_328.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_306_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_309();
    l0 = self.box_SoundModifier_v2_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1848893837", "1848893837", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_309.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_306_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_315();
    l0 = self.box_SoundModifier_v2_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|546972529", "546972529", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_315.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_306_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_325();
    l0 = self.box_SoundModifier_v2_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|439381135", "439381135", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_325.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_306_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_308();
    l0 = self.box_SoundModifier_v2_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2081582197", "2081582197", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_306.Out", "box_SoundModifier_v2_308.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_96_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_SoundModifier_v2_96;
    l1 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|416824746", "416824746", "UNI54_030_WaterLevelSystem", "box_SoundModifier_v2_96.Started", "box_Delay_v5_148.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_233_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_238();
    l0 = self.box_StaticBreakableListener_233;
    l1 = self.box_SoundModifier_v2_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|277627326", "277627326", "UNI54_030_WaterLevelSystem", "box_StaticBreakableListener_233.OnBreak", "box_SoundModifier_v2_238.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_245_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_256();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1152310369", "1152310369", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_245.Out", "box_SoundShapeModifier_256.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_246();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1155730150", "1155730150", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_245.Out", "box_SoundShapeModifier_246.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_249();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2133360068", "2133360068", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_245.Out", "box_SoundShapeModifier_249.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_247();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|811239749", "811239749", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_245.Out", "box_SoundShapeModifier_247.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_252();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|559476475", "559476475", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_245.Out", "box_SoundShapeModifier_252.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundShapeModifier_65_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_195();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1243884791", "1243884791", "UNI54_030_WaterLevelSystem", "box_SoundShapeModifier_65.Paused", "box_Simple_Node_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_154_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_155();
    l0 = self.box_EntityStatusListener_154;
    l1 = self.box_EntityStatusListener_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1164098929", "1164098929", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_154.Enabled", "box_EntityStatusListener_155.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_154_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_257();
    l0 = self.box_EntityStatusListener_154;
    l1 = self.box_MultipleAND_v2_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1015258299", "1015258299", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_154.Loaded", "box_MultipleAND_v2_257.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_StimsEmitter_v2_38_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_32();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|59080691", "59080691", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_38.Enabled", "box_StimsEmitter_v2_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_335();
    l0 = self.box_EntityStatusListener_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|425520431", "425520431", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_337.Out", "box_EntityStatusListener_335.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_337_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_336();
    l0 = self.box_EntityStatusListener_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|446457004", "446457004", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_337.Out", "box_EntityStatusListener_336.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|192910144", "192910144", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_15.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|403966523", "403966523", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_15.Out", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_360_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_362();
    l0 = self.box_PositionModifier_v2_360;
    l1 = self.box_PositionModifier_v2_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1200168716", "1200168716", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_360.StartOut", "box_PositionModifier_v2_362.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_46();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|677038539", "677038539", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_28.Disabled", "box_StimsEmitter_v2_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_129_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_9();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1778810047", "1778810047", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_129.Started", "box_DynamicLightModifier_9.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_363_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_364();
    l0 = self.box_PositionModifier_v2_363;
    l1 = self.box_PositionModifier_v2_364;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1079355592", "1079355592", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_363.StartOut", "box_PositionModifier_v2_364.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_48_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_390();
    l0 = self.box_PositionModifier_v2_48;
    l1 = self.box_PositionModifier_v2_390;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1054823552", "1054823552", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_48.StartOut", "box_PositionModifier_v2_390.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_50();
    l0 = self.box_PositionModifier_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|650470328", "650470328", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_30.Out", "box_PositionModifier_v2_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|349741903", "349741903", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_30.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_139();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|160791967", "160791967", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_30.Out", "box_ParticleSystem_v3_139.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1761670284", "1761670284", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_30.Out", "box_Simple_Node_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_361_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_363();
    l0 = self.box_PositionModifier_v2_361;
    l1 = self.box_PositionModifier_v2_363;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|517204104", "517204104", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_361.StartOut", "box_PositionModifier_v2_363.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_211_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_213();
    l0 = self.box_SoundModifier_v2_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|522594148", "522594148", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_211.Out", "box_SoundModifier_v2_213.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_348_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_347();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1669775152", "1669775152", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_348.Stopped", "box_ParticleSystem_v3_347.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_20_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_20;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|771594234", "771594234", "UNI54_030_WaterLevelSystem", "box_UniversalInteractionListener_20.Interacted", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_117_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_334();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|720937244", "720937244", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_117.Stopped", "box_ParticleSystem_v3_334.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_95_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_95;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1628319384", "1628319384", "UNI54_030_WaterLevelSystem", "box_SoundModifier_v2_95.Started", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_232_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_237();
    l0 = self.box_StaticBreakableListener_232;
    l1 = self.box_SoundModifier_v2_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|832687881", "832687881", "UNI54_030_WaterLevelSystem", "box_StaticBreakableListener_232.OnBreak", "box_SoundModifier_v2_237.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_9_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_351();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|462715654", "462715654", "UNI54_030_WaterLevelSystem", "box_DynamicLightModifier_9.Enabled", "box_ParticleSystem_v3_351.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_138_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_3();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|447766606", "447766606", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_138.Stopped", "box_DynamicLightModifier_3.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_145_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_145;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1939340608", "1939340608", "UNI54_030_WaterLevelSystem", "box_Delay_v5_145.TimeElapsed", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StimsEmitter_v2_4_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_36();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|701449852", "701449852", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_4.Enabled", "box_StimsEmitter_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_101();
    l0 = self.box_UniversalInteractionModifier_v2_43;
    l1 = self.box_UniversalInteractionListener_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1650024941", "1650024941", "UNI54_030_WaterLevelSystem", "box_UniversalInteractionModifier_v2_43.Enabled", "box_UniversalInteractionListener_101.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_300_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_332();
    l0 = self.box_SoundModifier_v2_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1290873361", "1290873361", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_300.Out", "box_SoundModifier_v2_332.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_231_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_236();
    l0 = self.box_StaticBreakableListener_231;
    l1 = self.box_SoundModifier_v2_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1275351761", "1275351761", "UNI54_030_WaterLevelSystem", "box_StaticBreakableListener_231.OnBreak", "box_SoundModifier_v2_236.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_327_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_323();
    l0 = self.box_SoundModifier_v2_323;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|395428634", "395428634", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_327.Out", "box_SoundModifier_v2_323.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_124();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|371413999", "371413999", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_55.Out", "box_ParticleSystem_v3_124.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_35();
    l0 = self.box_PositionModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1687511375", "1687511375", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_55.Out", "box_PositionModifier_v2_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_55_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|57566687", "57566687", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_55.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StimsEmitter_v2_6_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_119();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1407362881", "1407362881", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_6.Disabled", "box_StimsEmitter_v2_119.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_338_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1911985501", "1911985501", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_338.Started", "box_Simple_Node_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_172();
    l0 = self.box_SoundModifier_v2_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1069524970", "1069524970", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_172.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_163();
    l0 = self.box_SoundModifier_v2_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|365728173", "365728173", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_163.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_165();
    l0 = self.box_SoundModifier_v2_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1543993756", "1543993756", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_165.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_170();
    l0 = self.box_SoundModifier_v2_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1351790318", "1351790318", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_170.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_168();
    l0 = self.box_SoundModifier_v2_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|558310133", "558310133", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_168.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_174();
    l0 = self.box_SoundModifier_v2_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|612248639", "612248639", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_174.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_177();
    l0 = self.box_SoundModifier_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1317227465", "1317227465", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_177.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_175();
    l0 = self.box_SoundModifier_v2_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2059727887", "2059727887", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_164.Out", "box_SoundModifier_v2_175.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundShapeModifier_63_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_194();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1187336239", "1187336239", "UNI54_030_WaterLevelSystem", "box_SoundShapeModifier_63.Resumed", "box_Simple_Node_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_279_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_270();
    l0 = self.box_SoundModifier_v2_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|562396014", "562396014", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_279.Out", "box_SoundModifier_v2_270.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_214_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_213();
    l0 = self.box_SoundModifier_v2_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1015539114", "1015539114", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_214.Out", "box_SoundModifier_v2_213.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_343();
    l0 = self.box_MultipleOR_33;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|321861895", "321861895", "UNI54_030_WaterLevelSystem", "box_MultipleOR_33.Out", "box_ShimmerModifier_v2_343.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_19_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1645397746", "1645397746", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_19.Disabled", "box_StimsEmitter_v2_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_239_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_234();
    l0 = self.box_SoundModifier_v2_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|93291045", "93291045", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_239.Out", "box_SoundModifier_v2_234.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_239_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_229();
    l0 = self.box_StaticBreakableListener_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1793591149", "1793591149", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_239.Out", "box_StaticBreakableListener_229.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_336_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_336;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|176463287", "176463287", "UNI54_030_WaterLevelSystem", "box_EntityStatusListener_336.Loaded", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PositionModifier_v2_50_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_358();
    l0 = self.box_PositionModifier_v2_50;
    l1 = self.box_PositionModifier_v2_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|994418043", "994418043", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_50.StartOut", "box_PositionModifier_v2_358.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_355_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_356();
    l0 = self.box_PositionModifier_v2_355;
    l1 = self.box_PositionModifier_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1902630769", "1902630769", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_355.StartOut", "box_PositionModifier_v2_356.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_387_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_382();
    l0 = self.box_SoundModifier_v2_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|745240937", "745240937", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_387.Out", "box_SoundModifier_v2_382.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_387_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_383();
    l0 = self.box_SoundModifier_v2_383;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1523453054", "1523453054", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_387.Out", "box_SoundModifier_v2_383.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_387_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_384();
    l0 = self.box_SoundModifier_v2_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|843623859", "843623859", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_387.Out", "box_SoundModifier_v2_384.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_385_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_379();
    l0 = self.box_SoundModifier_v2_379;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|402662958", "402662958", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_385.Out", "box_SoundModifier_v2_379.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_385_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_380();
    l0 = self.box_SoundModifier_v2_380;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|36783314", "36783314", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_385.Out", "box_SoundModifier_v2_380.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_385_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_381();
    l0 = self.box_SoundModifier_v2_381;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|194286518", "194286518", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_385.Out", "box_SoundModifier_v2_381.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_46_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_27();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1398016883", "1398016883", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_46.Disabled", "box_StimsEmitter_v2_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_358_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_357();
    l0 = self.box_PositionModifier_v2_358;
    l1 = self.box_PositionModifier_v2_357;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|97479687", "97479687", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_358.StartOut", "box_PositionModifier_v2_357.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_101_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_UniversalInteractionListener_101;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|969008722", "969008722", "UNI54_030_WaterLevelSystem", "box_UniversalInteractionListener_101.Interacted", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_133_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_118();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|52512669", "52512669", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_133.Started", "box_ParticleSystem_v3_118.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_133_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_118();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|958945115", "958945115", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_133.Stopped", "box_ParticleSystem_v3_118.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_353_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_354();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|27349116", "27349116", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_353.Started", "box_ParticleSystem_v3_354.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_61();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|939712106", "939712106", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_67.Out", "box_SoundShapeModifier_61.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_62();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2013918233", "2013918233", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_67.Out", "box_SoundShapeModifier_62.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_29_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_UniversalInteractionModifier_v2_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1860324007", "1860324007", "UNI54_030_WaterLevelSystem", "box_UniversalInteractionModifier_v2_29.Enabled", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_254();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2081803215", "2081803215", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_244.Out", "box_SoundShapeModifier_254.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_248();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1826744474", "1826744474", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_244.Out", "box_SoundShapeModifier_248.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_251();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|634218227", "634218227", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_244.Out", "box_SoundShapeModifier_251.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_253();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|659189674", "659189674", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_244.Out", "box_SoundShapeModifier_253.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_39_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_PositionModifier_v2_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1021683933", "1021683933", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_39.Done", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_235();
    l0 = self.box_SoundModifier_v2_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|69744426", "69744426", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_240.Out", "box_SoundModifier_v2_235.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_230();
    l0 = self.box_StaticBreakableListener_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1684058454", "1684058454", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_240.Out", "box_StaticBreakableListener_230.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_22_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_42();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|222406666", "222406666", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_22.Disabled", "box_StimsEmitter_v2_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_121();
    l0 = self.box_MessageListener_v3_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1464612974", "1464612974", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_123.Out", "box_MessageListener_v3_121.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_20();
    l0 = self.box_UniversalInteractionListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|830052403", "830052403", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_123.Out", "box_UniversalInteractionListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ShimmerModifier_v2_343_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_43();
    l0 = self.box_UniversalInteractionModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|863080103", "863080103", "UNI54_030_WaterLevelSystem", "box_ShimmerModifier_v2_343.Enabled", "box_UniversalInteractionModifier_v2_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_16_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_127();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|942004360", "942004360", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_16.Started", "box_ParticleSystem_v3_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_16_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_127();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|223011781", "223011781", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_16.Stopped", "box_ParticleSystem_v3_127.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_364_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_41();
    l0 = self.box_PositionModifier_v2_364;
    l1 = self.box_PositionModifier_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1990594352", "1990594352", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_364.StartOut", "box_PositionModifier_v2_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_146_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_376();
    l0 = self.box_MultipleOR_146;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1840953869", "1840953869", "UNI54_030_WaterLevelSystem", "box_MultipleOR_146.Out", "box_OutputOrder_v2_376.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_124_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_102();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|657143135", "657143135", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_124.Stopped", "box_DynamicLightModifier_102.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_37();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2095279094", "2095279094", "UNI54_030_WaterLevelSystem", "box_MultipleOR_23.Out", "box_StimsEmitter_v2_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2031087928", "2031087928", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_51.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|415182269", "415182269", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_51.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_375_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_368();
    l0 = self.box_SoundModifier_v2_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|979821200", "979821200", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_375.Out", "box_SoundModifier_v2_368.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_375_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_371();
    l0 = self.box_SoundModifier_v2_371;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|9536427", "9536427", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_375.Out", "box_SoundModifier_v2_371.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_375_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_374();
    l0 = self.box_SoundModifier_v2_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|539560477", "539560477", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_375.Out", "box_SoundModifier_v2_374.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_375_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_369();
    l0 = self.box_SoundModifier_v2_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|556145500", "556145500", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_375.Out", "box_SoundModifier_v2_369.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_375_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_372();
    l0 = self.box_SoundModifier_v2_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|460165735", "460165735", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_375.Out", "box_SoundModifier_v2_372.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_375_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_370();
    l0 = self.box_SoundModifier_v2_370;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2130035176", "2130035176", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_375.Out", "box_SoundModifier_v2_370.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StimsEmitter_v2_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_34();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|749617401", "749617401", "UNI54_030_WaterLevelSystem", "box_StimsEmitter_v2_36.Enabled", "box_StimsEmitter_v2_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_259_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_152();
    l0 = self.box_MultipleAND_v2_259;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|71601456", "71601456", "UNI54_030_WaterLevelSystem", "box_MultipleAND_v2_259.Out", "box_DynamicLightModifier_152.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_388_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_382();
    l0 = self.box_SoundModifier_v2_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|659210026", "659210026", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_388.Out", "box_SoundModifier_v2_382.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_388_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_383();
    l0 = self.box_SoundModifier_v2_383;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1761501760", "1761501760", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_388.Out", "box_SoundModifier_v2_383.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_388_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_384();
    l0 = self.box_SoundModifier_v2_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1647608484", "1647608484", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_388.Out", "box_SoundModifier_v2_384.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_268_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_96();
    l0 = self.box_SoundModifier_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1795300093", "1795300093", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_268.Out", "box_SoundModifier_v2_96.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_268_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_377();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1114572760", "1114572760", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_268.Out", "box_Simple_Node_377.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_286_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_217();
    l0 = self.box_SoundModifier_v2_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1021715349", "1021715349", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_286.Out", "box_SoundModifier_v2_217.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_41_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_PositionModifier_v2_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1539590008", "1539590008", "UNI54_030_WaterLevelSystem", "box_PositionModifier_v2_41.Done", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_256();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1218666149", "1218666149", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_255.Out", "box_SoundShapeModifier_256.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_246();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1625828972", "1625828972", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_255.Out", "box_SoundShapeModifier_246.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_247();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|142729464", "142729464", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_255.Out", "box_SoundShapeModifier_247.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_252();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|613177652", "613177652", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_255.Out", "box_SoundShapeModifier_252.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_255_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_249();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|86811786", "86811786", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_255.Out", "box_SoundShapeModifier_249.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_230_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_235();
    l0 = self.box_StaticBreakableListener_230;
    l1 = self.box_SoundModifier_v2_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|619791778", "619791778", "UNI54_030_WaterLevelSystem", "box_StaticBreakableListener_230.OnBreak", "box_SoundModifier_v2_235.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_SoundShapeModifier_62_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_197();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1613531424", "1613531424", "UNI54_030_WaterLevelSystem", "box_SoundShapeModifier_62.Paused", "box_Simple_Node_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_351_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_352();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|430088243", "430088243", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_351.Started", "box_ParticleSystem_v3_352.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_125_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_126();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1097345390", "1097345390", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_125.Started", "box_ParticleSystem_v3_126.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_125_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_126();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1956878478", "1956878478", "UNI54_030_WaterLevelSystem", "box_ParticleSystem_v3_125.Stopped", "box_ParticleSystem_v3_126.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_331_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_311();
    l0 = self.box_SoundModifier_v2_311;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1022908097", "1022908097", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_311.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_331_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_322();
    l0 = self.box_SoundModifier_v2_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|500898673", "500898673", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_322.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_331_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_302();
    l0 = self.box_SoundModifier_v2_302;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1566102110", "1566102110", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_302.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_331_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_320();
    l0 = self.box_SoundModifier_v2_320;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1562756283", "1562756283", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_320.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_331_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_312();
    l0 = self.box_SoundModifier_v2_312;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|401947004", "401947004", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_312.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_331_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_319();
    l0 = self.box_SoundModifier_v2_319;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1445342870", "1445342870", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_319.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_331_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_313();
    l0 = self.box_SoundModifier_v2_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1743616650", "1743616650", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_313.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_331_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_304();
    l0 = self.box_SoundModifier_v2_304;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1273245337", "1273245337", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_331.Out", "box_SoundModifier_v2_304.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundShapeModifier_60_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_196();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2112211540", "2112211540", "UNI54_030_WaterLevelSystem", "box_SoundShapeModifier_60.Resumed", "box_Simple_Node_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|601650130", "601650130", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_86.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1321885771", "1321885771", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_86.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1815434873", "1815434873", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_86.Out", "box_ParticleSystem_v3_16.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_392();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1713315151", "1713315151", "UNI54_030_WaterLevelSystem", "box_OutputOrder_v2_86.Out", "box_Simple_Node_392.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank1_WaterDown_Pause");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank1_WaterDown_Resume");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank1_WaterUp_Pause");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank1_WaterUP_Resume");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank2_WaterDown_Pause");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank2_WaterDown_Resume");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_84_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank2_WaterUp_Pause");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Audio_Tank2_WaterUp_Resume");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_79_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_391()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Start_Machine_Sounds");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_391_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Start_Pipe_Suction_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_263_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_392()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Stop_Machine_Sounds");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_392_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Stop_Tank_1_Buzzer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_150_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Stop_Tank_2_Buzzer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_377()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank_1_Tunnels_Buzzer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_377_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_378()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_378");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank_2_Tunnels_Buzzer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_378_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank1_Switch_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank2_Start_Machine_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_393_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_394()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank2_Stop_Machine_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_394_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Tank2_Switch_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Water_Start_Sound_Tank1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_196_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Water_Start_Sound_Tank2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_194_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Water_Stop_Sound_Tank1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_197_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|@Water_Stope_Sound_Tank2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_195_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_274()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799954920185090",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|5537713");
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
                [1] = self.f_box_OutputOrder_v2_282_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|6341014");
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
                [1] = self.f_box_OutputOrder_v2_278_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_175()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662388711550506",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_161()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662248107994644",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|22103106");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966145353640591",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_192()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662264379797016",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|36495317");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_136_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_136_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889941039104789",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|38906201");
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
                [0] = self.f_box_OutputOrder_v2_267_Out_0,
                [1] = self.f_box_OutputOrder_v2_267_Out_1,
                [2] = self.f_box_OutputOrder_v2_267_Out_2,
                [3] = self.f_box_OutputOrder_v2_267_Out_3,
                [4] = self.f_box_OutputOrder_v2_267_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_379()
    local params;
    params = {
        -- Pawns,
        [0] = "2099822151417732196",
        -- SoundId,
        [1] = "293166592",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|53180240");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
                [2] = self.f_box_OutputOrder_v2_114_Out_2,
                [3] = self.f_box_OutputOrder_v2_114_Out_3,
                [4] = self.f_box_OutputOrder_v2_114_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_158()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662387797192232",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_12()
    local params;
    params = {
        -- usableEntity,
        [4] = "2103498790630618350",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_188()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662376929750558",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|88262390");
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
                [1] = self.f_box_OutputOrder_v2_215_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|89464115");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_354_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546671384859686",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|100493028");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800007191698703",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_208()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799976319524106",
        -- SoundId,
        [1] = "1424678721",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|101907588");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_190_Out_0,
                [1] = self.f_box_OutputOrder_v2_190_Out_1,
                [2] = self.f_box_OutputOrder_v2_190_Out_2,
                [3] = self.f_box_OutputOrder_v2_190_Out_3,
                [4] = self.f_box_OutputOrder_v2_190_Out_4,
                [5] = self.f_box_OutputOrder_v2_190_Out_5,
                [6] = self.f_box_OutputOrder_v2_190_Out_6,
                [7] = self.f_box_OutputOrder_v2_190_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|106081114");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|108279795");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
                [2] = self.f_box_OutputOrder_v2_92_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|116099528");
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
                [1] = self.f_box_OutputOrder_v2_220_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|117057318");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966127685134988",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|125206093");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966137346714254",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|142500873");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_3_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2100580052700767761",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|154381691");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_140_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_140_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889949308175129",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_35()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2100568168127802915",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101436682143283690",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|173101775");
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
                [0] = self.f_box_OutputOrder_v2_241_Out_0,
                [1] = self.f_box_OutputOrder_v2_241_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|173811959");
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
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_257()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_352()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|179278290");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_352_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103579309475107563",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|195487497");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
                [2] = self.f_box_OutputOrder_v2_91_Out_2,
                [3] = self.f_box_OutputOrder_v2_91_Out_3,
                [4] = self.f_box_OutputOrder_v2_91_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|200997818");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_10_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2100580052700767761",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_341()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868267897135723",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_169()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662388711550506",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_329()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|219293299");
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
                [1] = self.f_box_OutputOrder_v2_329_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|220312232");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_135_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_135_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889949308175129",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_155()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100194591738211486",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|226795420");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102889917567779593",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_171()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662266128821786",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_389()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2105307930965329927",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105307930961135616",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|243995565");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
                [1] = self.f_box_OutputOrder_v2_184_Out_1,
                [2] = self.f_box_OutputOrder_v2_184_Out_2,
                [3] = self.f_box_OutputOrder_v2_184_Out_3,
                [4] = self.f_box_OutputOrder_v2_184_Out_4,
                [5] = self.f_box_OutputOrder_v2_184_Out_5,
                [6] = self.f_box_OutputOrder_v2_184_Out_6,
                [7] = self.f_box_OutputOrder_v2_184_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|246128009");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_137_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_137_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889925685854989",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_178()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662376929750558",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|276477228");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
                [2] = self.f_box_OutputOrder_v2_88_Out_2,
                [3] = self.f_box_OutputOrder_v2_88_Out_3,
                [4] = self.f_box_OutputOrder_v2_88_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_357()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2104575875117749222",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104574058539534042",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_311()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662399375568434",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|292463503");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_320()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662392448675372",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_160()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662385244958246",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_156()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102889917567779593",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_187()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662264379797016",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|323449883");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_152_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2100580052700767761",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_319()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662382485106212",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|345733405");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
                [2] = self.f_box_OutputOrder_v2_89_Out_2,
                [3] = self.f_box_OutputOrder_v2_89_Out_3,
                [4] = self.f_box_OutputOrder_v2_89_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|355303611");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532750738626251",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|369320471");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|371888634");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532810450835148",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|374050654");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_132_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_132_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889891831530048",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|379686650");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_134_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_134_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889932495307537",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_380()
    local params;
    params = {
        -- Pawns,
        [0] = "2099822151419829370",
        -- SoundId,
        [1] = "293166592",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|385339877");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_142_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_142_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889925685854989",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|391063406");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2103512002952457299",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|404038089");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_102_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2100194591738211486",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|413100241");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_334_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546652474840094",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_234()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799934202420478",
        -- SoundId,
        [1] = "1611112466",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_333()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662378672483872",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_5()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2100112279241498372",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100015418155468682",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_314()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799954920185090",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 1,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_217()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799954920185090",
        -- SoundId,
        [1] = "1424678721",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_172()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662399375568434",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|469479998");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|480658742");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_349_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546662964794402",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|485458441");
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
                [0] = self.f_box_OutputOrder_v2_243_Out_0,
                [1] = self.f_box_OutputOrder_v2_243_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|487406834");
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
                [0] = self.f_box_OutputOrder_v2_242_Out_0,
                [1] = self.f_box_OutputOrder_v2_242_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|490306988");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|500764467");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193404030844522",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_376()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|500790917");
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
                [0] = self.f_box_OutputOrder_v2_376_Out_0,
                [1] = self.f_box_OutputOrder_v2_376_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_382()
    local params;
    params = {
        -- Pawns,
        [0] = "2099808860230393870",
        -- SoundId,
        [1] = "293166592",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|564957851");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
                [4] = self.f_box_OutputOrder_v2_56_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_356()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2104575901558641642",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104574058539534042",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|587419200");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532842138801870",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|605014290");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104811928810440678",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|606328223");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800033456430353",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_342()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|607018208");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_342_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2103498790630618350",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|612355887");
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
                [1] = self.f_box_OutputOrder_v2_216_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_228()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099822151413537874",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_359()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2104576159965521890",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104576159963424731",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_157()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662392448675372",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_326()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662376929750558",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_168()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662387797192232",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|644650067");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|655972803");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193468260321168",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|661896296");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
                [2] = self.f_box_OutputOrder_v2_93_Out_2,
                [3] = self.f_box_OutputOrder_v2_93_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_270()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799954920185090",
        -- SoundId,
        [1] = "3219100226",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_335()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099985147087556188",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|692172857");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|701683467");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_350_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103579309475107563",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_226()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799939539672320",
        -- SoundId,
        [1] = "1611112466",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|711596345");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
                [2] = self.f_box_OutputOrder_v2_162_Out_2,
                [3] = self.f_box_OutputOrder_v2_162_Out_3,
                [4] = self.f_box_OutputOrder_v2_162_Out_4,
                [5] = self.f_box_OutputOrder_v2_162_Out_5,
                [6] = self.f_box_OutputOrder_v2_162_Out_6,
                [7] = self.f_box_OutputOrder_v2_162_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_225()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799976319524106",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|723247730");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_127_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_127_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889792084684090",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_166()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662398096305712",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|741062833");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_37_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193477521344404",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|743592279");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_139_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_139_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889932495307537",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|752001816");
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
                [0] = self.f_box_OutputOrder_v2_373_Out_0,
                [1] = self.f_box_OutputOrder_v2_373_Out_1,
                [2] = self.f_box_OutputOrder_v2_373_Out_2,
                [3] = self.f_box_OutputOrder_v2_373_Out_3,
                [4] = self.f_box_OutputOrder_v2_373_Out_4,
                [5] = self.f_box_OutputOrder_v2_373_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|757745732");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|758996674");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI054_030_WaterLevelSystem script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_94()
    local params;
    params = {
        -- Pawns,
        [0] = "2101189677598910069",
        -- SoundId,
        [1] = "356233039",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|763777624");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800286463139095",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_176()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662396340989486",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_182()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662262758698518",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|770425007");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_151_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2100194591738211486",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_365()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868277516771963",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_386()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_386");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|775880950");
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
                [0] = self.f_box_OutputOrder_v2_386_Out_0,
                [1] = self.f_box_OutputOrder_v2_386_Out_1,
                [2] = self.f_box_OutputOrder_v2_386_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_121()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "ButtonPressed",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|784562257");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_143_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889917567779593",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_362()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2104576197173192680",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104576197171095525",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|802898135");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966131829107341",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|806291312");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_229()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099822151419829370",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|820537649");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_119_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193404030844522",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_1()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2100568160884239903",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101436682143283690",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|837631276");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193404030844522",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_366()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868236756525663",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_374()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868271082709617",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_49()
    local params;
    params = {
        -- usableEntity,
        [4] = "2103512002952457299",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_193()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662248107994644",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_191()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662266128821786",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|865225647");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|874720470");
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
                [0] = self.f_box_OutputOrder_v2_297_Out_0,
                [1] = self.f_box_OutputOrder_v2_297_Out_1,
                [2] = self.f_box_OutputOrder_v2_297_Out_2,
                [3] = self.f_box_OutputOrder_v2_297_Out_3,
                [4] = self.f_box_OutputOrder_v2_297_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|876986319");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101135027227084463",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|887894209");
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

function export:OnEnter_box_SoundModifier_v2_381()
    local params;
    params = {
        -- Pawns,
        [0] = "2099822151413537874",
        -- SoundId,
        [1] = "293166592",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|895342474");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_42_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193312217525284",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|898815380");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
                [2] = self.f_box_OutputOrder_v2_87_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|900347785");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
                [2] = self.f_box_OutputOrder_v2_90_Out_2,
                [3] = self.f_box_OutputOrder_v2_90_Out_3,
                [4] = self.f_box_OutputOrder_v2_90_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|922222085");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_313()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662385244958246",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|945689200");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193468260321168",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|963943479");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_345()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|968421328");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2103498790630618350",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|972380685");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
                [3] = self.f_box_OutputOrder_v2_112_Out_3,
                [4] = self.f_box_OutputOrder_v2_112_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|975275293");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_52_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104811876262103012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|983071789");
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
                [0] = self.f_box_OutputOrder_v2_250_Out_0,
                [1] = self.f_box_OutputOrder_v2_250_Out_1,
                [2] = self.f_box_OutputOrder_v2_250_Out_2,
                [3] = self.f_box_OutputOrder_v2_250_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_181()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662262758698518",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_237()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799917056105720",
        -- SoundId,
        [1] = "1611112466",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_346()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1031283539");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_346_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103580589459259648",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1050768998");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_130_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_130_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889907344163585",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_165()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662396340989486",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_370()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868276115874423",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1063225001");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104811876262103012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1082556910");
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
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1104340771");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800020766563600",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_177()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662385244958246",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_260()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868250291544673",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_53()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2100582510372076767",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101384030648808169",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_390()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2105307930965329923",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105307930961135616",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_325()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662266128821786",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_330()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1145886385");
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
                [1] = self.f_box_OutputOrder_v2_330_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1165994717");
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
                [1] = self.f_box_OutputOrder_v2_269_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1179024597");
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
                [0] = self.f_box_OutputOrder_v2_294_Out_0,
                [1] = self.f_box_OutputOrder_v2_294_Out_1,
                [2] = self.f_box_OutputOrder_v2_294_Out_2,
                [3] = self.f_box_OutputOrder_v2_294_Out_3,
                [4] = self.f_box_OutputOrder_v2_294_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_347()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1183121312");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_347_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546671384859686",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "2101189677598910069",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1198700330");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800057896639764",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100580052700767761",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1207237800");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_8_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193477521344404",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_302()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662396340989486",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1224814754");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_131_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_131_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889891831530048",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1227728117");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_118_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104811928810440678",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_186()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662379941260834",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_213()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799976319524106",
        -- SoundId,
        [1] = "3219100226",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1238344143");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_120_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193142251732626",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_284()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799954920185090",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1271299871");
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
                [0] = self.f_box_OutputOrder_v2_227_Out_0,
                [1] = self.f_box_OutputOrder_v2_227_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1272632327");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_126_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_126_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889792084684090",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_322()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662398096305712",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1281870755");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_141_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_141_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889941039104789",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1293333151");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_306_Out_0,
                [1] = self.f_box_OutputOrder_v2_306_Out_1,
                [2] = self.f_box_OutputOrder_v2_306_Out_2,
                [3] = self.f_box_OutputOrder_v2_306_Out_3,
                [4] = self.f_box_OutputOrder_v2_306_Out_4,
                [5] = self.f_box_OutputOrder_v2_306_Out_5,
                [6] = self.f_box_OutputOrder_v2_306_Out_6,
                [7] = self.f_box_OutputOrder_v2_306_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_96()
    local params;
    params = {
        -- Pawns,
        [0] = "2101189666689525363",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_233()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099808860230393870",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1322227750");
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
                [0] = self.f_box_OutputOrder_v2_245_Out_0,
                [1] = self.f_box_OutputOrder_v2_245_Out_1,
                [2] = self.f_box_OutputOrder_v2_245_Out_2,
                [3] = self.f_box_OutputOrder_v2_245_Out_3,
                [4] = self.f_box_OutputOrder_v2_245_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1324057706");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_SoundShapeModifier_65_Paused,
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101134997709670061",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_154()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102889758578486580",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_304()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662388711550506",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1328172930");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_38_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193472395904914",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1332104299");
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
                [0] = self.f_box_OutputOrder_v2_337_Out_0,
                [1] = self.f_box_OutputOrder_v2_337_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1337876735");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_360()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2104576134122317778",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104576134124414937",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1350767377");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_28_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193477521344404",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1350830746");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_129_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889758578486580",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_363()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2104576134122317782",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104576134124414937",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_312()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662387797192232",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_48()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2100582506070818011",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101384030648808169",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_265()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868261697954407",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1408534558");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
                [3] = self.f_box_OutputOrder_v2_30_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_180()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662268408426012",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_361()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2104576159965521886",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104576159963424731",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_328()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662379941260834",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_183()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662378672483872",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1432109229");
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
                [1] = self.f_box_OutputOrder_v2_211_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1433716371");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_348_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546671384859690",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1434150560");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800049755495699",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1436255103");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532990529083089",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2103498790630618350",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1473802508");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_117_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103580589459259648",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_95()
    local params;
    params = {
        -- Pawns,
        [0] = "2101189666689525363",
        -- SoundId,
        [1] = "356233039",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1480793233");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532958178416336",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_232()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099808860234588196",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_179()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662378672483872",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1491313969");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_9_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2100194591738211486",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1491315746");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532881921775311",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_372()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868273836270197",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_174()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662382485106212",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_185()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662268408426012",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1524303257");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102889758578486580",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_173()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662382485106212",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_189()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662379941260834",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1545604669");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_138_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889917567779593",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_258()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868229429076573",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_145()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1585649927");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_4_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193142251732626",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1587896815");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800064383130901",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_43()
    local params;
    params = {
        -- usableEntity,
        [4] = "2103512002952457299",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1591259560");
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
                [1] = self.f_box_OutputOrder_v2_300_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_231()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099808860228296700",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1595326332");
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
                [1] = self.f_box_OutputOrder_v2_327_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1595540502");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800042820214034",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1605470722");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
                [2] = self.f_box_OutputOrder_v2_55_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1606467458");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101135018687481518",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1607163221");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_6_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193312217525284",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_338()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1613046969");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_338_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546652474840094",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_236()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799911077125366",
        -- SoundId,
        [1] = "1611112466",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_340()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868280886895231",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1626921519");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
                [2] = self.f_box_OutputOrder_v2_164_Out_2,
                [3] = self.f_box_OutputOrder_v2_164_Out_3,
                [4] = self.f_box_OutputOrder_v2_164_Out_4,
                [5] = self.f_box_OutputOrder_v2_164_Out_5,
                [6] = self.f_box_OutputOrder_v2_164_Out_6,
                [7] = self.f_box_OutputOrder_v2_164_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1637864881");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103966151812868752",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1639462824");
    l0:SetConnections({
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_63_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101134979586082476",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1645061550");
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
                [1] = self.f_box_OutputOrder_v2_279_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_369()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868272628310643",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1651717421");
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
                [1] = self.f_box_OutputOrder_v2_214_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_317()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662268408426012",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_167()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662399375568434",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1666166298");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_19_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193472395904914",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1671206844");
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
                [0] = self.f_box_OutputOrder_v2_239_Out_0,
                [1] = self.f_box_OutputOrder_v2_239_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_336()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100110258318891508",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_50()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2100112238342840064",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100015418155468682",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_355()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2104575865305175010",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104574040415946456",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_387()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1703040619");
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
                [0] = self.f_box_OutputOrder_v2_387_Out_0,
                [1] = self.f_box_OutputOrder_v2_387_Out_1,
                [2] = self.f_box_OutputOrder_v2_387_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_385()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1711834531");
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
                [0] = self.f_box_OutputOrder_v2_385_Out_0,
                [1] = self.f_box_OutputOrder_v2_385_Out_1,
                [2] = self.f_box_OutputOrder_v2_385_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1715920767");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_46_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193472395904914",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_163()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662398096305712",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_367()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868280184349309",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_358()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2104574510473692893",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104574040415946456",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1728916256");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101533036796450514",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2103512002952457299",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1754987176");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_133_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_133_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889907344163585",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1758213626");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_353_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546671384859690",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1774247989");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1778166624");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101532836572960461",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_29()
    local params;
    params = {
        -- usableEntity,
        [4] = "2103498790630618350",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1784492055");
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
                [0] = self.f_box_OutputOrder_v2_244_Out_0,
                [1] = self.f_box_OutputOrder_v2_244_Out_1,
                [2] = self.f_box_OutputOrder_v2_244_Out_2,
                [3] = self.f_box_OutputOrder_v2_244_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_39()
    local params;
    params = {
        -- blendTime,
        [1] = 10,
        -- endTarget,
        [4] = "2100582871151434644",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100582871149337485",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1798072036");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1802095928");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_22_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193142251732626",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1815984865");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_383()
    local params;
    params = {
        -- Pawns,
        [0] = "2099808860234588196",
        -- SoundId,
        [1] = "293166592",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1827305772");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_343_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2103512002952457299",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1831397019");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_16_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_16_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889769452219702",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_364()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2104576197175289836",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104576197171095525",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_235()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799930658233596",
        -- SoundId,
        [1] = "1611112466",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_305()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799976319524106",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 1,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_368()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868269300130413",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1880845950");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101135046176949938",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1882719047");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_124_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889758578486580",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_371()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868270266917487",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_384()
    local params;
    params = {
        -- Pawns,
        [0] = "2099808860228296700",
        -- SoundId,
        [1] = "293166592",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1912177872");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193468260321168",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1915733689");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101134941893969579",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1934651741");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_309()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662262758698518",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_375()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1937620882");
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
                [0] = self.f_box_OutputOrder_v2_375_Out_0,
                [1] = self.f_box_OutputOrder_v2_375_Out_1,
                [2] = self.f_box_OutputOrder_v2_375_Out_2,
                [3] = self.f_box_OutputOrder_v2_375_Out_3,
                [4] = self.f_box_OutputOrder_v2_375_Out_4,
                [5] = self.f_box_OutputOrder_v2_375_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_262()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868251799396963",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1949454237");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_36_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100193312217525284",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_259()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_308()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662264379797016",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_388()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1968381599");
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
                [0] = self.f_box_OutputOrder_v2_388_Out_0,
                [1] = self.f_box_OutputOrder_v2_388_Out_1,
                [2] = self.f_box_OutputOrder_v2_388_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_238()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799921600634106",
        -- SoundId,
        [1] = "1611112466",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1982571847");
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
                [0] = self.f_box_OutputOrder_v2_268_Out_0,
                [1] = self.f_box_OutputOrder_v2_268_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_323()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799976319524106",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1991180354");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103800281048292630",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|1994882408");
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
                [1] = self.f_box_OutputOrder_v2_286_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_277()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799976319524106",
        -- SoundId,
        [1] = "2100439534",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_170()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662392448675372",
        -- SoundId,
        [1] = "2662017895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_41()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2100582871149337488",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100582871149337485",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_315()
    local params;
    params = {
        -- Pawns,
        [0] = "2103662248107994644",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2063148711");
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
                [0] = self.f_box_OutputOrder_v2_255_Out_0,
                [1] = self.f_box_OutputOrder_v2_255_Out_1,
                [2] = self.f_box_OutputOrder_v2_255_Out_2,
                [3] = self.f_box_OutputOrder_v2_255_Out_3,
                [4] = self.f_box_OutputOrder_v2_255_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_230()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2099822151417732196",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2092759671");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_SoundShapeModifier_62_Paused,
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101135036355987120",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_339()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868276931666553",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_332()
    local params;
    params = {
        -- Pawns,
        [0] = "2103799954920185090",
        -- SoundId,
        [1] = "2819987801",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2096799169");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_351_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104546662964794402",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2109061815");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_125_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_125_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102889769452219702",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_261()
    local params;
    params = {
        -- Pawns,
        [0] = "2104868253296763493",
        -- SoundId,
        [1] = "280970407",
        -- SoundType,
        [2] = 1,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2141398662");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_331_Out_0,
                [1] = self.f_box_OutputOrder_v2_331_Out_1,
                [2] = self.f_box_OutputOrder_v2_331_Out_2,
                [3] = self.f_box_OutputOrder_v2_331_Out_3,
                [4] = self.f_box_OutputOrder_v2_331_Out_4,
                [5] = self.f_box_OutputOrder_v2_331_Out_5,
                [6] = self.f_box_OutputOrder_v2_331_Out_6,
                [7] = self.f_box_OutputOrder_v2_331_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2145017864");
    l0:SetConnections({
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_60_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 2,
        -- SoundShapeId,
        [1] = "2101135041523369649",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_WaterLevelSystem.domino|@UNI54_030_WaterLevelSystem|2146017799");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
                [2] = self.f_box_OutputOrder_v2_86_Out_2,
                [3] = self.f_box_OutputOrder_v2_86_Out_3,
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
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
