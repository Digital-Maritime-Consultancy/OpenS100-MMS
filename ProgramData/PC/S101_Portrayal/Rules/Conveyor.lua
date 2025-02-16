-- Converter Version: 0.99
-- Feature Catalogue Version: 1.0.0 (2019/4/9)

-- Conveyor main entry point.
function Conveyor(feature, featurePortrayal, contextParameters)
	featurePortrayal:AddInstructions('AlertReference:NavHazard,115,115')

	if feature.PrimitiveType == PrimitiveType.Curve then
		if feature.categoryOfConveyor == 1 and feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('dash',1.28,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		elseif feature.categoryOfConveyor == 1 and feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('dash',1.28,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		elseif feature.categoryOfConveyor == 2 and feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		elseif feature.categoryOfConveyor == 2 and feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		elseif feature.categoryOfConveyor == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('dash',1.28,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		elseif feature.categoryOfConveyor == 2 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		elseif feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('dash',1.28,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		elseif feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('dash',1.28,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		else
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:SimpleLineStyle('dash',1.28,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
		end
	elseif feature.PrimitiveType == PrimitiveType.Surface and contextParameters.PlainBoundaries then
		if feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		elseif feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		else
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		end
	elseif feature.PrimitiveType == PrimitiveType.Surface then
		if feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		elseif feature.radarConspicuous then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:RACNSP01')
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		else
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:12210;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			if feature.verticalClearanceFixed and feature.verticalClearanceFixed.verticalClearanceValue then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;FontSize:10;TextInstruction:' .. EncodeString(feature.verticalClearanceFixed.verticalClearanceValue, 'clr %4.1f') .. ',11,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.96,'CHGRD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		end
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end
end
