LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b10_new.domino
-- User graph: Helico_Wreck_Visibility
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B10_NEW.Helico_Wreck_Visibility.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Hide",
            },
            [1] = {
                name = "Unhide",
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
    self._name = "Helico_Wreck_Visibility";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility";
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|28842289");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
    });
    self.box_EntityStatusListener_57 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|590710676");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_57_Loaded,
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|620527235");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 17,
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
    self.box_EntityStatusListener_67 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|623898962");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_67_Loaded,
    });
    self.box_EntityStatusListener_78 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|726604228");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_78_Loaded,
    });
    self.box_EntityStatusListener_77 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|808052729");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_77_Loaded,
    });
    self.box_VisibilityModifier_81 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|848316275");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_72 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|860130995");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_72_Loaded,
    });
    self.box_EntityStatusListener_76 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|894356443");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_76_Loaded,
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1158625555");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_65_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1163183994");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_EntityStatusListener_59 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1345411155");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_59_Loaded,
    });
    self.box_EntityStatusListener_80 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1471676440");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_80_Loaded,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1493164850");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
    });
    self.box_PhysicsModifier_54 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1754227088");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_61 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1792070998");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_61_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_61_Enabled,
    });
    self.box_EntityStatusListener_55 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1832321139");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_55_Loaded,
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1842536168");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_EntityStatusListener_63 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1925437723");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_63_Loaded,
    });
    self.box_EntityStatusListener_60 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1954448211");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_60_Loaded,
    });
    self.box_EntityStatusListener_56 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1973456488");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_56_Loaded,
    });
    self.box_EntityStatusListener_66 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1982350756");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_66_Loaded,
    });
    self.box_EntityStatusListener_69 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|2100410842");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_69_Loaded,
    });
end;

function export:Hide()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1069537893", "1069537893", "Helico_Wreck_Visibility", "Hide", "box_OutputOrder_v2_58.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Unhide()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|2346826", "2346826", "Helico_Wreck_Visibility", "Unhide", "box_OutputOrder_v2_73.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_62;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|164085609", "164085609", "Helico_Wreck_Visibility", "box_EntityStatusListener_62.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_55();
    l0 = self.box_EntityStatusListener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1395365019", "1395365019", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|818816179", "818816179", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_76();
    l0 = self.box_EntityStatusListener_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|661143613", "661143613", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_69();
    l0 = self.box_EntityStatusListener_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|447486645", "447486645", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_67();
    l0 = self.box_EntityStatusListener_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1208008215", "1208008215", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_77();
    l0 = self.box_EntityStatusListener_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|2047932478", "2047932478", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_60();
    l0 = self.box_EntityStatusListener_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1058005250", "1058005250", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_78();
    l0 = self.box_EntityStatusListener_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|2113062050", "2113062050", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_57();
    l0 = self.box_EntityStatusListener_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|595021118", "595021118", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_63();
    l0 = self.box_EntityStatusListener_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1744258876", "1744258876", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_72();
    l0 = self.box_EntityStatusListener_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|254588379", "254588379", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_80();
    l0 = self.box_EntityStatusListener_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1738462809", "1738462809", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_56();
    l0 = self.box_EntityStatusListener_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1623351218", "1623351218", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|2745160", "2745160", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|119181401", "119181401", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_66();
    l0 = self.box_EntityStatusListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|393827917", "393827917", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1937164947", "1937164947", "Helico_Wreck_Visibility", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1731616708", "1731616708", "Helico_Wreck_Visibility", "box_Simple_Node_74.Out", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|811812103", "811812103", "Helico_Wreck_Visibility", "box_OutputOrder_v2_71.Out", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|629885685", "629885685", "Helico_Wreck_Visibility", "box_OutputOrder_v2_71.Out", "box_Delay_v5_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_57_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_57;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1288439229", "1288439229", "Helico_Wreck_Visibility", "box_EntityStatusListener_57.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_MultipleOR_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = self.box_MultipleOR_75;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|839639885", "839639885", "Helico_Wreck_Visibility", "box_MultipleOR_75.Out", "box_Simple_Node_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_67_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_67;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|407631132", "407631132", "Helico_Wreck_Visibility", "box_EntityStatusListener_67.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_EntityStatusListener_78_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_78;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|852866282", "852866282", "Helico_Wreck_Visibility", "box_EntityStatusListener_78.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_EntityStatusListener_77_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_77;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1801171874", "1801171874", "Helico_Wreck_Visibility", "box_EntityStatusListener_77.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_EntityStatusListener_72_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_72;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|49791185", "49791185", "Helico_Wreck_Visibility", "box_EntityStatusListener_72.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_61();
    l0 = self.box_VisibilityModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|537037250", "537037250", "Helico_Wreck_Visibility", "box_OutputOrder_v2_82.Out", "box_VisibilityModifier_61.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_81();
    l0 = self.box_VisibilityModifier_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|171819719", "171819719", "Helico_Wreck_Visibility", "box_OutputOrder_v2_82.Out", "box_VisibilityModifier_81.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_76_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_76;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1318415128", "1318415128", "Helico_Wreck_Visibility", "box_EntityStatusListener_76.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_65_LoopingEnded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_79();
    l0 = self.box_Delay_v5_65;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1356507816", "1356507816", "Helico_Wreck_Visibility", "box_Delay_v5_65.LoopingEnded", "box_Simple_Node_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_65;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|943944161", "943944161", "Helico_Wreck_Visibility", "box_Delay_v5_65.TimeElapsed", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_MultipleOR_68;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1835644393", "1835644393", "Helico_Wreck_Visibility", "box_MultipleOR_68.Out", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_59_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|317248671", "317248671", "Helico_Wreck_Visibility", "box_EntityStatusListener_59.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 14);
