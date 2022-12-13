LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_master.domino
-- User graph: MIS_230_MASTER_HALLUCINATION
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
        
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_230_MASTER = nil;
    Globals.MIS_230_MASTER = {
        bIsFirePhase = false,
        bIsWrathPhase = false,
        eCurrentBearID = nil,
        fCurrentBearHP_Global = 10000,
        eIsPlayerInstigator = nil,
        isReload = true,
        dbPlayerBowFire = "9015351296631242",
        dbPlayerBowCommon = "9015351296639748",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_MASTER.MIS_230_MASTER_HALLUCINATION.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Hallu_Start",
            },
            [1] = {
                name = "SetHallucinationDay",
            },
            [2] = {
                name = "SetHallucinationNight",
            },
            [3] = {
                name = "StopHallu",
            },
            [4] = {
                name = "TimeLapse",
            },
        },
        controlInCount = 5,
        controlOut = {
            [0] = {
                name = "Hallu_Completed",
                delayed = false,
            },
            [1] = {
                name = "Hallu_Stopped",
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
end;

function export:Init(cbox)
    self._name = "MIS_230_MASTER_HALLUCINATION";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_MASTER.domino|@MIS_230_MASTER_HALLUCINATION";
    self.Hallu_Completed = DummyFunction;
    self.Hallu_Stopped = DummyFunction;
    self.currentMinute = 0;
    self.currentHour = 0;
    self.Hour = 0;
    self.goodTime = false;
    self.isDay = false;
    self.iTimeTarget = 9;
    self.MetaSequenceID = 0;
end;

function export:Hallu_Start()
    
end;

function export:SetHallucinationDay()
    
end;

function export:SetHallucinationNight()
    
end;

function export:StopHallu()
    
end;

function export:TimeLapse()
    
end;

-- Empty out anchor definitions
function export:Hallu_Completed()
    
end;
function export:Hallu_Stopped()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Hallu_Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SetHallucinationDay" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SetHallucinationNight" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopHallu" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="TimeLapse" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Hallu_Completed" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Hallu_Stopped" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
