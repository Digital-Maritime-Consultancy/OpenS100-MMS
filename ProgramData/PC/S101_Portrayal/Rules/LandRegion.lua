-- Converter Version: 0.99
-- Feature Catalogue Version: 1.0.0 (2019/4/9)

-- Land region main entry point.
function LandRegion(feature, featurePortrayal, contextParameters)
	if feature.PrimitiveType == PrimitiveType.Point then
		-- Simplified and paper chart points use the same symbolization
		if contextParameters.RadarOverlay then
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:12;DisplayPlane:OverRADAR')
		else
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:12;DisplayPlane:UnderRADAR')
		end
		featurePortrayal:AddInstructions('PointInstruction:POSGEN04')
		if feature.featureName[1] and feature.featureName[1].name then
			featurePortrayal:AddInstructions('LocalOffset:0,3.51;TextAlignHorizontal:Center;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
		end
	elseif feature.PrimitiveType == PrimitiveType.Surface and contextParameters.PlainBoundaries then
		if contains(2, feature.categoryOfLandRegion) then
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:9;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('AreaFillReference:MARSHES1')
		elseif contains(12, feature.categoryOfLandRegion) then
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:9;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('AreaFillReference:MARSHES1')
		else
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:9;DisplayPlane:UnderRADAR')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:0,0;TextAlignHorizontal:Center;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
		end
	elseif feature.PrimitiveType == PrimitiveType.Surface then
		if contains(2, feature.categoryOfLandRegion) then
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:9;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('AreaFillReference:MARSHES1')
		elseif contains(12, feature.categoryOfLandRegion) then
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:9;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('AreaFillReference:MARSHES1')
		else
			featurePortrayal:AddInstructions('ViewingGroup:21060;DrawingPriority:9;DisplayPlane:UnderRADAR')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:0,0;TextAlignHorizontal:Center;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
		end
	elseif feature.PrimitiveType == PrimitiveType.Curve then
		--TODO: Determine S-101 portrayal for LandRegion curve feature.
		featurePortrayal:AddInstructions('ViewingGroup:21010;DrawingPriority:15;PointInstruction:testPCB')
		Debug.Trace('Warning: S-52 does not define portrayal for LandRegion curve features.')
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end
end
