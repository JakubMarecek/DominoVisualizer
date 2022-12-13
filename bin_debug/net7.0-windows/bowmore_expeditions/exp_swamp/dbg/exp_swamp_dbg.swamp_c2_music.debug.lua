LUACjg  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/dbg/exp_swamp_dbg.domino
-- User graph: Swamp_C2_Music
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3719151969.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1549670302.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/DBG/Exp_Swamp_DBG.Swamp_C2_Music.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
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
    self._name = "Swamp_C2_Music";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music";
    self.box_Music_Quest_v2_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|158269428");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|600745078");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_7 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|642884698");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_7_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_7_Execute,
    });
    self.box_ConsoleCommand_v3_2 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|648748095");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_2_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_2_Execute,
    });
    self.box_Music_Quest_v2_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|773003254");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|784650068");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|827698085");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|992574611");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_3 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1146520467");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_3_Execute,
    });
    self.box_ConsoleCommand_v3_4 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1219511669");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_4_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_4_Execute,
    });
    self.box_ConsoleCommand_v3_12 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1663297974");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_12_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_12_Execute,
    });
    self.box_ConsoleCommand_v3_1 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|2119048337");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_1_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_1_Execute,
    });
    self.box_ConsoleCommand_v3_10 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|2122941423");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_10_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_10_Execute,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ConsoleCommand_v3_7();
    l0 = self.box_ConsoleCommand_v3_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|2099060068", "2099060068", "Swamp_C2_Music", "In", "box_ConsoleCommand_v3_7.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_5();
    l0 = self.box_Music_Quest_v2_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|623098550", "623098550", "Swamp_C2_Music", "box_Simple_Node_14.Out", "box_Music_Quest_v2_5.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Music_Quest_v2_6();
    l0 = self.box_Music_Quest_v2_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|2035627472", "2035627472", "Swamp_C2_Music", "box_Simple_Node_14.Out", "box_Music_Quest_v2_6.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Music_Quest_v2_13();
    l0 = self.box_Music_Quest_v2_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1852707268", "1852707268", "Swamp_C2_Music", "box_Simple_Node_14.Out", "box_Music_Quest_v2_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Music_Quest_v2_11();
    l0 = self.box_Music_Quest_v2_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|980770384", "980770384", "Swamp_C2_Music", "box_Simple_Node_14.Out", "box_Music_Quest_v2_11.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Music_Quest_v2_9();
    l0 = self.box_Music_Quest_v2_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|171395344", "171395344", "Swamp_C2_Music", "box_Simple_Node_14.Out", "box_Music_Quest_v2_9.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Music_Quest_v2_8();
    l0 = self.box_Music_Quest_v2_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1313608859", "1313608859", "Swamp_C2_Music", "box_Simple_Node_14.Out", "box_Music_Quest_v2_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_ConsoleCommand_v3_7_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_10();
    l0 = self.box_ConsoleCommand_v3_7;
    l1 = self.box_ConsoleCommand_v3_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1030694155", "1030694155", "Swamp_C2_Music", "box_ConsoleCommand_v3_7.Enabled", "box_ConsoleCommand_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_7_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_6();
    l0 = self.box_ConsoleCommand_v3_7;
    l1 = self.box_Music_Quest_v2_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1562326040", "1562326040", "Swamp_C2_Music", "box_ConsoleCommand_v3_7.Execute", "box_Music_Quest_v2_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_4();
    l0 = self.box_ConsoleCommand_v3_2;
    l1 = self.box_ConsoleCommand_v3_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|3629372", "3629372", "Swamp_C2_Music", "box_ConsoleCommand_v3_2.Enabled", "box_ConsoleCommand_v3_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_2_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_13();
    l0 = self.box_ConsoleCommand_v3_2;
    l1 = self.box_Music_Quest_v2_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1492830809", "1492830809", "Swamp_C2_Music", "box_ConsoleCommand_v3_2.Execute", "box_Music_Quest_v2_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_3_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = self.box_ConsoleCommand_v3_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1170158644", "1170158644", "Swamp_C2_Music", "box_ConsoleCommand_v3_3.Execute", "box_Simple_Node_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_12();
    l0 = self.box_ConsoleCommand_v3_4;
    l1 = self.box_ConsoleCommand_v3_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1462787387", "1462787387", "Swamp_C2_Music", "box_ConsoleCommand_v3_4.Enabled", "box_ConsoleCommand_v3_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_4_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_5();
    l0 = self.box_ConsoleCommand_v3_4;
    l1 = self.box_Music_Quest_v2_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1877876842", "1877876842", "Swamp_C2_Music", "box_ConsoleCommand_v3_4.Execute", "box_Music_Quest_v2_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_1();
    l0 = self.box_ConsoleCommand_v3_12;
    l1 = self.box_ConsoleCommand_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|615710866", "615710866", "Swamp_C2_Music", "box_ConsoleCommand_v3_12.Enabled", "box_ConsoleCommand_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_12_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_8();
    l0 = self.box_ConsoleCommand_v3_12;
    l1 = self.box_Music_Quest_v2_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1074801756", "1074801756", "Swamp_C2_Music", "box_ConsoleCommand_v3_12.Execute", "box_Music_Quest_v2_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_3();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = self.box_ConsoleCommand_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|2141059086", "2141059086", "Swamp_C2_Music", "box_ConsoleCommand_v3_1.Enabled", "box_ConsoleCommand_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_1_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_11();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = self.box_Music_Quest_v2_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|496065245", "496065245", "Swamp_C2_Music", "box_ConsoleCommand_v3_1.Execute", "box_Music_Quest_v2_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_2();
    l0 = self.box_ConsoleCommand_v3_10;
    l1 = self.box_ConsoleCommand_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1371315129", "1371315129", "Swamp_C2_Music", "box_ConsoleCommand_v3_10.Enabled", "box_ConsoleCommand_v3_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_10_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_9();
    l0 = self.box_ConsoleCommand_v3_10;
    l1 = self.box_Music_Quest_v2_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|1197461393", "1197461393", "Swamp_C2_Music", "box_ConsoleCommand_v3_10.Execute", "box_Music_Quest_v2_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_Music|@Stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_13()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3719151969",
        -- StopEvent,
        [7] = "1549670302",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_8()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3719151969",
        -- StopEvent,
        [7] = "1549670302",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_7()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "music_0",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_2()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "music_2",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_5()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3719151969",
        -- StopEvent,
        [7] = "1549670302",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_6()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3719151969",
        -- StopEvent,
        [7] = "1549670302",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_11()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 5,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3719151969",
        -- StopEvent,
        [7] = "1549670302",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_9()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3719151969",
        -- StopEvent,
        [7] = "1549670302",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_3()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "stopmusic",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_4()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "music_3",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_12()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "music_4",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_1()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "music_5",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_10()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "music_1",
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
