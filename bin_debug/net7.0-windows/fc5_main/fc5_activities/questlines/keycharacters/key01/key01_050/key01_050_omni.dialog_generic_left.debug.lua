LUACC  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_050/key01_050_omni.domino
-- User graph: DIALOG_GENERIC_LEFT
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Kim" Type="Nomad|entity{}" />
    <DataIn Name="Nick" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1368967657.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2795706071.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_GENERIC_LEFT.debug.lua")] = {
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
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "Nick",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
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
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "DIALOG_GENERIC_LEFT";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT";
    self.Out = DummyFunction;
    self.gFriendlyPlayer = nil;
    self.eNickRye = nil;
    self.eKimRye = nil;
    self.box_PlayDialog_v6_7 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|264112312");
    l0:SetConnections({
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_7_Stopped,
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1369302210");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1732656776");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_1_Finished,
    });
    self.box_Random_4 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1962949202");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_4_Output_0,
                [1] = self.f_box_Random_4_Output_1,
            },
            count = 2,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|392506485", "392506485", "DIALOG_GENERIC_LEFT", "In", "box_GetPlayerGroup_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_3_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1254495139", "1254495139", "DIALOG_GENERIC_LEFT", "box_SetEntity_v2_3.Out", "box_PlayDialog_v6_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_7_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Random_4();
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_Random_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1996827448", "1996827448", "DIALOG_GENERIC_LEFT", "box_PlayDialog_v6_7.Stopped", "box_Random_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_5();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1848467162", "1848467162", "DIALOG_GENERIC_LEFT", "box_GetPlayerGroup_v2_6.Out", "box_SetEntity_v2_5.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_3();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|219086498", "219086498", "DIALOG_GENERIC_LEFT", "box_SetEntity_v2_5.Out", "box_SetEntity_v2_3.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local l0;
    l0 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|639606813", "639606813", "DIALOG_GENERIC_LEFT", "box_PlayDialog_v6_2.Finished", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_PlayDialog_v6_1_Finished()
    local l0;
    l0 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1839995842", "1839995842", "DIALOG_GENERIC_LEFT", "box_PlayDialog_v6_1.Finished", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Random_4_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Random_4;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|458043371", "458043371", "DIALOG_GENERIC_LEFT", "box_Random_4.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_4_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_Random_4;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1988075004", "1988075004", "DIALOG_GENERIC_LEFT", "box_Random_4.Output", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_SetEntity_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|16610624");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_3_Out,
    });
    params = {
        -- Entity,
        [0] = self.Kim,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_7()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|927227364");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_GENERIC_LEFT|1162706609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_5_Out,
    });
    params = {
        -- Entity,
        [0] = self.Nick,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1368967657",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2795706071",
    };
    return params;
end;

function export:OnEnter_box_Random_4()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eKimRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eNickRye = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Kim" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Nick" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