end;

function export:f_box_EntityStatusListener_80_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_80;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|291169558", "291169558", "Helico_Wreck_Visibility", "box_EntityStatusListener_80.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1286945600", "1286945600", "Helico_Wreck_Visibility", "box_EntityStatusListener_53.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 16);
end;

function export:f_box_Simple_Node_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|602564911", "602564911", "Helico_Wreck_Visibility", "box_Simple_Node_79.Out", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VisibilityModifier_61_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_54();
    l0 = self.box_VisibilityModifier_61;
    l1 = self.box_PhysicsModifier_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|642093923", "642093923", "Helico_Wreck_Visibility", "box_VisibilityModifier_61.Disabled", "box_PhysicsModifier_54.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_61_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_54();
    l0 = self.box_VisibilityModifier_61;
    l1 = self.box_PhysicsModifier_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1956654584", "1956654584", "Helico_Wreck_Visibility", "box_VisibilityModifier_61.Enabled", "box_PhysicsModifier_54.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_55_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_55;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|269155344", "269155344", "Helico_Wreck_Visibility", "box_EntityStatusListener_55.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_64;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1715140963", "1715140963", "Helico_Wreck_Visibility", "box_EntityStatusListener_64.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_EntityStatusListener_63_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|796811270", "796811270", "Helico_Wreck_Visibility", "box_EntityStatusListener_63.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_EntityStatusListener_60_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_60;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1667670513", "1667670513", "Helico_Wreck_Visibility", "box_EntityStatusListener_60.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_EntityStatusListener_56_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_56;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1040592800", "1040592800", "Helico_Wreck_Visibility", "box_EntityStatusListener_56.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_EntityStatusListener_66_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_66;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1366508455", "1366508455", "Helico_Wreck_Visibility", "box_EntityStatusListener_66.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 15);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1638226930", "1638226930", "Helico_Wreck_Visibility", "box_OutputOrder_v2_73.Out", "box_Delay_v5_65.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_61();
    l0 = self.box_VisibilityModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|818854279", "818854279", "Helico_Wreck_Visibility", "box_OutputOrder_v2_73.Out", "box_VisibilityModifier_61.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_69_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_69;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1341922971", "1341922971", "Helico_Wreck_Visibility", "box_EntityStatusListener_69.Loaded", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:OnEnter_box_EntityStatusListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101823782206337566",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|335198207");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 18,
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [2] = self.f_box_OutputOrder_v2_58_Out_2,
                [3] = self.f_box_OutputOrder_v2_58_Out_3,
                [4] = self.f_box_OutputOrder_v2_58_Out_4,
                [5] = self.f_box_OutputOrder_v2_58_Out_5,
                [6] = self.f_box_OutputOrder_v2_58_Out_6,
                [7] = self.f_box_OutputOrder_v2_58_Out_7,
                [8] = self.f_box_OutputOrder_v2_58_Out_8,
                [9] = self.f_box_OutputOrder_v2_58_Out_9,
                [10] = self.f_box_OutputOrder_v2_58_Out_10,
                [11] = self.f_box_OutputOrder_v2_58_Out_11,
                [12] = self.f_box_OutputOrder_v2_58_Out_12,
                [13] = self.f_box_OutputOrder_v2_58_Out_13,
                [14] = self.f_box_OutputOrder_v2_58_Out_14,
                [15] = self.f_box_OutputOrder_v2_58_Out_15,
                [16] = self.f_box_OutputOrder_v2_58_Out_16,
            },
            count = 18,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|482051447");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|557004078");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_57()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101826088450661618",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101823807722386136",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_78()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101924006731991637",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_77()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101824810746126474",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_81()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#577BE5F5",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101823775371719194",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|888409141");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101823817302176474",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 5,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101924006734088791",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101826085367848124",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101824781255975035",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_54()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3CBFCA18",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1766169763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_79_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_61()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3CBFCA18",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101823767868109298",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101824785485930623",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101824783709642877",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101824780297576569",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101824808118395016",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101823802060075635",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B10_NEW.domino|@Helico_Wreck_Visibility|1989598821");
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

function export:OnEnter_box_EntityStatusListener_69()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101823777391276572",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Hide" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Unhide" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
