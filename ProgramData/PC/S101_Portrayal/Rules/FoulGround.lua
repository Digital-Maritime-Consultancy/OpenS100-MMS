-- FoulGround portrayal rules file.

-- UNOFFICIAL:  Rules extracted from S-52 lookup table for OBSTRN where CATOBS = 7.

-- Main entry point for feature type.
function FoulGround(feature, featurePortrayal, contextParameters)
	local valueOfSounding = scaledDecimalZero

	if feature.valueOfSounding and feature.qualityOfVerticalMeasurement and contains(feature.qualityOfVerticalMeasurement, {1, 6}) then
		valueOfSounding = feature.valueOfSounding
	end

	if valueOfSounding <= contextParameters.SafetyContour then
		featurePortrayal:AddInstructions('AlertReference:NavHazard,115,115')
	end

	if feature.PrimitiveType == PrimitiveType.Point then
		if feature.valueOfSounding then
			featurePortrayal:AddInstructions('ViewingGroup:34051;DrawingPriority:12;DisplayPlane:OverRADAR')
			--featurePortrayal:AddInstructions('PointInstruction:FOULGND1')
			featurePortrayal:AddInstructions('PointInstruction:testPCB')
		else
			featurePortrayal:AddInstructions('ViewingGroup:34050;DrawingPriority:12;DisplayPlane:OverRADAR')
			--featurePortrayal:AddInstructions('PointInstruction:FOULGND1')
			featurePortrayal:AddInstructions('PointInstruction:testPCB')
		end
	elseif feature.PrimitiveType == PrimitiveType.Curve then
		error('Not Implemented: No curve symbology defined in S-52 for FoulGround')
	elseif feature.PrimitiveType == PrimitiveType.Surface and contextParameters.PlainBoundaries then
		if feature.valueOfSounding then
			featurePortrayal:AddInstructions('ViewingGroup:34051;DrawingPriority:12;DisplayPlane:UnderRADAR')
			--featurePortrayal:AddInstructions('PointInstruction:FOULGND1')
			featurePortrayal:AddInstructions('PointInstruction:testPCB')
			featurePortrayal:SimpleLineStyle('dash',0.32,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		else
			featurePortrayal:AddInstructions('ViewingGroup:34050;DrawingPriority:12;DisplayPlane:UnderRADAR')
			--featurePortrayal:AddInstructions('PointInstruction:FOULGND1')
			featurePortrayal:AddInstructions('PointInstruction:testPCB')
			featurePortrayal:SimpleLineStyle('dash',0.32,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		end
	elseif feature.PrimitiveType == PrimitiveType.Surface then
		if feature.valueOfSounding then
			featurePortrayal:AddInstructions('ViewingGroup:34051;DrawingPriority:12;DisplayPlane:UnderRADAR')
			--featurePortrayal:AddInstructions('PointInstruction:FOULGND1')
			featurePortrayal:AddInstructions('PointInstruction:testPCB')
			featurePortrayal:AddInstructions('LineInstruction:NAVARE51')
		else
			featurePortrayal:AddInstructions('ViewingGroup:34050;DrawingPriority:12;DisplayPlane:UnderRADAR')
			--featurePortrayal:AddInstructions('PointInstruction:FOULGND1')
			featurePortrayal:AddInstructions('PointInstruction:testPCB')
			featurePortrayal:AddInstructions('LineInstruction:NAVARE51')
		end
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end
end
