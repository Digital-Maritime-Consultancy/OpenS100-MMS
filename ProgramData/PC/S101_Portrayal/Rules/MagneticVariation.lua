-- Converter Version: 0.99
-- Feature Catalogue Version: 1.0.0 (2019/4/9)

-- Magnetic variation main entry point.
function MagneticVariation(feature, featurePortrayal, contextParameters)
	if feature.PrimitiveType == PrimitiveType.Point then
		-- Simplified and paper chart points use the same symbolization
		if contextParameters.RadarOverlay then
			featurePortrayal:AddInstructions('ViewingGroup:31080;DrawingPriority:12;DisplayPlane:OverRADAR')
		else
			featurePortrayal:AddInstructions('ViewingGroup:31080;DrawingPriority:12;DisplayPlane:UnderRADAR')
		end
		featurePortrayal:AddInstructions('PointInstruction:MAGVAR01')
		featurePortrayal:AddInstructions('LocalOffset:3.51,3.51;FontSize:10;TextInstruction:' .. EncodeString(feature['valueOfMagneticVariation']) .. ',27,24')
	elseif feature.PrimitiveType == PrimitiveType.Curve then
		if contextParameters.RadarOverlay then
			featurePortrayal:AddInstructions('ViewingGroup:31080;DrawingPriority:12;DisplayPlane:OverRADAR')
		else
			featurePortrayal:AddInstructions('ViewingGroup:31080;DrawingPriority:12;DisplayPlane:UnderRADAR')
		end
		featurePortrayal:SimpleLineStyle('solid',0.64,'CHMGF')
		featurePortrayal:AddInstructions('LineInstruction:_simple_')
		featurePortrayal:AddInstructions('PointInstruction:MAGVAR51')
		featurePortrayal:AddInstructions('LocalOffset:3.51,3.51;FontSize:10;TextInstruction:' .. EncodeString(feature.valueOfMagneticVariation, 'varn %3.2f') .. ',27,24')
	elseif feature.PrimitiveType == PrimitiveType.Surface then
		-- Plain and symbolized boundaries use the same symbolization
		featurePortrayal:AddInstructions('ViewingGroup:31080;DrawingPriority:12;DisplayPlane:UnderRADAR')
		featurePortrayal:AddInstructions('PointInstruction:MAGVAR51')
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end
end
